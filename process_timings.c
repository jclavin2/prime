/*
 * Prime.
 *     
 * The contents of this file are subject to the Prime Open-Source
 * License, Version 1.0 (the ``License''); you may not use
 * this file except in compliance with the License.  You may obtain a
 * copy of the License at:
 *
 * http://www.dsn.jhu.edu/prime/LICENSE.txt
 *
 * or in the file ``LICENSE.txt'' found in this distribution.
 *
 * Software distributed under the License is distributed on an AS IS basis, 
 * WITHOUT WARRANTY OF ANY KIND, either express or implied. See the License 
 * for the specific language governing rights and limitations under the 
 * License.
 *
 * Creators:
 *   Yair Amir            yairamir@cs.jhu.edu
 *   Jonathan Kirsch      jak@cs.jhu.edu
 *   John Lane            johnlane@cs.jhu.edu
 *   Marco Platania       platania@cs.jhu.edu
 *   Amy Babay            babay@cs.jhu.edu
 *   Thomas Tantillo      tantillo@cs.jhu.edu
 *
 * Major Contributors:
 *   Brian Coan           Design of the Prime algorithm
 *   Jeff Seibert         View Change protocol
 *      
 * Copyright (c) 2008 - 2018
 * The Johns Hopkins University.
 * All rights reserved.
 * 
 * Partial funding for Prime research was provided by the Defense Advanced 
 * Research Projects Agency (DARPA) and the National Science Foundation (NSF).
 * Prime is not necessarily endorsed by DARPA or the NSF.  
 *
 */

/* Process messages by both (i) applying them to the data structures and 
 * (potentially) creating and dispatching new messages as a result of applying. 
 * These functions take a message that has first been validated. */
#include <assert.h>
#include <string.h>
#include "data_structs.h"
#include "process.h"
#include "spu_memory.h"
#include "spu_alarm.h"
#include "error_wrapper.h"
#include "utility.h"
#include "order.h"
#include "recon.h"
#include "pre_order.h"
#include "suspect_leader.h"
#include "reliable_broadcast.h"
#include "view_change.h"
#include "catchup.h"
#include "proactive_recovery.h"



/* Gobally Accessible Variables */
extern server_variables   VAR;
extern server_data_struct DATA;
extern benchmark_struct   BENCH;



//sahiti
FILE *sahiti_prime_fp;
#define SAHITI 1


/**
 ******************************************************************************
   * @brief tv0 and tv1 are subtracted, return the double type time difference
******************************************************************************
 */
struct timeval timeval_diff(struct timeval  t1, struct timeval  t2)
{
    struct timeval diff;

    diff.tv_sec  = t1.tv_sec  - t2.tv_sec;
    diff.tv_usec = t1.tv_usec - t2.tv_usec;

    if (diff.tv_usec < 0) {
        diff.tv_usec += 1000000;
        diff.tv_sec--;
    }

    if (diff.tv_sec < 0)
        printf("diffTime: Negative time result!\n");

    return diff;
}



