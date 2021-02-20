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

/* Openssl initiation, sign, and verify functions. These functions can be used
 * to easily use openssl to create RSA signatures and to verify these RSA
 * signatures. The functions listed below use RSA and sha1 digests. */

#ifndef PRIME_OPENSSL_RSA_H
#define PRIME_OPENSSL_RSA_H

#include "net_wrapper.h"
#include <stdio.h>
//#include "arch.h"

/* Public definitions */
#define RSA_CLIENT         1
#define RSA_SERVER         2

/* Public functions */
void OPENSSL_RSA_Init();

void OPENSSL_RSA_Sign( const unsigned char *message, size_t message_length,
		       unsigned char *signature ); 

int OPENSSL_RSA_Verify( const unsigned char *message, size_t message_length,
			unsigned char *signature, int32u server_number, 
			int32u type ); 
 
void OPENSSL_RSA_Read_Keys( int32u my_number, int32u type, const char *keys_dir ); 

void OPENSSL_RSA_Generate_Keys( const char *keys_dir ); 

void OPENSSL_RSA_Make_Signature( const unsigned char *digest_value, 
				 unsigned char *signature ); 

int32u OPENSSL_RSA_Verify_Signature( const unsigned char *digest_value, 
				     unsigned char *signature, int32u number, 
				     int32u type ); 

int32u OPENSSL_RSA_Digests_Equal( unsigned char *digest1, 
				  unsigned char *digest2 ); 

void OPENSSL_RSA_Make_Digest( const void *buffer, size_t buffer_size, 
			      unsigned 	char *digest_value ); 

void OPENSSL_RSA_Print_Digest( unsigned char *digest_value ); 

#endif
