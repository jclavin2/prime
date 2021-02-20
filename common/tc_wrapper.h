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

#include "net_wrapper.h"

void TC_Read_Partial_Key( int32u server_no, int32u site_id, const char *keys_dir );
void TC_Read_Public_Key( const char *keys_dir );

int32u TC_Generate_Sig_Share( byte* destination, byte* hash  ); 
void TC_Initialize_Combine_Phase( int32u number );
void TC_Add_Share_To_Be_Combined( int server_no, byte *share );
void TC_Destruct_Combine_Phase( int32u number );
void TC_Combine_Shares( byte *signature_dest, byte *digest );
int32u TC_Verify_Signature( int32u site, byte *signature, byte *digest );
int TC_Check_Share( byte *digest, int32u sender_id );
void TC_Generate(int req_shares, char *directory);