/* Process a signed message */
void PROCESS_Message(signed_message *mess) 
{

  util_stopwatch profile_sw;
  UTIL_Stopwatch_Start(&profile_sw);

  //sahiti
  struct timeval sahiti_now,sahiti_update,sahiti_po_request,sahiti_po_ack,sahiti_matrix,sahiti_pp,sahiti_p,sahiti_commit,sahiti_po_aru,sahiti_diff, sahiti_vc_report, sahiti_vc_replay;

  
  sahiti_prime_fp=fopen("/tmp/sahiti_prime_test.txt","w");


  switch (mess->type) {   

  case UPDATE:
    if(SAHITI){
        //printf("======================================\n");
        //printf("Prime: PO req received\n");
        gettimeofday(&sahiti_now,NULL);
        sahiti_update=sahiti_now;
        sahiti_diff = timeval_diff(sahiti_now,sahiti_update);

        //printf("Current time in usec=%lu\n",(sahiti_now.tv_sec*1000000)+(sahiti_now.tv_usec));
        //printf("Current time in msec=%lu\n",(sahiti_now.tv_sec*1000)+(sahiti_now.tv_usec/1000));
        //printf("po_req-update in usec=%lu\n",(sahiti_diff.tv_sec*1000000)+(sahiti_diff.tv_usec));
        printf("GMLC update \t%lu\t%lu\n",sahiti_diff.tv_sec, sahiti_diff.tv_usec);

        //printf("======================================\n");
        }

	  PRE_ORDER_Process_Update(mess);
    break;

  case PO_REQUEST:

	  //sahiti
  	if(SAHITI){
        	//printf("======================================\n");
        	//printf("Prime: PO req received\n");
        	gettimeofday(&sahiti_now,NULL);
		    sahiti_po_request=sahiti_now;
		    sahiti_diff = timeval_diff(sahiti_po_request,sahiti_update);
        	//printf("Current time in usec=%lu\n",(sahiti_now.tv_sec*1000000)+(sahiti_now.tv_usec));
        	//printf("Current time in msec=%lu\n",(sahiti_now.tv_sec*1000)+(sahiti_now.tv_usec/1000));
        	//printf("po_req-update in usec=%lu\n",(sahiti_diff.tv_sec*1000000)+(sahiti_diff.tv_usec));
        	//printf("GMLC update-to-po_req in usec=%u sec, %d usec\n",sahiti_diff.tv_sec,sahiti_diff.tv_usec);
            
            printf("GMLC update-to-po_req \t%lu\t%lu\n",sahiti_diff.tv_sec, sahiti_diff.tv_usec);

        	//printf("======================================\n");
        	}

    PRE_ORDER_Process_PO_Request(mess);
    break;
    
  case PO_ACK:
	  //sahiti
  	if(SAHITI){
        	//printf("======================================\n");
        	//printf("Prime: po_ack received\n");
        	gettimeofday(&sahiti_now,NULL);
		    sahiti_po_ack=sahiti_now;
            sahiti_diff = timeval_diff(sahiti_po_ack,sahiti_po_request);
        	//printf("Current time in usec=%lu\n",(sahiti_now.tv_sec*1000000)+(sahiti_now.tv_usec));
        	//printf("Current time in msec=%lu\n",(sahiti_now.tv_sec*1000)+(sahiti_now.tv_usec/1000));
        	//printf("po_ack-po_req in usec=%lu\n",(sahiti_diff.tv_sec*1000000)+(sahiti_diff.tv_usec));
        	//printf("GMLC po_req-to-po_ack in usec=%u sec, %d usec\n",sahiti_diff.tv_sec,sahiti_diff.tv_usec);
            
            printf("GMLC po_req-to-po_ack \t%lu\t%lu\n",sahiti_diff.tv_sec, sahiti_diff.tv_usec);

        	//printf("======================================\n");
        	}

    PRE_ORDER_Process_PO_Ack(mess);
    break;

  case PO_ARU:

	  //sahiti
  	if(SAHITI){
        //	printf("======================================\n");
        //	printf("Prime: po_aru received\n");
        	gettimeofday(&sahiti_now,NULL);
		    sahiti_po_aru=sahiti_now;
            sahiti_diff = timeval_diff(sahiti_po_aru,sahiti_po_ack);
        //	printf("Current time in usec=%lu\n",(sahiti_now.tv_sec*1000000)+(sahiti_now.tv_usec));
        //	printf("Current time in msec=%lu\n",(sahiti_now.tv_sec*1000)+(sahiti_now.tv_usec/1000));
        	//printf("po_aru-po_ack in usec=%lu\n",(sahiti_diff.tv_sec*1000000)+(sahiti_diff.tv_usec));
        	//printf("GMLC po_ack-to-po_aru in usec=%u sec, %d usec\n",sahiti_diff.tv_sec,sahiti_diff.tv_usec);
            
            printf("GMLC po_ack-to-po_aru \t%lu\t%lu\n",sahiti_diff.tv_sec, sahiti_diff.tv_usec);

        //	printf("======================================\n");
        	}

    
    /* If the delay attack is used, the leader ignores PO-ARU messages 
     * and only handles proof matrix messages when it needs to. */
#if DELAY_ATTACK
    if(!UTIL_I_Am_Leader())
      PRE_ORDER_Process_PO_ARU(mess);
#else
    PRE_ORDER_Process_PO_ARU(mess);
#endif
    break;

  case PROOF_MATRIX:

	  //sahiti
  	if(SAHITI){
        	//printf("======================================\n");
        	//printf("Prime: Matrix received\n");
        	gettimeofday(&sahiti_now,NULL);
		    sahiti_matrix=sahiti_now;
		    sahiti_diff = timeval_diff(sahiti_matrix,sahiti_po_aru);
        	//printf("Current time in usec=%lu\n",(sahiti_now.tv_sec*1000000)+(sahiti_now.tv_usec));
        	//printf("Current time in msec=%lu\n",(sahiti_now.tv_sec*1000)+(sahiti_now.tv_usec/1000));
        	//printf("matrix-po_aru in usec=%lu\n",(sahiti_diff.tv_sec*1000000)+(sahiti_diff.tv_usec));
        	//printf("GMLC po_aru-to-matrix in usec=%u sec, %d usec\n",sahiti_diff.tv_sec,sahiti_diff.tv_usec);
            
            printf("GMLC po_aru-to-matrix \t%lu\t%lu\n",sahiti_diff.tv_sec, sahiti_diff.tv_usec);
        	//printf("======================================\n");
        	}


    /* If the delay attack is used, the leader adds the proof matrix
     * message to a queue and only processes it when it needs to, when
     * it comes time to send the Pre-Prepare. */
#if DELAY_ATTACK
    if (UTIL_I_Am_Leader()) {
        UTIL_DLL_Add_Data(&DATA.PO.proof_matrix_dll, mess);
        Alarm(DEBUG, "ADD\n"  );  
    }
#else
    PRE_ORDER_Process_Proof_Matrix(mess);
#endif
    break;
    
  case PRE_PREPARE:
	  //sahiti
  	if(SAHITI){
        //	printf("======================================\n");
        //	printf("Prime: Preprepare\n");
        	gettimeofday(&sahiti_now,NULL);
		    sahiti_pp=sahiti_now;
		    sahiti_diff = timeval_diff(sahiti_pp,sahiti_matrix);
        	//printf("Current time in usec=%lu\n",(sahiti_now.tv_sec*1000000)+(sahiti_now.tv_usec));
        	//printf("Current time in msec=%lu\n",(sahiti_now.tv_sec*1000)+(sahiti_now.tv_usec/1000));
        	//printf("pp-matrix in usec=%lu\n",(sahiti_diff.tv_sec*1000000)+(sahiti_diff.tv_usec));
        	//printf("GMLC matrix-to-preprepare in usec=%u sec, %d usec\n",sahiti_diff.tv_sec,sahiti_diff.tv_usec);
            
            printf("GMLC matrix-to-preprepare \t%lu\t%lu\n",sahiti_diff.tv_sec, sahiti_diff.tv_usec);
        	//printf("======================================\n");
		}

    ORDER_Process_Pre_Prepare(mess);
    break;

  case PREPARE:

  	if(SAHITI){
        //	printf("======================================\n");
        //	printf("Prime: Preprepare\n");
        	gettimeofday(&sahiti_now,NULL);
		    sahiti_p=sahiti_now;
		    sahiti_diff = timeval_diff( sahiti_p,sahiti_pp);
        	//printf("Current time in usec=%lu\n",(sahiti_now.tv_sec*1000000)+(sahiti_now.tv_usec));
        	//printf("Current time in msec=%lu\n",(sahiti_now.tv_sec*1000)+(sahiti_now.tv_usec/1000));
        	//printf("pp-matrix in usec=%lu\n",(sahiti_diff.tv_sec*1000000)+(sahiti_diff.tv_usec));
        	//printf("GMLC preprepare-to-prepare in usec=%u sec, %d usec\n",sahiti_diff.tv_sec,sahiti_diff.tv_usec);
            
            printf("GMLC preprepare-to-prepare \t%lu\t%lu\n",sahiti_diff.tv_sec, sahiti_diff.tv_usec);
        	//printf("======================================\n");
		}

    ORDER_Process_Prepare(mess);
    break;

  case COMMIT:


  	if(SAHITI){
        //	printf("======================================\n");
        //	printf("Prime: Preprepare\n");
        	gettimeofday(&sahiti_now,NULL);
		    sahiti_commit=sahiti_now;
		    sahiti_diff = timeval_diff(sahiti_commit,sahiti_p);
        	//printf("Current time in usec=%lu\n",(sahiti_now.tv_sec*1000000)+(sahiti_now.tv_usec));
        	//printf("Current time in msec=%lu\n",(sahiti_now.tv_sec*1000)+(sahiti_now.tv_usec/1000));
        	//printf("pp-matrix in usec=%lu\n",(sahiti_diff.tv_sec*1000000)+(sahiti_diff.tv_usec));
        	//printf("GMLC prepare-to-commit in usec=%u sec, %d usec\n",sahiti_diff.tv_sec,sahiti_diff.tv_usec);
            
            printf("GMLC prepare-to-commit \t%lu\t%lu\n",sahiti_diff.tv_sec, sahiti_diff.tv_usec);
        	//printf("======================================\n");
		}

    ORDER_Process_Commit(mess);
    break;

  case RECON:
    RECON_Process_Recon(mess);
    break;

  case TAT_MEASURE:
    SUSPECT_Process_TAT_Measure(mess);
    break;

  case RTT_PING:
    SUSPECT_Process_RTT_Ping(mess);
    break;

  case RTT_PONG:
    SUSPECT_Process_RTT_Pong(mess);
    break;

  case RTT_MEASURE:
    SUSPECT_Process_RTT_Measure(mess);
    break;
    
  case TAT_UB:
    SUSPECT_Process_TAT_UB(mess);
    break;

  case NEW_LEADER:
    SUSPECT_Process_New_Leader(mess);
    break;

  case NEW_LEADER_PROOF:
    SUSPECT_Process_New_Leader_Proof(mess);
    break;

  case RB_INIT:
    RB_Process_Init(mess);
    break;

  case RB_ECHO:
    RB_Process_Echo(mess);
    break;

  case RB_READY:
    RB_Process_Ready(mess);
    break;

  case REPORT:

        gettimeofday(&sahiti_now,NULL);
        sahiti_vc_report=sahiti_now;
        sahiti_diff = timeval_diff(sahiti_vc_report, sahiti_now);  //What would the prior phase be? 
         	
		    
        	//printf("Current time in usec=%lu\n",(sahiti_now.tv_sec*1000000)+(sahiti_now.tv_usec));
        	//printf("Current time in msec=%lu\n",(sahiti_now.tv_sec*1000)+(sahiti_now.tv_usec/1000));
        	//printf("pp-matrix in usec=%lu\n",(sahiti_diff.tv_sec*1000000)+(sahiti_diff.tv_usec));
        	//printf("GMLC preprepare-to-prepare in usec=%u sec, %d usec\n",sahiti_diff.tv_sec,sahiti_diff.tv_usec);
            
            printf("GMLC view change start \t%lu\t%lu\n",sahiti_diff.tv_sec, sahiti_diff.tv_usec);
        	//printf("======================================\n");
 
 

    VIEW_Process_Report(mess);
    break;

  case PC_SET:
    VIEW_Process_PC_Set(mess);
    break;

  case VC_LIST:
    VIEW_Process_VC_List(mess);
    break;

  case VC_PARTIAL_SIG:
    VIEW_Process_VC_Partial_Sig(mess);
    break;

  case VC_PROOF:
    VIEW_Process_VC_Proof(mess);
    break;

  case REPLAY:
    VIEW_Process_Replay(mess);
    break;

  case REPLAY_PREPARE:
    VIEW_Process_Replay_Prepare(mess);
    break;

  case REPLAY_COMMIT:

        gettimeofday(&sahiti_now,NULL);
        sahiti_vc_replay=sahiti_now;
        sahiti_diff = timeval_diff(sahiti_vc_replay, sahiti_vc_report);
        printf("GMLC view change finish \t%lu\t%lu\n",sahiti_diff.tv_sec, sahiti_diff.tv_usec);
 
    VIEW_Process_Replay_Commit(mess);
    break;

  case CATCHUP_REQUEST:
    CATCH_Process_Catchup_Request(mess);
    break;

  case ORD_CERT:
    CATCH_Process_ORD_Certificate(mess);
    break;

  case PO_CERT:
    CATCH_Process_PO_Certificate(mess);
    break;

  case JUMP:
    CATCH_Process_Jump(mess);
    break;

  case NEW_INCARNATION:
    PR_Process_New_Incarnation(mess);
    break;

  case INCARNATION_ACK:
    PR_Process_Incarnation_Ack(mess);
    break;

  case INCARNATION_CERT:
    PR_Process_Incarnation_Cert(mess);
    break;

  case PENDING_STATE:
    PR_Process_Pending_State(mess);
    break;

  case PENDING_SHARE:
    PR_Process_Pending_Share(mess);
    break;
  
  case RESET_VOTE:
    PR_Process_Reset_Vote(mess);
    break;

  case RESET_SHARE:
    PR_Process_Reset_Share(mess);
    break;

  case RESET_PROPOSAL:
    PR_Process_Reset_Proposal(mess);
    break;

  case RESET_PREPARE:
    PR_Process_Reset_Prepare(mess);
    break;

  case RESET_COMMIT:
    PR_Process_Reset_Commit(mess);
    break;

  case RESET_NEWLEADER:
    PR_Process_Reset_NewLeader(mess);
    break;

  case RESET_NEWLEADERPROOF:
    PR_Process_Reset_NewLeaderProof(mess);
    break;

  case RESET_VIEWCHANGE:
    PR_Process_Reset_ViewChange(mess);
    break;

  case RESET_NEWVIEW:
    PR_Process_Reset_NewView(mess);
    break;

  case RESET_CERT:
    PR_Process_Reset_Certificate(mess);
    break;

  default:
    Alarm(PRINT, "Unexpected message type in PROCESS message: %d\n", mess->type);
    return;
  }

  UTIL_Stopwatch_Stop(&profile_sw);
  if (UTIL_Stopwatch_Elapsed(&profile_sw) >= 0.002) {
    Alarm(DEBUG, "PROF PROC: %s took %f s\n", 
            UTIL_Type_To_String(mess->type), UTIL_Stopwatch_Elapsed(&profile_sw));
    BENCH.profile_count[mess->type]++;
  }
}
