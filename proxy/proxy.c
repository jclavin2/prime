/*
 * Spire.
 *
 * The contents of this file are subject to the Spire Open-Source
 * License, Version 1.0 (the ``License''); you may not use
 * this file except in compliance with the License.  You may obtain a
 * copy of the License at:
 *
 * http://www.dsn.jhu.edu/spire/LICENSE.txt 
 *
 * or in the file ``LICENSE.txt'' found in this distribution.
 *
 * Software distributed under the License is distributed on an AS IS basis, 
 * WITHOUT WARRANTY OF ANY KIND, either express or implied. See the License 
 * for the specific language governing rights and limitations under the 
 * License.
 *
 * Spire is developed at the Distributed Systems and Networks Lab,
 * Johns Hopkins University.
 *
 * Creators:
 *   Yair Amir            yairamir@cs.jhu.edu
 *   Trevor Aron          taron1@cs.jhu.edu
 *   Amy Babay            babay@cs.jhu.edu
 *   Thomas Tantillo      tantillo@cs.jhu.edu
 *
 * Major Contributors:
 *   Marco Platania       Contributions to architecture design 
 *   Sahiti Bommareddy    Addition of IDS, Contributions to OpenSSL upgrade, latency optimization
 *
 * Contributors:
 *   Samuel Beckley       Contributions to HMIs
 *   Daniel Qian          Contributions to IDS
 *
 * Copyright (c) 2017-2020 Johns Hopkins University.
 * All rights reserved.
 *
 * Partial funding for Spire research was provided by the Defense Advanced 
 * Research Projects Agency (DARPA) and the Department of Defense (DoD).
 * Spire is not necessarily endorsed by DARPA or the DoD. 
 *
 */

#include <stdio.h>
#include <stdlib.h>
#include <string.h>

#include <netinet/in.h>
#include <sys/un.h>
#include <sys/types.h>
#include <sys/socket.h>
#include <sys/time.h>
#include <arpa/inet.h>
#include <unistd.h>
#include <netdb.h>
#include <errno.h>
#include <unistd.h>
#include <pthread.h>

#include "../common/net_wrapper.h" 
#include "../common/def.h"
#include "../common/openssl_rsa.h"
#include "../common/tc_wrapper.h"
#include "../common/itrc.h"
#include "../common/scada_packets.h"
#include "../common/key_value.h"
#include "../config/cJSON.h"
#include "../config/config_helpers.h"

#define MAX_PATH 1000

// conver string to protocol enum
int string_to_protocol(char * prot) {
    int p_n;
    if(strcmp(prot, "modbus") == 0) {
        p_n = MODBUS;
    }
    else if(strcmp(prot, "dnp3") ==0) {
        p_n = DNP3;
    }
    else {
        fprintf(stderr, "Protocol: %s not supported\n", prot);
        exit(1);
    }
    return p_n;

}

/* RTU Proxy implementation */
int main(int argc, char *argv[])
{
    int i, num, ret, nBytes, sub;
    int ipc_sock;
    struct timeval now;
    struct sockaddr_in;
    fd_set mask, tmask;
    char buff[MAX_LEN];
    signed_message *mess;
    rtu_data_msg *rtud;
    itrc_data protocol_data[NUM_PROTOCOLS];
    itrc_data itrc_main, itrc_thread;
    int ipc_used[NUM_PROTOCOLS];
    int ipc_s[NUM_PROTOCOLS];
    seq_pair *ps;
    char *ip_ptr;
    int pid;
    char *buffer;
    char path[MAX_PATH];
    pthread_t tid;
    int num_locations;

    setlinebuf(stdout);
    
    /* Parse args */
    if(argc != 4) {
        printf("HELP: proxy sub spinesAddr:spinesPort Num_RTU_Emulated\n");
        return 0;
    }

    Init_SM_Replicas();

    /* zero ipc_used */
    for(i=0; i < NUM_PROTOCOLS; i++) {
        ipc_used[i] = 0;
    }

    gettimeofday(&now, NULL);
    My_Incarnation = now.tv_sec;
    sub = atoi(argv[1]);
    My_ID = sub;
    printf("scanning json\n");

    // parse config into string and then parse json
    buffer = config_into_buffer();
    cJSON * root = cJSON_Parse(buffer);
    free(buffer);

    printf("finding location in json\n");
    // find my location in the json file
    cJSON * my_loc;
    cJSON * locations = cJSON_GetObjectItem(root, "locations");
    num_locations = cJSON_GetArraySize(locations);
    for(i = 0 ; i < num_locations ; i++) {
        cJSON * loc = cJSON_GetArrayItem(locations, i);
        if(My_ID == cJSON_GetObjectItem(loc, "ID")->valueint) {
            printf("Found my loc\n");
            my_loc = loc;
            break;
        }
    }
    if (i == num_locations) {
        printf("My id is not in config.json file!\n");
        exit(0);
    }

    printf("PROXY: finding what protocols I support\n");
    // figure out which protocols I support, set up those sockets
    cJSON * protocols = cJSON_GetObjectItem(my_loc, "protocols");
    for(i = 0; i < cJSON_GetArraySize(protocols); i++) {
        char * prot = cJSON_GetArrayItem(protocols, i)->valuestring;
        int p_n = string_to_protocol(prot);
        printf("PROXY: Creating Socket for protocol: %s\n", prot);
        memset(&protocol_data[p_n], 0, sizeof(itrc_data));
        sprintf(protocol_data[p_n].prime_keys_dir, "%s", (char *)PROXY_PRIME_KEYS);
        sprintf(protocol_data[p_n].sm_keys_dir, "%s", (char *)PROXY_SM_KEYS);
        sprintf(protocol_data[p_n].ipc_local, "%s%s%d", (char *)RTU_IPC_ITRC, 
                prot, My_ID);
        sprintf(protocol_data[p_n].ipc_remote, "%s%s%d", (char *)RTU_IPC_MAIN,
                prot, My_ID);
        ipc_used[p_n] = 1;
        ipc_s[p_n] = IPC_DGram_Sock(protocol_data[p_n].ipc_local);

        /* Start protocol threads */
        sprintf(path, "../%s/%s_master", prot, prot);
        printf("PROXY: Starting program at path: %s\n", path);
        pid = fork();
        //child -- run program on path
        if(pid == 0) {
            execv(path, &argv[0]);
        } 
        else if(pid < 0) {
            perror("Fork returned below 0 pid");
            exit(1);
        }

    }

    printf("PROXY: filling in key value data structure\n");
    // Figure out what RTU's I have to send to and place map the
    // id to a protocol
    key_value_init();
    cJSON * rtus = cJSON_GetObjectItem(my_loc, "rtus");
    for(i = 0; i < cJSON_GetArraySize(rtus); i++) { 
        cJSON * rtu = cJSON_GetArrayItem(rtus, i);
        char * prot_str = cJSON_GetObjectItem(rtu, "protocol")->valuestring;
        int rtu_id = cJSON_GetObjectItem(rtu, "ID")->valueint;
        int rtu_protocol = string_to_protocol(prot_str);
        key_value_insert(rtu_id, rtu_protocol);
    } 

    // Delete CJSON reference
    cJSON_Delete(root);

    // Net Setup
    Type = RTU_TYPE;
    Prime_Client_ID = (NUM_SM + 1) + My_ID;
    My_IP = getIP();

    // Setup IPC for the RTU Proxy main thread
    printf("PROXY: Setting up IPC for RTU proxy thread\n");
    memset(&itrc_main, 0, sizeof(itrc_data));
    sprintf(itrc_main.prime_keys_dir, "%s", (char *)PROXY_PRIME_KEYS);
    sprintf(itrc_main.sm_keys_dir, "%s", (char *)PROXY_SM_KEYS);
    sprintf(itrc_main.ipc_local, "%s%d", (char *)RTU_IPC_MAIN, My_ID);
    sprintf(itrc_main.ipc_remote, "%s%d", (char *)RTU_IPC_ITRC, My_ID);
    ipc_sock = IPC_DGram_Sock(itrc_main.ipc_local);

    // Setup IPC for the Worker Thread (running the ITRC Client)
    memset(&itrc_thread, 0, sizeof(itrc_data));
    sprintf(itrc_thread.prime_keys_dir, "%s", (char *)PROXY_PRIME_KEYS);
    sprintf(itrc_thread.sm_keys_dir, "%s", (char *)PROXY_SM_KEYS);
    sprintf(itrc_thread.ipc_local, "%s%d", (char *)RTU_IPC_ITRC, My_ID);
    sprintf(itrc_thread.ipc_remote, "%s%d", (char *)RTU_IPC_MAIN, My_ID);
    ip_ptr = strtok(argv[2], ":");
    sprintf(itrc_thread.spines_ext_addr, "%s", ip_ptr);
    ip_ptr = strtok(NULL, ":");
    sscanf(ip_ptr, "%d", &itrc_thread.spines_ext_port);

    printf("PROXY: Setting up ITRC Client thread\n");
    pthread_create(&tid, NULL, &ITRC_Client, (void *)&itrc_thread);

    FD_ZERO(&mask);
    for(i = 0; i < NUM_PROTOCOLS; i++) 
        if(ipc_used[i] == 1)
            FD_SET(ipc_s[i], &mask);
    FD_SET(ipc_sock, &mask);

    while (1) {
        tmask = mask;
        num = select(FD_SETSIZE, &tmask, NULL, NULL, NULL);

        if (num > 0) {
            
            /* Message from ITRC */
            if (FD_ISSET(ipc_sock, &tmask)) {
                int in_list;
                int channel;
                int rtu_dst;
                ret = IPC_Recv(ipc_sock, buff, MAX_LEN);
                if (ret <= 0) {
                    printf("Error in IPC_Recv: ret = %d, dropping!\n", ret);
                    continue;
                }
                mess = (signed_message *)buff;
                nBytes = sizeof(signed_message) + (int)mess->len;
                rtu_dst = ((rtu_feedback_msg *)(mess + 1))->rtu;
                /* enqueue in correct ipc */
                in_list = key_value_get(rtu_dst, &channel);
                if(in_list) {
                    printf("PROXY: Delivering msg to RTU\n");
                    IPC_Send(ipc_s[channel], buff, nBytes, 
                             protocol_data[channel].ipc_remote);
                }
                else {
                    fprintf(stderr, 
                            "Message from spines for rtu: %d, not my problem\n",
                             rtu_dst);
                    continue;
                }
            }
            for(i = 0; i < NUM_PROTOCOLS; i++) {
                if(ipc_used[i] != 1) 
                    continue;
                /* Message from a proxy */
                if (FD_ISSET(ipc_s[i], &tmask)) {
                    nBytes = IPC_Recv(ipc_s[i], buff, MAX_LEN);
                    mess = (signed_message *)buff;
                    rtud = (rtu_data_msg *)(mess + 1);
                    ps = (seq_pair *)&rtud->seq;
                    ps->incarnation = My_Incarnation;
                    //printf("PROXY: sending data to sm\n");
                    ret = IPC_Send(ipc_sock, (void *)buff, nBytes, itrc_main.ipc_remote);
                }
            }
        }
    }
    pthread_exit(NULL);
    return 0;
}
