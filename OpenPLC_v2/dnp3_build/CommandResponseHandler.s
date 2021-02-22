	.file	"CommandResponseHandler.cpp"
	.text
	.section	.text._ZN8opendnp312IAPDUHandler14OnHeaderResultERKNS_12HeaderRecordERKNS_8IINFieldE,"axG",@progbits,_ZN8opendnp312IAPDUHandler14OnHeaderResultERKNS_12HeaderRecordERKNS_8IINFieldE,comdat
	.align 2
	.p2align 4
	.weak	_ZN8opendnp312IAPDUHandler14OnHeaderResultERKNS_12HeaderRecordERKNS_8IINFieldE
	.type	_ZN8opendnp312IAPDUHandler14OnHeaderResultERKNS_12HeaderRecordERKNS_8IINFieldE, @function
_ZN8opendnp312IAPDUHandler14OnHeaderResultERKNS_12HeaderRecordERKNS_8IINFieldE:
.LFB332:
	.cfi_startproc
	endbr64
	ret
	.cfi_endproc
.LFE332:
	.size	_ZN8opendnp312IAPDUHandler14OnHeaderResultERKNS_12HeaderRecordERKNS_8IINFieldE, .-_ZN8opendnp312IAPDUHandler14OnHeaderResultERKNS_12HeaderRecordERKNS_8IINFieldE
	.section	.text._ZN8opendnp314FunctorVisitorINS_7IndexedINS_23ControlRelayOutputBlockEEEZNS_22CommandResponseHandler27RespondToHeaderWithIteratorIS2_N7openpal7Bit16LEItEEEENS_8IINFieldENS_13QualifierCodeERKNS_14DNP3SerializerIT_EERKNS_11ICollectionINS1_ISC_EEEEPNS_21PrefixedWriteIteratorIT0_SC_EEEUlRKS3_E_E7OnValueESQ_,"axG",@progbits,_ZN8opendnp314FunctorVisitorINS_7IndexedINS_23ControlRelayOutputBlockEEEZNS_22CommandResponseHandler27RespondToHeaderWithIteratorIS2_N7openpal7Bit16LEItEEEENS_8IINFieldENS_13QualifierCodeERKNS_14DNP3SerializerIT_EERKNS_11ICollectionINS1_ISC_EEEEPNS_21PrefixedWriteIteratorIT0_SC_EEEUlRKS3_E_E7OnValueESQ_,comdat
	.align 2
	.p2align 4
	.weak	_ZN8opendnp314FunctorVisitorINS_7IndexedINS_23ControlRelayOutputBlockEEEZNS_22CommandResponseHandler27RespondToHeaderWithIteratorIS2_N7openpal7Bit16LEItEEEENS_8IINFieldENS_13QualifierCodeERKNS_14DNP3SerializerIT_EERKNS_11ICollectionINS1_ISC_EEEEPNS_21PrefixedWriteIteratorIT0_SC_EEEUlRKS3_E_E7OnValueESQ_
	.type	_ZN8opendnp314FunctorVisitorINS_7IndexedINS_23ControlRelayOutputBlockEEEZNS_22CommandResponseHandler27RespondToHeaderWithIteratorIS2_N7openpal7Bit16LEItEEEENS_8IINFieldENS_13QualifierCodeERKNS_14DNP3SerializerIT_EERKNS_11ICollectionINS1_ISC_EEEEPNS_21PrefixedWriteIteratorIT0_SC_EEEUlRKS3_E_E7OnValueESQ_, @function
_ZN8opendnp314FunctorVisitorINS_7IndexedINS_23ControlRelayOutputBlockEEEZNS_22CommandResponseHandler27RespondToHeaderWithIteratorIS2_N7openpal7Bit16LEItEEEENS_8IINFieldENS_13QualifierCodeERKNS_14DNP3SerializerIT_EERKNS_11ICollectionINS1_ISC_EEEEPNS_21PrefixedWriteIteratorIT0_SC_EEEUlRKS3_E_E7OnValueESQ_:
.LFB3381:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rdi, %rbp
	pushq	%rbx
	.cfi_def_cfa_offset 24
	.cfi_offset 3, -24
	movq	%rsi, %rbx
	subq	$40, %rsp
	.cfi_def_cfa_offset 64
	movdqu	(%rsi), %xmm0
	movzwl	16(%rsi), %r8d
	movq	%fs:40, %rax
	movq	%rax, 24(%rsp)
	xorl	%eax, %eax
	movq	8(%rdi), %rax
	movaps	%xmm0, (%rsp)
	movl	32(%rax), %edx
	movzbl	40(%rax), %ecx
	cmpl	%ecx, %edx
	jnb	.L14
	movq	24(%rax), %rdi
	addl	$1, %edx
	movl	%edx, 32(%rax)
	movl	%r8d, %edx
	movq	(%rdi), %rax
	call	*16(%rax)
	movb	%al, 12(%rsp)
	testb	%al, %al
	je	.L6
	cmpb	$4, %al
	jne	.L5
	movq	24(%rbp), %rdi
	movl	$10, %esi
	call	_ZN8opendnp38IINField6SetBitENS_6IINBitE@PLT
.L5:
	movq	16(%rbp), %rbp
	testq	%rbp, %rbp
	je	.L3
	cmpb	$0, 30(%rbp)
	je	.L3
	movq	48(%rbp), %rdi
	movl	24(%rbp), %eax
	cmpl	%eax, (%rdi)
	jnb	.L15
.L3:
	movq	24(%rsp), %rax
	xorq	%fs:40, %rax
	jne	.L16
	addq	$40, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 24
	popq	%rbx
	.cfi_def_cfa_offset 16
	popq	%rbp
	.cfi_def_cfa_offset 8
	ret
	.p2align 4,,10
	.p2align 3
.L6:
	.cfi_restore_state
	movq	8(%rbp), %rax
	addl	$1, 36(%rax)
	jmp	.L5
	.p2align 4,,10
	.p2align 3
.L14:
	movb	$8, 12(%rsp)
	jmp	.L5
	.p2align 4,,10
	.p2align 3
.L15:
	movzwl	16(%rbx), %edx
	movq	8(%rdi), %rax
	movl	$2, %esi
	movw	%dx, (%rax)
	call	_ZN7openpal6WSlice7AdvanceEj@PLT
	movq	48(%rbp), %rsi
	movq	%rsp, %rdi
	call	*16(%rbp)
	addw	$1, 28(%rbp)
	jmp	.L3
.L16:
	call	__stack_chk_fail@PLT
	.cfi_endproc
.LFE3381:
	.size	_ZN8opendnp314FunctorVisitorINS_7IndexedINS_23ControlRelayOutputBlockEEEZNS_22CommandResponseHandler27RespondToHeaderWithIteratorIS2_N7openpal7Bit16LEItEEEENS_8IINFieldENS_13QualifierCodeERKNS_14DNP3SerializerIT_EERKNS_11ICollectionINS1_ISC_EEEEPNS_21PrefixedWriteIteratorIT0_SC_EEEUlRKS3_E_E7OnValueESQ_, .-_ZN8opendnp314FunctorVisitorINS_7IndexedINS_23ControlRelayOutputBlockEEEZNS_22CommandResponseHandler27RespondToHeaderWithIteratorIS2_N7openpal7Bit16LEItEEEENS_8IINFieldENS_13QualifierCodeERKNS_14DNP3SerializerIT_EERKNS_11ICollectionINS1_ISC_EEEEPNS_21PrefixedWriteIteratorIT0_SC_EEEUlRKS3_E_E7OnValueESQ_
	.section	.text._ZN8opendnp314FunctorVisitorINS_7IndexedINS_23ControlRelayOutputBlockEEEZNS_22CommandResponseHandler27RespondToHeaderWithIteratorIS2_N7openpal11UInt8SimpleEEENS_8IINFieldENS_13QualifierCodeERKNS_14DNP3SerializerIT_EERKNS_11ICollectionINS1_ISB_EEEEPNS_21PrefixedWriteIteratorIT0_SB_EEEUlRKS3_E_E7OnValueESP_,"axG",@progbits,_ZN8opendnp314FunctorVisitorINS_7IndexedINS_23ControlRelayOutputBlockEEEZNS_22CommandResponseHandler27RespondToHeaderWithIteratorIS2_N7openpal11UInt8SimpleEEENS_8IINFieldENS_13QualifierCodeERKNS_14DNP3SerializerIT_EERKNS_11ICollectionINS1_ISB_EEEEPNS_21PrefixedWriteIteratorIT0_SB_EEEUlRKS3_E_E7OnValueESP_,comdat
	.align 2
	.p2align 4
	.weak	_ZN8opendnp314FunctorVisitorINS_7IndexedINS_23ControlRelayOutputBlockEEEZNS_22CommandResponseHandler27RespondToHeaderWithIteratorIS2_N7openpal11UInt8SimpleEEENS_8IINFieldENS_13QualifierCodeERKNS_14DNP3SerializerIT_EERKNS_11ICollectionINS1_ISB_EEEEPNS_21PrefixedWriteIteratorIT0_SB_EEEUlRKS3_E_E7OnValueESP_
	.type	_ZN8opendnp314FunctorVisitorINS_7IndexedINS_23ControlRelayOutputBlockEEEZNS_22CommandResponseHandler27RespondToHeaderWithIteratorIS2_N7openpal11UInt8SimpleEEENS_8IINFieldENS_13QualifierCodeERKNS_14DNP3SerializerIT_EERKNS_11ICollectionINS1_ISB_EEEEPNS_21PrefixedWriteIteratorIT0_SB_EEEUlRKS3_E_E7OnValueESP_, @function
_ZN8opendnp314FunctorVisitorINS_7IndexedINS_23ControlRelayOutputBlockEEEZNS_22CommandResponseHandler27RespondToHeaderWithIteratorIS2_N7openpal11UInt8SimpleEEENS_8IINFieldENS_13QualifierCodeERKNS_14DNP3SerializerIT_EERKNS_11ICollectionINS1_ISB_EEEEPNS_21PrefixedWriteIteratorIT0_SB_EEEUlRKS3_E_E7OnValueESP_:
.LFB3376:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rdi, %rbp
	pushq	%rbx
	.cfi_def_cfa_offset 24
	.cfi_offset 3, -24
	movq	%rsi, %rbx
	subq	$40, %rsp
	.cfi_def_cfa_offset 64
	movdqu	(%rsi), %xmm0
	movzwl	16(%rsi), %r8d
	movq	%fs:40, %rax
	movq	%rax, 24(%rsp)
	xorl	%eax, %eax
	movq	8(%rdi), %rax
	movaps	%xmm0, (%rsp)
	movl	32(%rax), %edx
	movzbl	40(%rax), %ecx
	cmpl	%ecx, %edx
	jnb	.L28
	movq	24(%rax), %rdi
	addl	$1, %edx
	movl	%edx, 32(%rax)
	movl	%r8d, %edx
	movq	(%rdi), %rax
	call	*16(%rax)
	movb	%al, 12(%rsp)
	testb	%al, %al
	je	.L20
	cmpb	$4, %al
	jne	.L19
	movq	24(%rbp), %rdi
	movl	$10, %esi
	call	_ZN8opendnp38IINField6SetBitENS_6IINBitE@PLT
.L19:
	movq	16(%rbp), %rbp
	testq	%rbp, %rbp
	je	.L17
	cmpb	$0, 29(%rbp)
	je	.L17
	movq	48(%rbp), %rdi
	movl	24(%rbp), %eax
	cmpl	%eax, (%rdi)
	jnb	.L29
.L17:
	movq	24(%rsp), %rax
	xorq	%fs:40, %rax
	jne	.L30
	addq	$40, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 24
	popq	%rbx
	.cfi_def_cfa_offset 16
	popq	%rbp
	.cfi_def_cfa_offset 8
	ret
	.p2align 4,,10
	.p2align 3
.L20:
	.cfi_restore_state
	movq	8(%rbp), %rax
	addl	$1, 36(%rax)
	jmp	.L19
	.p2align 4,,10
	.p2align 3
.L28:
	movb	$8, 12(%rsp)
	jmp	.L19
	.p2align 4,,10
	.p2align 3
.L29:
	movq	8(%rdi), %rax
	movzwl	16(%rbx), %edx
	movl	$1, %esi
	movb	%dl, (%rax)
	call	_ZN7openpal6WSlice7AdvanceEj@PLT
	movq	48(%rbp), %rsi
	movq	%rsp, %rdi
	call	*16(%rbp)
	addb	$1, 28(%rbp)
	jmp	.L17
.L30:
	call	__stack_chk_fail@PLT
	.cfi_endproc
.LFE3376:
	.size	_ZN8opendnp314FunctorVisitorINS_7IndexedINS_23ControlRelayOutputBlockEEEZNS_22CommandResponseHandler27RespondToHeaderWithIteratorIS2_N7openpal11UInt8SimpleEEENS_8IINFieldENS_13QualifierCodeERKNS_14DNP3SerializerIT_EERKNS_11ICollectionINS1_ISB_EEEEPNS_21PrefixedWriteIteratorIT0_SB_EEEUlRKS3_E_E7OnValueESP_, .-_ZN8opendnp314FunctorVisitorINS_7IndexedINS_23ControlRelayOutputBlockEEEZNS_22CommandResponseHandler27RespondToHeaderWithIteratorIS2_N7openpal11UInt8SimpleEEENS_8IINFieldENS_13QualifierCodeERKNS_14DNP3SerializerIT_EERKNS_11ICollectionINS1_ISB_EEEEPNS_21PrefixedWriteIteratorIT0_SB_EEEUlRKS3_E_E7OnValueESP_
	.section	.text._ZN8opendnp314FunctorVisitorINS_7IndexedINS_17AnalogOutputInt16EEEZNS_22CommandResponseHandler27RespondToHeaderWithIteratorIS2_N7openpal7Bit16LEItEEEENS_8IINFieldENS_13QualifierCodeERKNS_14DNP3SerializerIT_EERKNS_11ICollectionINS1_ISC_EEEEPNS_21PrefixedWriteIteratorIT0_SC_EEEUlRKS3_E_E7OnValueESQ_,"axG",@progbits,_ZN8opendnp314FunctorVisitorINS_7IndexedINS_17AnalogOutputInt16EEEZNS_22CommandResponseHandler27RespondToHeaderWithIteratorIS2_N7openpal7Bit16LEItEEEENS_8IINFieldENS_13QualifierCodeERKNS_14DNP3SerializerIT_EERKNS_11ICollectionINS1_ISC_EEEEPNS_21PrefixedWriteIteratorIT0_SC_EEEUlRKS3_E_E7OnValueESQ_,comdat
	.align 2
	.p2align 4
	.weak	_ZN8opendnp314FunctorVisitorINS_7IndexedINS_17AnalogOutputInt16EEEZNS_22CommandResponseHandler27RespondToHeaderWithIteratorIS2_N7openpal7Bit16LEItEEEENS_8IINFieldENS_13QualifierCodeERKNS_14DNP3SerializerIT_EERKNS_11ICollectionINS1_ISC_EEEEPNS_21PrefixedWriteIteratorIT0_SC_EEEUlRKS3_E_E7OnValueESQ_
	.type	_ZN8opendnp314FunctorVisitorINS_7IndexedINS_17AnalogOutputInt16EEEZNS_22CommandResponseHandler27RespondToHeaderWithIteratorIS2_N7openpal7Bit16LEItEEEENS_8IINFieldENS_13QualifierCodeERKNS_14DNP3SerializerIT_EERKNS_11ICollectionINS1_ISC_EEEEPNS_21PrefixedWriteIteratorIT0_SC_EEEUlRKS3_E_E7OnValueESQ_, @function
_ZN8opendnp314FunctorVisitorINS_7IndexedINS_17AnalogOutputInt16EEEZNS_22CommandResponseHandler27RespondToHeaderWithIteratorIS2_N7openpal7Bit16LEItEEEENS_8IINFieldENS_13QualifierCodeERKNS_14DNP3SerializerIT_EERKNS_11ICollectionINS1_ISC_EEEEPNS_21PrefixedWriteIteratorIT0_SC_EEEUlRKS3_E_E7OnValueESQ_:
.LFB3380:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rdi, %rbp
	pushq	%rbx
	.cfi_def_cfa_offset 24
	.cfi_offset 3, -24
	movq	%rsi, %rbx
	subq	$24, %rsp
	.cfi_def_cfa_offset 48
	movzwl	4(%rsi), %r8d
	movq	%fs:40, %rax
	movq	%rax, 8(%rsp)
	xorl	%eax, %eax
	movl	(%rsi), %eax
	movl	%eax, 4(%rsp)
	movq	8(%rdi), %rax
	movl	32(%rax), %edx
	movzbl	40(%rax), %ecx
	cmpl	%ecx, %edx
	jnb	.L42
	movq	24(%rax), %rdi
	addl	$1, %edx
	movl	%edx, 32(%rax)
	movl	%r8d, %edx
	movq	(%rdi), %rax
	call	*24(%rax)
	movb	%al, 6(%rsp)
	testb	%al, %al
	je	.L34
	cmpb	$4, %al
	jne	.L33
	movq	24(%rbp), %rdi
	movl	$10, %esi
	call	_ZN8opendnp38IINField6SetBitENS_6IINBitE@PLT
.L33:
	movq	16(%rbp), %rbp
	testq	%rbp, %rbp
	je	.L31
	cmpb	$0, 30(%rbp)
	je	.L31
	movq	48(%rbp), %rdi
	movl	24(%rbp), %eax
	cmpl	%eax, (%rdi)
	jnb	.L43
.L31:
	movq	8(%rsp), %rax
	xorq	%fs:40, %rax
	jne	.L44
	addq	$24, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 24
	popq	%rbx
	.cfi_def_cfa_offset 16
	popq	%rbp
	.cfi_def_cfa_offset 8
	ret
	.p2align 4,,10
	.p2align 3
.L34:
	.cfi_restore_state
	movq	8(%rbp), %rax
	addl	$1, 36(%rax)
	jmp	.L33
	.p2align 4,,10
	.p2align 3
.L42:
	movb	$8, 6(%rsp)
	jmp	.L33
	.p2align 4,,10
	.p2align 3
.L43:
	movzwl	4(%rbx), %edx
	movq	8(%rdi), %rax
	movl	$2, %esi
	movw	%dx, (%rax)
	call	_ZN7openpal6WSlice7AdvanceEj@PLT
	movq	48(%rbp), %rsi
	leaq	4(%rsp), %rdi
	call	*16(%rbp)
	addw	$1, 28(%rbp)
	jmp	.L31
.L44:
	call	__stack_chk_fail@PLT
	.cfi_endproc
.LFE3380:
	.size	_ZN8opendnp314FunctorVisitorINS_7IndexedINS_17AnalogOutputInt16EEEZNS_22CommandResponseHandler27RespondToHeaderWithIteratorIS2_N7openpal7Bit16LEItEEEENS_8IINFieldENS_13QualifierCodeERKNS_14DNP3SerializerIT_EERKNS_11ICollectionINS1_ISC_EEEEPNS_21PrefixedWriteIteratorIT0_SC_EEEUlRKS3_E_E7OnValueESQ_, .-_ZN8opendnp314FunctorVisitorINS_7IndexedINS_17AnalogOutputInt16EEEZNS_22CommandResponseHandler27RespondToHeaderWithIteratorIS2_N7openpal7Bit16LEItEEEENS_8IINFieldENS_13QualifierCodeERKNS_14DNP3SerializerIT_EERKNS_11ICollectionINS1_ISC_EEEEPNS_21PrefixedWriteIteratorIT0_SC_EEEUlRKS3_E_E7OnValueESQ_
	.section	.text._ZN8opendnp314FunctorVisitorINS_7IndexedINS_17AnalogOutputInt16EEEZNS_22CommandResponseHandler27RespondToHeaderWithIteratorIS2_N7openpal11UInt8SimpleEEENS_8IINFieldENS_13QualifierCodeERKNS_14DNP3SerializerIT_EERKNS_11ICollectionINS1_ISB_EEEEPNS_21PrefixedWriteIteratorIT0_SB_EEEUlRKS3_E_E7OnValueESP_,"axG",@progbits,_ZN8opendnp314FunctorVisitorINS_7IndexedINS_17AnalogOutputInt16EEEZNS_22CommandResponseHandler27RespondToHeaderWithIteratorIS2_N7openpal11UInt8SimpleEEENS_8IINFieldENS_13QualifierCodeERKNS_14DNP3SerializerIT_EERKNS_11ICollectionINS1_ISB_EEEEPNS_21PrefixedWriteIteratorIT0_SB_EEEUlRKS3_E_E7OnValueESP_,comdat
	.align 2
	.p2align 4
	.weak	_ZN8opendnp314FunctorVisitorINS_7IndexedINS_17AnalogOutputInt16EEEZNS_22CommandResponseHandler27RespondToHeaderWithIteratorIS2_N7openpal11UInt8SimpleEEENS_8IINFieldENS_13QualifierCodeERKNS_14DNP3SerializerIT_EERKNS_11ICollectionINS1_ISB_EEEEPNS_21PrefixedWriteIteratorIT0_SB_EEEUlRKS3_E_E7OnValueESP_
	.type	_ZN8opendnp314FunctorVisitorINS_7IndexedINS_17AnalogOutputInt16EEEZNS_22CommandResponseHandler27RespondToHeaderWithIteratorIS2_N7openpal11UInt8SimpleEEENS_8IINFieldENS_13QualifierCodeERKNS_14DNP3SerializerIT_EERKNS_11ICollectionINS1_ISB_EEEEPNS_21PrefixedWriteIteratorIT0_SB_EEEUlRKS3_E_E7OnValueESP_, @function
_ZN8opendnp314FunctorVisitorINS_7IndexedINS_17AnalogOutputInt16EEEZNS_22CommandResponseHandler27RespondToHeaderWithIteratorIS2_N7openpal11UInt8SimpleEEENS_8IINFieldENS_13QualifierCodeERKNS_14DNP3SerializerIT_EERKNS_11ICollectionINS1_ISB_EEEEPNS_21PrefixedWriteIteratorIT0_SB_EEEUlRKS3_E_E7OnValueESP_:
.LFB3375:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rdi, %rbp
	pushq	%rbx
	.cfi_def_cfa_offset 24
	.cfi_offset 3, -24
	movq	%rsi, %rbx
	subq	$24, %rsp
	.cfi_def_cfa_offset 48
	movzwl	4(%rsi), %r8d
	movq	%fs:40, %rax
	movq	%rax, 8(%rsp)
	xorl	%eax, %eax
	movl	(%rsi), %eax
	movl	%eax, 4(%rsp)
	movq	8(%rdi), %rax
	movl	32(%rax), %edx
	movzbl	40(%rax), %ecx
	cmpl	%ecx, %edx
	jnb	.L56
	movq	24(%rax), %rdi
	addl	$1, %edx
	movl	%edx, 32(%rax)
	movl	%r8d, %edx
	movq	(%rdi), %rax
	call	*24(%rax)
	movb	%al, 6(%rsp)
	testb	%al, %al
	je	.L48
	cmpb	$4, %al
	jne	.L47
	movq	24(%rbp), %rdi
	movl	$10, %esi
	call	_ZN8opendnp38IINField6SetBitENS_6IINBitE@PLT
.L47:
	movq	16(%rbp), %rbp
	testq	%rbp, %rbp
	je	.L45
	cmpb	$0, 29(%rbp)
	je	.L45
	movq	48(%rbp), %rdi
	movl	24(%rbp), %eax
	cmpl	%eax, (%rdi)
	jnb	.L57
.L45:
	movq	8(%rsp), %rax
	xorq	%fs:40, %rax
	jne	.L58
	addq	$24, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 24
	popq	%rbx
	.cfi_def_cfa_offset 16
	popq	%rbp
	.cfi_def_cfa_offset 8
	ret
	.p2align 4,,10
	.p2align 3
.L48:
	.cfi_restore_state
	movq	8(%rbp), %rax
	addl	$1, 36(%rax)
	jmp	.L47
	.p2align 4,,10
	.p2align 3
.L56:
	movb	$8, 6(%rsp)
	jmp	.L47
	.p2align 4,,10
	.p2align 3
.L57:
	movq	8(%rdi), %rax
	movzwl	4(%rbx), %edx
	movl	$1, %esi
	movb	%dl, (%rax)
	call	_ZN7openpal6WSlice7AdvanceEj@PLT
	movq	48(%rbp), %rsi
	leaq	4(%rsp), %rdi
	call	*16(%rbp)
	addb	$1, 28(%rbp)
	jmp	.L45
.L58:
	call	__stack_chk_fail@PLT
	.cfi_endproc
.LFE3375:
	.size	_ZN8opendnp314FunctorVisitorINS_7IndexedINS_17AnalogOutputInt16EEEZNS_22CommandResponseHandler27RespondToHeaderWithIteratorIS2_N7openpal11UInt8SimpleEEENS_8IINFieldENS_13QualifierCodeERKNS_14DNP3SerializerIT_EERKNS_11ICollectionINS1_ISB_EEEEPNS_21PrefixedWriteIteratorIT0_SB_EEEUlRKS3_E_E7OnValueESP_, .-_ZN8opendnp314FunctorVisitorINS_7IndexedINS_17AnalogOutputInt16EEEZNS_22CommandResponseHandler27RespondToHeaderWithIteratorIS2_N7openpal11UInt8SimpleEEENS_8IINFieldENS_13QualifierCodeERKNS_14DNP3SerializerIT_EERKNS_11ICollectionINS1_ISB_EEEEPNS_21PrefixedWriteIteratorIT0_SB_EEEUlRKS3_E_E7OnValueESP_
	.section	.text._ZN8opendnp314FunctorVisitorINS_7IndexedINS_17AnalogOutputInt32EEEZNS_22CommandResponseHandler27RespondToHeaderWithIteratorIS2_N7openpal7Bit16LEItEEEENS_8IINFieldENS_13QualifierCodeERKNS_14DNP3SerializerIT_EERKNS_11ICollectionINS1_ISC_EEEEPNS_21PrefixedWriteIteratorIT0_SC_EEEUlRKS3_E_E7OnValueESQ_,"axG",@progbits,_ZN8opendnp314FunctorVisitorINS_7IndexedINS_17AnalogOutputInt32EEEZNS_22CommandResponseHandler27RespondToHeaderWithIteratorIS2_N7openpal7Bit16LEItEEEENS_8IINFieldENS_13QualifierCodeERKNS_14DNP3SerializerIT_EERKNS_11ICollectionINS1_ISC_EEEEPNS_21PrefixedWriteIteratorIT0_SC_EEEUlRKS3_E_E7OnValueESQ_,comdat
	.align 2
	.p2align 4
	.weak	_ZN8opendnp314FunctorVisitorINS_7IndexedINS_17AnalogOutputInt32EEEZNS_22CommandResponseHandler27RespondToHeaderWithIteratorIS2_N7openpal7Bit16LEItEEEENS_8IINFieldENS_13QualifierCodeERKNS_14DNP3SerializerIT_EERKNS_11ICollectionINS1_ISC_EEEEPNS_21PrefixedWriteIteratorIT0_SC_EEEUlRKS3_E_E7OnValueESQ_
	.type	_ZN8opendnp314FunctorVisitorINS_7IndexedINS_17AnalogOutputInt32EEEZNS_22CommandResponseHandler27RespondToHeaderWithIteratorIS2_N7openpal7Bit16LEItEEEENS_8IINFieldENS_13QualifierCodeERKNS_14DNP3SerializerIT_EERKNS_11ICollectionINS1_ISC_EEEEPNS_21PrefixedWriteIteratorIT0_SC_EEEUlRKS3_E_E7OnValueESQ_, @function
_ZN8opendnp314FunctorVisitorINS_7IndexedINS_17AnalogOutputInt32EEEZNS_22CommandResponseHandler27RespondToHeaderWithIteratorIS2_N7openpal7Bit16LEItEEEENS_8IINFieldENS_13QualifierCodeERKNS_14DNP3SerializerIT_EERKNS_11ICollectionINS1_ISC_EEEEPNS_21PrefixedWriteIteratorIT0_SC_EEEUlRKS3_E_E7OnValueESQ_:
.LFB3379:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rdi, %rbp
	pushq	%rbx
	.cfi_def_cfa_offset 24
	.cfi_offset 3, -24
	movq	%rsi, %rbx
	subq	$24, %rsp
	.cfi_def_cfa_offset 48
	movzwl	8(%rsi), %r8d
	movq	%fs:40, %rax
	movq	%rax, 8(%rsp)
	xorl	%eax, %eax
	movq	(%rsi), %rax
	movq	%rax, (%rsp)
	movq	8(%rdi), %rax
	movl	32(%rax), %edx
	movzbl	40(%rax), %ecx
	cmpl	%ecx, %edx
	jnb	.L70
	movq	24(%rax), %rdi
	addl	$1, %edx
	movl	%edx, 32(%rax)
	movl	%r8d, %edx
	movq	(%rdi), %rax
	call	*32(%rax)
	movb	%al, 4(%rsp)
	testb	%al, %al
	je	.L62
	cmpb	$4, %al
	jne	.L61
	movq	24(%rbp), %rdi
	movl	$10, %esi
	call	_ZN8opendnp38IINField6SetBitENS_6IINBitE@PLT
.L61:
	movq	16(%rbp), %rbp
	testq	%rbp, %rbp
	je	.L59
	cmpb	$0, 30(%rbp)
	je	.L59
	movq	48(%rbp), %rdi
	movl	24(%rbp), %eax
	cmpl	%eax, (%rdi)
	jnb	.L71
.L59:
	movq	8(%rsp), %rax
	xorq	%fs:40, %rax
	jne	.L72
	addq	$24, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 24
	popq	%rbx
	.cfi_def_cfa_offset 16
	popq	%rbp
	.cfi_def_cfa_offset 8
	ret
	.p2align 4,,10
	.p2align 3
.L62:
	.cfi_restore_state
	movq	8(%rbp), %rax
	addl	$1, 36(%rax)
	jmp	.L61
	.p2align 4,,10
	.p2align 3
.L70:
	movb	$8, 4(%rsp)
	jmp	.L61
	.p2align 4,,10
	.p2align 3
.L71:
	movzwl	8(%rbx), %edx
	movq	8(%rdi), %rax
	movl	$2, %esi
	movw	%dx, (%rax)
	call	_ZN7openpal6WSlice7AdvanceEj@PLT
	movq	48(%rbp), %rsi
	movq	%rsp, %rdi
	call	*16(%rbp)
	addw	$1, 28(%rbp)
	jmp	.L59
.L72:
	call	__stack_chk_fail@PLT
	.cfi_endproc
.LFE3379:
	.size	_ZN8opendnp314FunctorVisitorINS_7IndexedINS_17AnalogOutputInt32EEEZNS_22CommandResponseHandler27RespondToHeaderWithIteratorIS2_N7openpal7Bit16LEItEEEENS_8IINFieldENS_13QualifierCodeERKNS_14DNP3SerializerIT_EERKNS_11ICollectionINS1_ISC_EEEEPNS_21PrefixedWriteIteratorIT0_SC_EEEUlRKS3_E_E7OnValueESQ_, .-_ZN8opendnp314FunctorVisitorINS_7IndexedINS_17AnalogOutputInt32EEEZNS_22CommandResponseHandler27RespondToHeaderWithIteratorIS2_N7openpal7Bit16LEItEEEENS_8IINFieldENS_13QualifierCodeERKNS_14DNP3SerializerIT_EERKNS_11ICollectionINS1_ISC_EEEEPNS_21PrefixedWriteIteratorIT0_SC_EEEUlRKS3_E_E7OnValueESQ_
	.section	.text._ZN8opendnp314FunctorVisitorINS_7IndexedINS_17AnalogOutputInt32EEEZNS_22CommandResponseHandler27RespondToHeaderWithIteratorIS2_N7openpal11UInt8SimpleEEENS_8IINFieldENS_13QualifierCodeERKNS_14DNP3SerializerIT_EERKNS_11ICollectionINS1_ISB_EEEEPNS_21PrefixedWriteIteratorIT0_SB_EEEUlRKS3_E_E7OnValueESP_,"axG",@progbits,_ZN8opendnp314FunctorVisitorINS_7IndexedINS_17AnalogOutputInt32EEEZNS_22CommandResponseHandler27RespondToHeaderWithIteratorIS2_N7openpal11UInt8SimpleEEENS_8IINFieldENS_13QualifierCodeERKNS_14DNP3SerializerIT_EERKNS_11ICollectionINS1_ISB_EEEEPNS_21PrefixedWriteIteratorIT0_SB_EEEUlRKS3_E_E7OnValueESP_,comdat
	.align 2
	.p2align 4
	.weak	_ZN8opendnp314FunctorVisitorINS_7IndexedINS_17AnalogOutputInt32EEEZNS_22CommandResponseHandler27RespondToHeaderWithIteratorIS2_N7openpal11UInt8SimpleEEENS_8IINFieldENS_13QualifierCodeERKNS_14DNP3SerializerIT_EERKNS_11ICollectionINS1_ISB_EEEEPNS_21PrefixedWriteIteratorIT0_SB_EEEUlRKS3_E_E7OnValueESP_
	.type	_ZN8opendnp314FunctorVisitorINS_7IndexedINS_17AnalogOutputInt32EEEZNS_22CommandResponseHandler27RespondToHeaderWithIteratorIS2_N7openpal11UInt8SimpleEEENS_8IINFieldENS_13QualifierCodeERKNS_14DNP3SerializerIT_EERKNS_11ICollectionINS1_ISB_EEEEPNS_21PrefixedWriteIteratorIT0_SB_EEEUlRKS3_E_E7OnValueESP_, @function
_ZN8opendnp314FunctorVisitorINS_7IndexedINS_17AnalogOutputInt32EEEZNS_22CommandResponseHandler27RespondToHeaderWithIteratorIS2_N7openpal11UInt8SimpleEEENS_8IINFieldENS_13QualifierCodeERKNS_14DNP3SerializerIT_EERKNS_11ICollectionINS1_ISB_EEEEPNS_21PrefixedWriteIteratorIT0_SB_EEEUlRKS3_E_E7OnValueESP_:
.LFB3374:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rdi, %rbp
	pushq	%rbx
	.cfi_def_cfa_offset 24
	.cfi_offset 3, -24
	movq	%rsi, %rbx
	subq	$24, %rsp
	.cfi_def_cfa_offset 48
	movzwl	8(%rsi), %r8d
	movq	%fs:40, %rax
	movq	%rax, 8(%rsp)
	xorl	%eax, %eax
	movq	(%rsi), %rax
	movq	%rax, (%rsp)
	movq	8(%rdi), %rax
	movl	32(%rax), %edx
	movzbl	40(%rax), %ecx
	cmpl	%ecx, %edx
	jnb	.L84
	movq	24(%rax), %rdi
	addl	$1, %edx
	movl	%edx, 32(%rax)
	movl	%r8d, %edx
	movq	(%rdi), %rax
	call	*32(%rax)
	movb	%al, 4(%rsp)
	testb	%al, %al
	je	.L76
	cmpb	$4, %al
	jne	.L75
	movq	24(%rbp), %rdi
	movl	$10, %esi
	call	_ZN8opendnp38IINField6SetBitENS_6IINBitE@PLT
.L75:
	movq	16(%rbp), %rbp
	testq	%rbp, %rbp
	je	.L73
	cmpb	$0, 29(%rbp)
	je	.L73
	movq	48(%rbp), %rdi
	movl	24(%rbp), %eax
	cmpl	%eax, (%rdi)
	jnb	.L85
.L73:
	movq	8(%rsp), %rax
	xorq	%fs:40, %rax
	jne	.L86
	addq	$24, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 24
	popq	%rbx
	.cfi_def_cfa_offset 16
	popq	%rbp
	.cfi_def_cfa_offset 8
	ret
	.p2align 4,,10
	.p2align 3
.L76:
	.cfi_restore_state
	movq	8(%rbp), %rax
	addl	$1, 36(%rax)
	jmp	.L75
	.p2align 4,,10
	.p2align 3
.L84:
	movb	$8, 4(%rsp)
	jmp	.L75
	.p2align 4,,10
	.p2align 3
.L85:
	movq	8(%rdi), %rax
	movzwl	8(%rbx), %edx
	movl	$1, %esi
	movb	%dl, (%rax)
	call	_ZN7openpal6WSlice7AdvanceEj@PLT
	movq	48(%rbp), %rsi
	movq	%rsp, %rdi
	call	*16(%rbp)
	addb	$1, 28(%rbp)
	jmp	.L73
.L86:
	call	__stack_chk_fail@PLT
	.cfi_endproc
.LFE3374:
	.size	_ZN8opendnp314FunctorVisitorINS_7IndexedINS_17AnalogOutputInt32EEEZNS_22CommandResponseHandler27RespondToHeaderWithIteratorIS2_N7openpal11UInt8SimpleEEENS_8IINFieldENS_13QualifierCodeERKNS_14DNP3SerializerIT_EERKNS_11ICollectionINS1_ISB_EEEEPNS_21PrefixedWriteIteratorIT0_SB_EEEUlRKS3_E_E7OnValueESP_, .-_ZN8opendnp314FunctorVisitorINS_7IndexedINS_17AnalogOutputInt32EEEZNS_22CommandResponseHandler27RespondToHeaderWithIteratorIS2_N7openpal11UInt8SimpleEEENS_8IINFieldENS_13QualifierCodeERKNS_14DNP3SerializerIT_EERKNS_11ICollectionINS1_ISB_EEEEPNS_21PrefixedWriteIteratorIT0_SB_EEEUlRKS3_E_E7OnValueESP_
	.section	.text._ZN8opendnp314FunctorVisitorINS_7IndexedINS_19AnalogOutputFloat32EEEZNS_22CommandResponseHandler27RespondToHeaderWithIteratorIS2_N7openpal7Bit16LEItEEEENS_8IINFieldENS_13QualifierCodeERKNS_14DNP3SerializerIT_EERKNS_11ICollectionINS1_ISC_EEEEPNS_21PrefixedWriteIteratorIT0_SC_EEEUlRKS3_E_E7OnValueESQ_,"axG",@progbits,_ZN8opendnp314FunctorVisitorINS_7IndexedINS_19AnalogOutputFloat32EEEZNS_22CommandResponseHandler27RespondToHeaderWithIteratorIS2_N7openpal7Bit16LEItEEEENS_8IINFieldENS_13QualifierCodeERKNS_14DNP3SerializerIT_EERKNS_11ICollectionINS1_ISC_EEEEPNS_21PrefixedWriteIteratorIT0_SC_EEEUlRKS3_E_E7OnValueESQ_,comdat
	.align 2
	.p2align 4
	.weak	_ZN8opendnp314FunctorVisitorINS_7IndexedINS_19AnalogOutputFloat32EEEZNS_22CommandResponseHandler27RespondToHeaderWithIteratorIS2_N7openpal7Bit16LEItEEEENS_8IINFieldENS_13QualifierCodeERKNS_14DNP3SerializerIT_EERKNS_11ICollectionINS1_ISC_EEEEPNS_21PrefixedWriteIteratorIT0_SC_EEEUlRKS3_E_E7OnValueESQ_
	.type	_ZN8opendnp314FunctorVisitorINS_7IndexedINS_19AnalogOutputFloat32EEEZNS_22CommandResponseHandler27RespondToHeaderWithIteratorIS2_N7openpal7Bit16LEItEEEENS_8IINFieldENS_13QualifierCodeERKNS_14DNP3SerializerIT_EERKNS_11ICollectionINS1_ISC_EEEEPNS_21PrefixedWriteIteratorIT0_SC_EEEUlRKS3_E_E7OnValueESQ_, @function
_ZN8opendnp314FunctorVisitorINS_7IndexedINS_19AnalogOutputFloat32EEEZNS_22CommandResponseHandler27RespondToHeaderWithIteratorIS2_N7openpal7Bit16LEItEEEENS_8IINFieldENS_13QualifierCodeERKNS_14DNP3SerializerIT_EERKNS_11ICollectionINS1_ISC_EEEEPNS_21PrefixedWriteIteratorIT0_SC_EEEUlRKS3_E_E7OnValueESQ_:
.LFB3378:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rdi, %rbp
	pushq	%rbx
	.cfi_def_cfa_offset 24
	.cfi_offset 3, -24
	movq	%rsi, %rbx
	subq	$24, %rsp
	.cfi_def_cfa_offset 48
	movzwl	8(%rsi), %r8d
	movq	%fs:40, %rax
	movq	%rax, 8(%rsp)
	xorl	%eax, %eax
	movq	(%rsi), %rax
	movq	%rax, (%rsp)
	movq	8(%rdi), %rax
	movl	32(%rax), %edx
	movzbl	40(%rax), %ecx
	cmpl	%ecx, %edx
	jnb	.L98
	movq	24(%rax), %rdi
	addl	$1, %edx
	movl	%edx, 32(%rax)
	movl	%r8d, %edx
	movq	(%rdi), %rax
	call	*40(%rax)
	movb	%al, 4(%rsp)
	testb	%al, %al
	je	.L90
	cmpb	$4, %al
	jne	.L89
	movq	24(%rbp), %rdi
	movl	$10, %esi
	call	_ZN8opendnp38IINField6SetBitENS_6IINBitE@PLT
.L89:
	movq	16(%rbp), %rbp
	testq	%rbp, %rbp
	je	.L87
	cmpb	$0, 30(%rbp)
	je	.L87
	movq	48(%rbp), %rdi
	movl	24(%rbp), %eax
	cmpl	%eax, (%rdi)
	jnb	.L99
.L87:
	movq	8(%rsp), %rax
	xorq	%fs:40, %rax
	jne	.L100
	addq	$24, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 24
	popq	%rbx
	.cfi_def_cfa_offset 16
	popq	%rbp
	.cfi_def_cfa_offset 8
	ret
	.p2align 4,,10
	.p2align 3
.L90:
	.cfi_restore_state
	movq	8(%rbp), %rax
	addl	$1, 36(%rax)
	jmp	.L89
	.p2align 4,,10
	.p2align 3
.L98:
	movb	$8, 4(%rsp)
	jmp	.L89
	.p2align 4,,10
	.p2align 3
.L99:
	movzwl	8(%rbx), %edx
	movq	8(%rdi), %rax
	movl	$2, %esi
	movw	%dx, (%rax)
	call	_ZN7openpal6WSlice7AdvanceEj@PLT
	movq	48(%rbp), %rsi
	movq	%rsp, %rdi
	call	*16(%rbp)
	addw	$1, 28(%rbp)
	jmp	.L87
.L100:
	call	__stack_chk_fail@PLT
	.cfi_endproc
.LFE3378:
	.size	_ZN8opendnp314FunctorVisitorINS_7IndexedINS_19AnalogOutputFloat32EEEZNS_22CommandResponseHandler27RespondToHeaderWithIteratorIS2_N7openpal7Bit16LEItEEEENS_8IINFieldENS_13QualifierCodeERKNS_14DNP3SerializerIT_EERKNS_11ICollectionINS1_ISC_EEEEPNS_21PrefixedWriteIteratorIT0_SC_EEEUlRKS3_E_E7OnValueESQ_, .-_ZN8opendnp314FunctorVisitorINS_7IndexedINS_19AnalogOutputFloat32EEEZNS_22CommandResponseHandler27RespondToHeaderWithIteratorIS2_N7openpal7Bit16LEItEEEENS_8IINFieldENS_13QualifierCodeERKNS_14DNP3SerializerIT_EERKNS_11ICollectionINS1_ISC_EEEEPNS_21PrefixedWriteIteratorIT0_SC_EEEUlRKS3_E_E7OnValueESQ_
	.section	.text._ZN8opendnp314FunctorVisitorINS_7IndexedINS_19AnalogOutputFloat32EEEZNS_22CommandResponseHandler27RespondToHeaderWithIteratorIS2_N7openpal11UInt8SimpleEEENS_8IINFieldENS_13QualifierCodeERKNS_14DNP3SerializerIT_EERKNS_11ICollectionINS1_ISB_EEEEPNS_21PrefixedWriteIteratorIT0_SB_EEEUlRKS3_E_E7OnValueESP_,"axG",@progbits,_ZN8opendnp314FunctorVisitorINS_7IndexedINS_19AnalogOutputFloat32EEEZNS_22CommandResponseHandler27RespondToHeaderWithIteratorIS2_N7openpal11UInt8SimpleEEENS_8IINFieldENS_13QualifierCodeERKNS_14DNP3SerializerIT_EERKNS_11ICollectionINS1_ISB_EEEEPNS_21PrefixedWriteIteratorIT0_SB_EEEUlRKS3_E_E7OnValueESP_,comdat
	.align 2
	.p2align 4
	.weak	_ZN8opendnp314FunctorVisitorINS_7IndexedINS_19AnalogOutputFloat32EEEZNS_22CommandResponseHandler27RespondToHeaderWithIteratorIS2_N7openpal11UInt8SimpleEEENS_8IINFieldENS_13QualifierCodeERKNS_14DNP3SerializerIT_EERKNS_11ICollectionINS1_ISB_EEEEPNS_21PrefixedWriteIteratorIT0_SB_EEEUlRKS3_E_E7OnValueESP_
	.type	_ZN8opendnp314FunctorVisitorINS_7IndexedINS_19AnalogOutputFloat32EEEZNS_22CommandResponseHandler27RespondToHeaderWithIteratorIS2_N7openpal11UInt8SimpleEEENS_8IINFieldENS_13QualifierCodeERKNS_14DNP3SerializerIT_EERKNS_11ICollectionINS1_ISB_EEEEPNS_21PrefixedWriteIteratorIT0_SB_EEEUlRKS3_E_E7OnValueESP_, @function
_ZN8opendnp314FunctorVisitorINS_7IndexedINS_19AnalogOutputFloat32EEEZNS_22CommandResponseHandler27RespondToHeaderWithIteratorIS2_N7openpal11UInt8SimpleEEENS_8IINFieldENS_13QualifierCodeERKNS_14DNP3SerializerIT_EERKNS_11ICollectionINS1_ISB_EEEEPNS_21PrefixedWriteIteratorIT0_SB_EEEUlRKS3_E_E7OnValueESP_:
.LFB3373:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rdi, %rbp
	pushq	%rbx
	.cfi_def_cfa_offset 24
	.cfi_offset 3, -24
	movq	%rsi, %rbx
	subq	$24, %rsp
	.cfi_def_cfa_offset 48
	movzwl	8(%rsi), %r8d
	movq	%fs:40, %rax
	movq	%rax, 8(%rsp)
	xorl	%eax, %eax
	movq	(%rsi), %rax
	movq	%rax, (%rsp)
	movq	8(%rdi), %rax
	movl	32(%rax), %edx
	movzbl	40(%rax), %ecx
	cmpl	%ecx, %edx
	jnb	.L112
	movq	24(%rax), %rdi
	addl	$1, %edx
	movl	%edx, 32(%rax)
	movl	%r8d, %edx
	movq	(%rdi), %rax
	call	*40(%rax)
	movb	%al, 4(%rsp)
	testb	%al, %al
	je	.L104
	cmpb	$4, %al
	jne	.L103
	movq	24(%rbp), %rdi
	movl	$10, %esi
	call	_ZN8opendnp38IINField6SetBitENS_6IINBitE@PLT
.L103:
	movq	16(%rbp), %rbp
	testq	%rbp, %rbp
	je	.L101
	cmpb	$0, 29(%rbp)
	je	.L101
	movq	48(%rbp), %rdi
	movl	24(%rbp), %eax
	cmpl	%eax, (%rdi)
	jnb	.L113
.L101:
	movq	8(%rsp), %rax
	xorq	%fs:40, %rax
	jne	.L114
	addq	$24, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 24
	popq	%rbx
	.cfi_def_cfa_offset 16
	popq	%rbp
	.cfi_def_cfa_offset 8
	ret
	.p2align 4,,10
	.p2align 3
.L104:
	.cfi_restore_state
	movq	8(%rbp), %rax
	addl	$1, 36(%rax)
	jmp	.L103
	.p2align 4,,10
	.p2align 3
.L112:
	movb	$8, 4(%rsp)
	jmp	.L103
	.p2align 4,,10
	.p2align 3
.L113:
	movq	8(%rdi), %rax
	movzwl	8(%rbx), %edx
	movl	$1, %esi
	movb	%dl, (%rax)
	call	_ZN7openpal6WSlice7AdvanceEj@PLT
	movq	48(%rbp), %rsi
	movq	%rsp, %rdi
	call	*16(%rbp)
	addb	$1, 28(%rbp)
	jmp	.L101
.L114:
	call	__stack_chk_fail@PLT
	.cfi_endproc
.LFE3373:
	.size	_ZN8opendnp314FunctorVisitorINS_7IndexedINS_19AnalogOutputFloat32EEEZNS_22CommandResponseHandler27RespondToHeaderWithIteratorIS2_N7openpal11UInt8SimpleEEENS_8IINFieldENS_13QualifierCodeERKNS_14DNP3SerializerIT_EERKNS_11ICollectionINS1_ISB_EEEEPNS_21PrefixedWriteIteratorIT0_SB_EEEUlRKS3_E_E7OnValueESP_, .-_ZN8opendnp314FunctorVisitorINS_7IndexedINS_19AnalogOutputFloat32EEEZNS_22CommandResponseHandler27RespondToHeaderWithIteratorIS2_N7openpal11UInt8SimpleEEENS_8IINFieldENS_13QualifierCodeERKNS_14DNP3SerializerIT_EERKNS_11ICollectionINS1_ISB_EEEEPNS_21PrefixedWriteIteratorIT0_SB_EEEUlRKS3_E_E7OnValueESP_
	.section	.text._ZN8opendnp314FunctorVisitorINS_7IndexedINS_20AnalogOutputDouble64EEEZNS_22CommandResponseHandler27RespondToHeaderWithIteratorIS2_N7openpal7Bit16LEItEEEENS_8IINFieldENS_13QualifierCodeERKNS_14DNP3SerializerIT_EERKNS_11ICollectionINS1_ISC_EEEEPNS_21PrefixedWriteIteratorIT0_SC_EEEUlRKS3_E_E7OnValueESQ_,"axG",@progbits,_ZN8opendnp314FunctorVisitorINS_7IndexedINS_20AnalogOutputDouble64EEEZNS_22CommandResponseHandler27RespondToHeaderWithIteratorIS2_N7openpal7Bit16LEItEEEENS_8IINFieldENS_13QualifierCodeERKNS_14DNP3SerializerIT_EERKNS_11ICollectionINS1_ISC_EEEEPNS_21PrefixedWriteIteratorIT0_SC_EEEUlRKS3_E_E7OnValueESQ_,comdat
	.align 2
	.p2align 4
	.weak	_ZN8opendnp314FunctorVisitorINS_7IndexedINS_20AnalogOutputDouble64EEEZNS_22CommandResponseHandler27RespondToHeaderWithIteratorIS2_N7openpal7Bit16LEItEEEENS_8IINFieldENS_13QualifierCodeERKNS_14DNP3SerializerIT_EERKNS_11ICollectionINS1_ISC_EEEEPNS_21PrefixedWriteIteratorIT0_SC_EEEUlRKS3_E_E7OnValueESQ_
	.type	_ZN8opendnp314FunctorVisitorINS_7IndexedINS_20AnalogOutputDouble64EEEZNS_22CommandResponseHandler27RespondToHeaderWithIteratorIS2_N7openpal7Bit16LEItEEEENS_8IINFieldENS_13QualifierCodeERKNS_14DNP3SerializerIT_EERKNS_11ICollectionINS1_ISC_EEEEPNS_21PrefixedWriteIteratorIT0_SC_EEEUlRKS3_E_E7OnValueESQ_, @function
_ZN8opendnp314FunctorVisitorINS_7IndexedINS_20AnalogOutputDouble64EEEZNS_22CommandResponseHandler27RespondToHeaderWithIteratorIS2_N7openpal7Bit16LEItEEEENS_8IINFieldENS_13QualifierCodeERKNS_14DNP3SerializerIT_EERKNS_11ICollectionINS1_ISC_EEEEPNS_21PrefixedWriteIteratorIT0_SC_EEEUlRKS3_E_E7OnValueESQ_:
.LFB3377:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rdi, %rbp
	pushq	%rbx
	.cfi_def_cfa_offset 24
	.cfi_offset 3, -24
	movq	%rsi, %rbx
	subq	$40, %rsp
	.cfi_def_cfa_offset 64
	movdqu	(%rsi), %xmm0
	movzwl	16(%rsi), %r8d
	movq	%fs:40, %rax
	movq	%rax, 24(%rsp)
	xorl	%eax, %eax
	movq	8(%rdi), %rax
	movaps	%xmm0, (%rsp)
	movl	32(%rax), %edx
	movzbl	40(%rax), %ecx
	cmpl	%ecx, %edx
	jnb	.L126
	movq	24(%rax), %rdi
	addl	$1, %edx
	movl	%edx, 32(%rax)
	movl	%r8d, %edx
	movq	(%rdi), %rax
	call	*48(%rax)
	movb	%al, 8(%rsp)
	testb	%al, %al
	je	.L118
	cmpb	$4, %al
	jne	.L117
	movq	24(%rbp), %rdi
	movl	$10, %esi
	call	_ZN8opendnp38IINField6SetBitENS_6IINBitE@PLT
.L117:
	movq	16(%rbp), %rbp
	testq	%rbp, %rbp
	je	.L115
	cmpb	$0, 30(%rbp)
	je	.L115
	movq	48(%rbp), %rdi
	movl	24(%rbp), %eax
	cmpl	%eax, (%rdi)
	jnb	.L127
.L115:
	movq	24(%rsp), %rax
	xorq	%fs:40, %rax
	jne	.L128
	addq	$40, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 24
	popq	%rbx
	.cfi_def_cfa_offset 16
	popq	%rbp
	.cfi_def_cfa_offset 8
	ret
	.p2align 4,,10
	.p2align 3
.L118:
	.cfi_restore_state
	movq	8(%rbp), %rax
	addl	$1, 36(%rax)
	jmp	.L117
	.p2align 4,,10
	.p2align 3
.L126:
	movb	$8, 8(%rsp)
	jmp	.L117
	.p2align 4,,10
	.p2align 3
.L127:
	movzwl	16(%rbx), %edx
	movq	8(%rdi), %rax
	movl	$2, %esi
	movw	%dx, (%rax)
	call	_ZN7openpal6WSlice7AdvanceEj@PLT
	movq	48(%rbp), %rsi
	movq	%rsp, %rdi
	call	*16(%rbp)
	addw	$1, 28(%rbp)
	jmp	.L115
.L128:
	call	__stack_chk_fail@PLT
	.cfi_endproc
.LFE3377:
	.size	_ZN8opendnp314FunctorVisitorINS_7IndexedINS_20AnalogOutputDouble64EEEZNS_22CommandResponseHandler27RespondToHeaderWithIteratorIS2_N7openpal7Bit16LEItEEEENS_8IINFieldENS_13QualifierCodeERKNS_14DNP3SerializerIT_EERKNS_11ICollectionINS1_ISC_EEEEPNS_21PrefixedWriteIteratorIT0_SC_EEEUlRKS3_E_E7OnValueESQ_, .-_ZN8opendnp314FunctorVisitorINS_7IndexedINS_20AnalogOutputDouble64EEEZNS_22CommandResponseHandler27RespondToHeaderWithIteratorIS2_N7openpal7Bit16LEItEEEENS_8IINFieldENS_13QualifierCodeERKNS_14DNP3SerializerIT_EERKNS_11ICollectionINS1_ISC_EEEEPNS_21PrefixedWriteIteratorIT0_SC_EEEUlRKS3_E_E7OnValueESQ_
	.section	.text._ZN8opendnp314FunctorVisitorINS_7IndexedINS_20AnalogOutputDouble64EEEZNS_22CommandResponseHandler27RespondToHeaderWithIteratorIS2_N7openpal11UInt8SimpleEEENS_8IINFieldENS_13QualifierCodeERKNS_14DNP3SerializerIT_EERKNS_11ICollectionINS1_ISB_EEEEPNS_21PrefixedWriteIteratorIT0_SB_EEEUlRKS3_E_E7OnValueESP_,"axG",@progbits,_ZN8opendnp314FunctorVisitorINS_7IndexedINS_20AnalogOutputDouble64EEEZNS_22CommandResponseHandler27RespondToHeaderWithIteratorIS2_N7openpal11UInt8SimpleEEENS_8IINFieldENS_13QualifierCodeERKNS_14DNP3SerializerIT_EERKNS_11ICollectionINS1_ISB_EEEEPNS_21PrefixedWriteIteratorIT0_SB_EEEUlRKS3_E_E7OnValueESP_,comdat
	.align 2
	.p2align 4
	.weak	_ZN8opendnp314FunctorVisitorINS_7IndexedINS_20AnalogOutputDouble64EEEZNS_22CommandResponseHandler27RespondToHeaderWithIteratorIS2_N7openpal11UInt8SimpleEEENS_8IINFieldENS_13QualifierCodeERKNS_14DNP3SerializerIT_EERKNS_11ICollectionINS1_ISB_EEEEPNS_21PrefixedWriteIteratorIT0_SB_EEEUlRKS3_E_E7OnValueESP_
	.type	_ZN8opendnp314FunctorVisitorINS_7IndexedINS_20AnalogOutputDouble64EEEZNS_22CommandResponseHandler27RespondToHeaderWithIteratorIS2_N7openpal11UInt8SimpleEEENS_8IINFieldENS_13QualifierCodeERKNS_14DNP3SerializerIT_EERKNS_11ICollectionINS1_ISB_EEEEPNS_21PrefixedWriteIteratorIT0_SB_EEEUlRKS3_E_E7OnValueESP_, @function
_ZN8opendnp314FunctorVisitorINS_7IndexedINS_20AnalogOutputDouble64EEEZNS_22CommandResponseHandler27RespondToHeaderWithIteratorIS2_N7openpal11UInt8SimpleEEENS_8IINFieldENS_13QualifierCodeERKNS_14DNP3SerializerIT_EERKNS_11ICollectionINS1_ISB_EEEEPNS_21PrefixedWriteIteratorIT0_SB_EEEUlRKS3_E_E7OnValueESP_:
.LFB3372:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rdi, %rbp
	pushq	%rbx
	.cfi_def_cfa_offset 24
	.cfi_offset 3, -24
	movq	%rsi, %rbx
	subq	$40, %rsp
	.cfi_def_cfa_offset 64
	movdqu	(%rsi), %xmm0
	movzwl	16(%rsi), %r8d
	movq	%fs:40, %rax
	movq	%rax, 24(%rsp)
	xorl	%eax, %eax
	movq	8(%rdi), %rax
	movaps	%xmm0, (%rsp)
	movl	32(%rax), %edx
	movzbl	40(%rax), %ecx
	cmpl	%ecx, %edx
	jnb	.L140
	movq	24(%rax), %rdi
	addl	$1, %edx
	movl	%edx, 32(%rax)
	movl	%r8d, %edx
	movq	(%rdi), %rax
	call	*48(%rax)
	movb	%al, 8(%rsp)
	testb	%al, %al
	je	.L132
	cmpb	$4, %al
	jne	.L131
	movq	24(%rbp), %rdi
	movl	$10, %esi
	call	_ZN8opendnp38IINField6SetBitENS_6IINBitE@PLT
.L131:
	movq	16(%rbp), %rbp
	testq	%rbp, %rbp
	je	.L129
	cmpb	$0, 29(%rbp)
	je	.L129
	movq	48(%rbp), %rdi
	movl	24(%rbp), %eax
	cmpl	%eax, (%rdi)
	jnb	.L141
.L129:
	movq	24(%rsp), %rax
	xorq	%fs:40, %rax
	jne	.L142
	addq	$40, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 24
	popq	%rbx
	.cfi_def_cfa_offset 16
	popq	%rbp
	.cfi_def_cfa_offset 8
	ret
	.p2align 4,,10
	.p2align 3
.L132:
	.cfi_restore_state
	movq	8(%rbp), %rax
	addl	$1, 36(%rax)
	jmp	.L131
	.p2align 4,,10
	.p2align 3
.L140:
	movb	$8, 8(%rsp)
	jmp	.L131
	.p2align 4,,10
	.p2align 3
.L141:
	movq	8(%rdi), %rax
	movzwl	16(%rbx), %edx
	movl	$1, %esi
	movb	%dl, (%rax)
	call	_ZN7openpal6WSlice7AdvanceEj@PLT
	movq	48(%rbp), %rsi
	movq	%rsp, %rdi
	call	*16(%rbp)
	addb	$1, 28(%rbp)
	jmp	.L129
.L142:
	call	__stack_chk_fail@PLT
	.cfi_endproc
.LFE3372:
	.size	_ZN8opendnp314FunctorVisitorINS_7IndexedINS_20AnalogOutputDouble64EEEZNS_22CommandResponseHandler27RespondToHeaderWithIteratorIS2_N7openpal11UInt8SimpleEEENS_8IINFieldENS_13QualifierCodeERKNS_14DNP3SerializerIT_EERKNS_11ICollectionINS1_ISB_EEEEPNS_21PrefixedWriteIteratorIT0_SB_EEEUlRKS3_E_E7OnValueESP_, .-_ZN8opendnp314FunctorVisitorINS_7IndexedINS_20AnalogOutputDouble64EEEZNS_22CommandResponseHandler27RespondToHeaderWithIteratorIS2_N7openpal11UInt8SimpleEEENS_8IINFieldENS_13QualifierCodeERKNS_14DNP3SerializerIT_EERKNS_11ICollectionINS1_ISB_EEEEPNS_21PrefixedWriteIteratorIT0_SB_EEEUlRKS3_E_E7OnValueESP_
	.text
	.align 2
	.p2align 4
	.globl	_ZN8opendnp322CommandResponseHandler9IsAllowedEjNS_14GroupVariationENS_13QualifierCodeE
	.type	_ZN8opendnp322CommandResponseHandler9IsAllowedEjNS_14GroupVariationENS_13QualifierCodeE, @function
_ZN8opendnp322CommandResponseHandler9IsAllowedEjNS_14GroupVariationENS_13QualifierCodeE:
.LFB2405:
	.cfi_startproc
	endbr64
	cmpb	$23, %cl
	je	.L148
	xorl	%eax, %eax
	cmpb	$40, %cl
	je	.L148
.L143:
	ret
	.p2align 4,,10
	.p2align 3
.L148:
	movl	$1, %eax
	cmpw	$3073, %dx
	je	.L143
	subw	$10497, %dx
	cmpw	$3, %dx
	setbe	%al
	ret
	.cfi_endproc
.LFE2405:
	.size	_ZN8opendnp322CommandResponseHandler9IsAllowedEjNS_14GroupVariationENS_13QualifierCodeE, .-_ZN8opendnp322CommandResponseHandler9IsAllowedEjNS_14GroupVariationENS_13QualifierCodeE
	.align 2
	.p2align 4
	.globl	_ZN8opendnp322CommandResponseHandlerC2EhPNS_14ICommandActionEPNS_12HeaderWriterE
	.type	_ZN8opendnp322CommandResponseHandlerC2EhPNS_14ICommandActionEPNS_12HeaderWriterE, @function
_ZN8opendnp322CommandResponseHandlerC2EhPNS_14ICommandActionEPNS_12HeaderWriterE:
.LFB2403:
	.cfi_startproc
	endbr64
	pushq	%r13
	.cfi_def_cfa_offset 16
	.cfi_offset 13, -16
	movq	%rdx, %r13
	pushq	%r12
	.cfi_def_cfa_offset 24
	.cfi_offset 12, -24
	movl	%esi, %r12d
	pushq	%rbp
	.cfi_def_cfa_offset 32
	.cfi_offset 6, -32
	movq	%rcx, %rbp
	pushq	%rbx
	.cfi_def_cfa_offset 40
	.cfi_offset 3, -40
	movq	%rdi, %rbx
	subq	$8, %rsp
	.cfi_def_cfa_offset 48
	call	_ZN8opendnp312IAPDUHandlerC2Ev@PLT
	movq	_ZTVN8opendnp322CommandResponseHandlerE@GOTPCREL(%rip), %rax
	movq	%r13, 24(%rbx)
	movb	%r12b, 40(%rbx)
	addq	$16, %rax
	movq	%rbp, 48(%rbx)
	movq	%rax, (%rbx)
	movq	$0, 32(%rbx)
	addq	$8, %rsp
	.cfi_def_cfa_offset 40
	popq	%rbx
	.cfi_def_cfa_offset 32
	popq	%rbp
	.cfi_def_cfa_offset 24
	popq	%r12
	.cfi_def_cfa_offset 16
	popq	%r13
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE2403:
	.size	_ZN8opendnp322CommandResponseHandlerC2EhPNS_14ICommandActionEPNS_12HeaderWriterE, .-_ZN8opendnp322CommandResponseHandlerC2EhPNS_14ICommandActionEPNS_12HeaderWriterE
	.globl	_ZN8opendnp322CommandResponseHandlerC1EhPNS_14ICommandActionEPNS_12HeaderWriterE
	.set	_ZN8opendnp322CommandResponseHandlerC1EhPNS_14ICommandActionEPNS_12HeaderWriterE,_ZN8opendnp322CommandResponseHandlerC2EhPNS_14ICommandActionEPNS_12HeaderWriterE
	.section	.text.unlikely,"ax",@progbits
	.align 2
.LCOLDB0:
	.text
.LHOTB0:
	.align 2
	.p2align 4
	.globl	_ZN8opendnp322CommandResponseHandler25ProcessIndexPrefixTwoByteERKNS_12HeaderRecordERKNS_11ICollectionINS_7IndexedINS_23ControlRelayOutputBlockEEEEE
	.type	_ZN8opendnp322CommandResponseHandler25ProcessIndexPrefixTwoByteERKNS_12HeaderRecordERKNS_11ICollectionINS_7IndexedINS_23ControlRelayOutputBlockEEEEE, @function
_ZN8opendnp322CommandResponseHandler25ProcessIndexPrefixTwoByteERKNS_12HeaderRecordERKNS_11ICollectionINS_7IndexedINS_23ControlRelayOutputBlockEEEEE:
.LFB2411:
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA2411
	endbr64
	pushq	%r12
	.cfi_def_cfa_offset 16
	.cfi_offset 12, -16
	movq	%rdx, %r12
	pushq	%rbp
	.cfi_def_cfa_offset 24
	.cfi_offset 6, -24
	pushq	%rbx
	.cfi_def_cfa_offset 32
	.cfi_offset 3, -32
	movq	%rdi, %rbx
	subq	$112, %rsp
	.cfi_def_cfa_offset 144
	movq	48(%rdi), %rbp
	movq	%fs:40, %rax
	movq	%rax, 104(%rsp)
	xorl	%eax, %eax
	testq	%rbp, %rbp
	je	.L155
	movl	$15, %ecx
	movl	$40, %edx
	movl	$268, %esi
	movq	%rbp, %rdi
.LEHB0:
	call	_ZN8opendnp312HeaderWriter22WriteHeaderWithReserveENS_16GroupVariationIDENS_13QualifierCodeEj@PLT
	testb	%al, %al
	jne	.L166
	pxor	%xmm0, %xmm0
	xorl	%ecx, %ecx
	leaq	80(%rsp), %rdi
	movb	$0, 78(%rsp)
	movl	$0, 48(%rsp)
	movl	$0, 72(%rsp)
	movw	%cx, 76(%rsp)
	movups	%xmm0, 56(%rsp)
	call	_ZN7openpal6WSliceC1Ev@PLT
.LEHE0:
	movq	$0, 96(%rsp)
.L157:
	xorl	%edx, %edx
	movq	%rbx, 24(%rsp)
	leaq	16(%rsp), %rsi
	movq	%r12, %rdi
	movq	_ZTVN8opendnp314FunctorVisitorINS_7IndexedINS_23ControlRelayOutputBlockEEEZNS_22CommandResponseHandler27RespondToHeaderWithIteratorIS2_N7openpal7Bit16LEItEEEENS_8IINFieldENS_13QualifierCodeERKNS_14DNP3SerializerIT_EERKNS_11ICollectionINS1_ISC_EEEEPNS_21PrefixedWriteIteratorIT0_SC_EEEUlRKS3_E_EE@GOTPCREL(%rip), %rax
	movw	%dx, 14(%rsp)
	addq	$16, %rax
	movq	%rax, 16(%rsp)
	leaq	48(%rsp), %rax
	movq	%rax, 32(%rsp)
	leaq	14(%rsp), %rax
	movq	%rax, 40(%rsp)
	movq	(%r12), %rax
.LEHB1:
	call	*8(%rax)
.LEHE1:
	cmpb	$0, 78(%rsp)
	movzbl	14(%rsp), %ecx
	movzbl	15(%rsp), %edx
	je	.L159
	movq	88(%rsp), %rax
	movzwl	76(%rsp), %esi
	movw	%si, (%rax)
.L159:
	xorl	%eax, %eax
	movb	%cl, %al
	movq	104(%rsp), %rcx
	xorq	%fs:40, %rcx
	movb	%dl, %ah
	jne	.L167
	addq	$112, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 32
	popq	%rbx
	.cfi_def_cfa_offset 24
	popq	%rbp
	.cfi_def_cfa_offset 16
	popq	%r12
	.cfi_def_cfa_offset 8
	ret
	.p2align 4,,10
	.p2align 3
.L166:
	.cfi_restore_state
	movq	_ZN8opendnp311Group12Var110ReadTargetERN7openpal6RSliceERNS_23ControlRelayOutputBlockE@GOTPCREL(%rip), %xmm0
	movq	0(%rbp), %rdi
	xorl	%esi, %esi
	movl	$11, 48(%rsp)
	movl	$13, 72(%rsp)
	movhps	_ZN8opendnp311Group12Var111WriteTargetERKNS_23ControlRelayOutputBlockERN7openpal6WSliceE@GOTPCREL(%rip), %xmm0
	movdqu	(%rdi), %xmm1
	movw	%si, 76(%rsp)
	movups	%xmm0, 56(%rsp)
	movl	(%rdi), %eax
	movq	%rdi, 96(%rsp)
	cmpl	$1, %eax
	movaps	%xmm1, 80(%rsp)
	seta	78(%rsp)
	jbe	.L157
	movl	$2, %esi
.LEHB2:
	call	_ZN7openpal6WSlice7AdvanceEj@PLT
	jmp	.L157
	.p2align 4,,10
	.p2align 3
.L155:
	xorl	%eax, %eax
	movq	%rdi, 56(%rsp)
	leaq	48(%rsp), %rsi
	movq	%rdx, %rdi
	movw	%ax, 16(%rsp)
	movq	_ZTVN8opendnp314FunctorVisitorINS_7IndexedINS_23ControlRelayOutputBlockEEEZNS_22CommandResponseHandler27RespondToHeaderWithIteratorIS2_N7openpal7Bit16LEItEEEENS_8IINFieldENS_13QualifierCodeERKNS_14DNP3SerializerIT_EERKNS_11ICollectionINS1_ISC_EEEEPNS_21PrefixedWriteIteratorIT0_SC_EEEUlRKS3_E_EE@GOTPCREL(%rip), %rax
	movq	$0, 64(%rsp)
	addq	$16, %rax
	movq	%rax, 48(%rsp)
	leaq	16(%rsp), %rax
	movq	%rax, 72(%rsp)
	movq	(%rdx), %rax
	call	*8(%rax)
.LEHE2:
	movzbl	16(%rsp), %ecx
	movzbl	17(%rsp), %edx
	jmp	.L159
.L167:
	call	__stack_chk_fail@PLT
.L163:
	endbr64
	movq	%rax, %rdi
	jmp	.L160
	.globl	__gxx_personality_v0
	.section	.gcc_except_table,"a",@progbits
.LLSDA2411:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE2411-.LLSDACSB2411
.LLSDACSB2411:
	.uleb128 .LEHB0-.LFB2411
	.uleb128 .LEHE0-.LEHB0
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB1-.LFB2411
	.uleb128 .LEHE1-.LEHB1
	.uleb128 .L163-.LFB2411
	.uleb128 0
	.uleb128 .LEHB2-.LFB2411
	.uleb128 .LEHE2-.LEHB2
	.uleb128 0
	.uleb128 0
.LLSDACSE2411:
	.text
	.cfi_endproc
	.section	.text.unlikely
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDAC2411
	.type	_ZN8opendnp322CommandResponseHandler25ProcessIndexPrefixTwoByteERKNS_12HeaderRecordERKNS_11ICollectionINS_7IndexedINS_23ControlRelayOutputBlockEEEEE.cold, @function
_ZN8opendnp322CommandResponseHandler25ProcessIndexPrefixTwoByteERKNS_12HeaderRecordERKNS_11ICollectionINS_7IndexedINS_23ControlRelayOutputBlockEEEEE.cold:
.LFSB2411:
.L160:
	.cfi_def_cfa_offset 144
	.cfi_offset 3, -32
	.cfi_offset 6, -24
	.cfi_offset 12, -16
	cmpb	$0, 78(%rsp)
	je	.L161
	movq	88(%rsp), %rax
	movzwl	76(%rsp), %edx
	movw	%dx, (%rax)
.L161:
.LEHB3:
	call	_Unwind_Resume@PLT
.LEHE3:
	.cfi_endproc
.LFE2411:
	.section	.gcc_except_table
.LLSDAC2411:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSEC2411-.LLSDACSBC2411
.LLSDACSBC2411:
	.uleb128 .LEHB3-.LCOLDB0
	.uleb128 .LEHE3-.LEHB3
	.uleb128 0
	.uleb128 0
.LLSDACSEC2411:
	.section	.text.unlikely
	.text
	.size	_ZN8opendnp322CommandResponseHandler25ProcessIndexPrefixTwoByteERKNS_12HeaderRecordERKNS_11ICollectionINS_7IndexedINS_23ControlRelayOutputBlockEEEEE, .-_ZN8opendnp322CommandResponseHandler25ProcessIndexPrefixTwoByteERKNS_12HeaderRecordERKNS_11ICollectionINS_7IndexedINS_23ControlRelayOutputBlockEEEEE
	.section	.text.unlikely
	.size	_ZN8opendnp322CommandResponseHandler25ProcessIndexPrefixTwoByteERKNS_12HeaderRecordERKNS_11ICollectionINS_7IndexedINS_23ControlRelayOutputBlockEEEEE.cold, .-_ZN8opendnp322CommandResponseHandler25ProcessIndexPrefixTwoByteERKNS_12HeaderRecordERKNS_11ICollectionINS_7IndexedINS_23ControlRelayOutputBlockEEEEE.cold
.LCOLDE0:
	.text
.LHOTE0:
	.section	.text.unlikely
	.align 2
.LCOLDB1:
	.text
.LHOTB1:
	.align 2
	.p2align 4
	.globl	_ZN8opendnp322CommandResponseHandler25ProcessIndexPrefixTwoByteERKNS_12HeaderRecordERKNS_11ICollectionINS_7IndexedINS_17AnalogOutputInt16EEEEE
	.type	_ZN8opendnp322CommandResponseHandler25ProcessIndexPrefixTwoByteERKNS_12HeaderRecordERKNS_11ICollectionINS_7IndexedINS_17AnalogOutputInt16EEEEE, @function
_ZN8opendnp322CommandResponseHandler25ProcessIndexPrefixTwoByteERKNS_12HeaderRecordERKNS_11ICollectionINS_7IndexedINS_17AnalogOutputInt16EEEEE:
.LFB2412:
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA2412
	endbr64
	pushq	%r12
	.cfi_def_cfa_offset 16
	.cfi_offset 12, -16
	movq	%rdx, %r12
	pushq	%rbp
	.cfi_def_cfa_offset 24
	.cfi_offset 6, -24
	pushq	%rbx
	.cfi_def_cfa_offset 32
	.cfi_offset 3, -32
	movq	%rdi, %rbx
	subq	$112, %rsp
	.cfi_def_cfa_offset 144
	movq	48(%rdi), %rbp
	movq	%fs:40, %rax
	movq	%rax, 104(%rsp)
	xorl	%eax, %eax
	testq	%rbp, %rbp
	je	.L169
	movl	$7, %ecx
	movl	$40, %edx
	movl	$553, %esi
	movq	%rbp, %rdi
.LEHB4:
	call	_ZN8opendnp312HeaderWriter22WriteHeaderWithReserveENS_16GroupVariationIDENS_13QualifierCodeEj@PLT
	testb	%al, %al
	jne	.L180
	pxor	%xmm0, %xmm0
	xorl	%ecx, %ecx
	leaq	80(%rsp), %rdi
	movb	$0, 78(%rsp)
	movl	$0, 48(%rsp)
	movl	$0, 72(%rsp)
	movw	%cx, 76(%rsp)
	movups	%xmm0, 56(%rsp)
	call	_ZN7openpal6WSliceC1Ev@PLT
.LEHE4:
	movq	$0, 96(%rsp)
.L171:
	xorl	%edx, %edx
	movq	%rbx, 24(%rsp)
	leaq	16(%rsp), %rsi
	movq	%r12, %rdi
	movq	_ZTVN8opendnp314FunctorVisitorINS_7IndexedINS_17AnalogOutputInt16EEEZNS_22CommandResponseHandler27RespondToHeaderWithIteratorIS2_N7openpal7Bit16LEItEEEENS_8IINFieldENS_13QualifierCodeERKNS_14DNP3SerializerIT_EERKNS_11ICollectionINS1_ISC_EEEEPNS_21PrefixedWriteIteratorIT0_SC_EEEUlRKS3_E_EE@GOTPCREL(%rip), %rax
	movw	%dx, 14(%rsp)
	addq	$16, %rax
	movq	%rax, 16(%rsp)
	leaq	48(%rsp), %rax
	movq	%rax, 32(%rsp)
	leaq	14(%rsp), %rax
	movq	%rax, 40(%rsp)
	movq	(%r12), %rax
.LEHB5:
	call	*8(%rax)
.LEHE5:
	cmpb	$0, 78(%rsp)
	movzbl	14(%rsp), %ecx
	movzbl	15(%rsp), %edx
	je	.L173
	movq	88(%rsp), %rax
	movzwl	76(%rsp), %esi
	movw	%si, (%rax)
.L173:
	xorl	%eax, %eax
	movb	%cl, %al
	movq	104(%rsp), %rcx
	xorq	%fs:40, %rcx
	movb	%dl, %ah
	jne	.L181
	addq	$112, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 32
	popq	%rbx
	.cfi_def_cfa_offset 24
	popq	%rbp
	.cfi_def_cfa_offset 16
	popq	%r12
	.cfi_def_cfa_offset 8
	ret
	.p2align 4,,10
	.p2align 3
.L180:
	.cfi_restore_state
	movq	_ZN8opendnp311Group41Var210ReadTargetERN7openpal6RSliceERNS_17AnalogOutputInt16E@GOTPCREL(%rip), %xmm0
	movq	0(%rbp), %rdi
	xorl	%esi, %esi
	movl	$3, 48(%rsp)
	movl	$5, 72(%rsp)
	movhps	_ZN8opendnp311Group41Var211WriteTargetERKNS_17AnalogOutputInt16ERN7openpal6WSliceE@GOTPCREL(%rip), %xmm0
	movdqu	(%rdi), %xmm1
	movw	%si, 76(%rsp)
	movups	%xmm0, 56(%rsp)
	movl	(%rdi), %eax
	movq	%rdi, 96(%rsp)
	cmpl	$1, %eax
	movaps	%xmm1, 80(%rsp)
	seta	78(%rsp)
	jbe	.L171
	movl	$2, %esi
.LEHB6:
	call	_ZN7openpal6WSlice7AdvanceEj@PLT
	jmp	.L171
	.p2align 4,,10
	.p2align 3
.L169:
	xorl	%eax, %eax
	movq	%rdi, 56(%rsp)
	leaq	48(%rsp), %rsi
	movq	%rdx, %rdi
	movw	%ax, 16(%rsp)
	movq	_ZTVN8opendnp314FunctorVisitorINS_7IndexedINS_17AnalogOutputInt16EEEZNS_22CommandResponseHandler27RespondToHeaderWithIteratorIS2_N7openpal7Bit16LEItEEEENS_8IINFieldENS_13QualifierCodeERKNS_14DNP3SerializerIT_EERKNS_11ICollectionINS1_ISC_EEEEPNS_21PrefixedWriteIteratorIT0_SC_EEEUlRKS3_E_EE@GOTPCREL(%rip), %rax
	movq	$0, 64(%rsp)
	addq	$16, %rax
	movq	%rax, 48(%rsp)
	leaq	16(%rsp), %rax
	movq	%rax, 72(%rsp)
	movq	(%rdx), %rax
	call	*8(%rax)
.LEHE6:
	movzbl	16(%rsp), %ecx
	movzbl	17(%rsp), %edx
	jmp	.L173
.L181:
	call	__stack_chk_fail@PLT
.L177:
	endbr64
	movq	%rax, %rdi
	jmp	.L174
	.section	.gcc_except_table
.LLSDA2412:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE2412-.LLSDACSB2412
.LLSDACSB2412:
	.uleb128 .LEHB4-.LFB2412
	.uleb128 .LEHE4-.LEHB4
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB5-.LFB2412
	.uleb128 .LEHE5-.LEHB5
	.uleb128 .L177-.LFB2412
	.uleb128 0
	.uleb128 .LEHB6-.LFB2412
	.uleb128 .LEHE6-.LEHB6
	.uleb128 0
	.uleb128 0
.LLSDACSE2412:
	.text
	.cfi_endproc
	.section	.text.unlikely
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDAC2412
	.type	_ZN8opendnp322CommandResponseHandler25ProcessIndexPrefixTwoByteERKNS_12HeaderRecordERKNS_11ICollectionINS_7IndexedINS_17AnalogOutputInt16EEEEE.cold, @function
_ZN8opendnp322CommandResponseHandler25ProcessIndexPrefixTwoByteERKNS_12HeaderRecordERKNS_11ICollectionINS_7IndexedINS_17AnalogOutputInt16EEEEE.cold:
.LFSB2412:
.L174:
	.cfi_def_cfa_offset 144
	.cfi_offset 3, -32
	.cfi_offset 6, -24
	.cfi_offset 12, -16
	cmpb	$0, 78(%rsp)
	je	.L175
	movq	88(%rsp), %rax
	movzwl	76(%rsp), %edx
	movw	%dx, (%rax)
.L175:
.LEHB7:
	call	_Unwind_Resume@PLT
.LEHE7:
	.cfi_endproc
.LFE2412:
	.section	.gcc_except_table
.LLSDAC2412:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSEC2412-.LLSDACSBC2412
.LLSDACSBC2412:
	.uleb128 .LEHB7-.LCOLDB1
	.uleb128 .LEHE7-.LEHB7
	.uleb128 0
	.uleb128 0
.LLSDACSEC2412:
	.section	.text.unlikely
	.text
	.size	_ZN8opendnp322CommandResponseHandler25ProcessIndexPrefixTwoByteERKNS_12HeaderRecordERKNS_11ICollectionINS_7IndexedINS_17AnalogOutputInt16EEEEE, .-_ZN8opendnp322CommandResponseHandler25ProcessIndexPrefixTwoByteERKNS_12HeaderRecordERKNS_11ICollectionINS_7IndexedINS_17AnalogOutputInt16EEEEE
	.section	.text.unlikely
	.size	_ZN8opendnp322CommandResponseHandler25ProcessIndexPrefixTwoByteERKNS_12HeaderRecordERKNS_11ICollectionINS_7IndexedINS_17AnalogOutputInt16EEEEE.cold, .-_ZN8opendnp322CommandResponseHandler25ProcessIndexPrefixTwoByteERKNS_12HeaderRecordERKNS_11ICollectionINS_7IndexedINS_17AnalogOutputInt16EEEEE.cold
.LCOLDE1:
	.text
.LHOTE1:
	.section	.text.unlikely
	.align 2
.LCOLDB2:
	.text
.LHOTB2:
	.align 2
	.p2align 4
	.globl	_ZN8opendnp322CommandResponseHandler25ProcessIndexPrefixTwoByteERKNS_12HeaderRecordERKNS_11ICollectionINS_7IndexedINS_17AnalogOutputInt32EEEEE
	.type	_ZN8opendnp322CommandResponseHandler25ProcessIndexPrefixTwoByteERKNS_12HeaderRecordERKNS_11ICollectionINS_7IndexedINS_17AnalogOutputInt32EEEEE, @function
_ZN8opendnp322CommandResponseHandler25ProcessIndexPrefixTwoByteERKNS_12HeaderRecordERKNS_11ICollectionINS_7IndexedINS_17AnalogOutputInt32EEEEE:
.LFB2413:
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA2413
	endbr64
	pushq	%r12
	.cfi_def_cfa_offset 16
	.cfi_offset 12, -16
	movq	%rdx, %r12
	pushq	%rbp
	.cfi_def_cfa_offset 24
	.cfi_offset 6, -24
	pushq	%rbx
	.cfi_def_cfa_offset 32
	.cfi_offset 3, -32
	movq	%rdi, %rbx
	subq	$112, %rsp
	.cfi_def_cfa_offset 144
	movq	48(%rdi), %rbp
	movq	%fs:40, %rax
	movq	%rax, 104(%rsp)
	xorl	%eax, %eax
	testq	%rbp, %rbp
	je	.L183
	movl	$9, %ecx
	movl	$40, %edx
	movl	$297, %esi
	movq	%rbp, %rdi
.LEHB8:
	call	_ZN8opendnp312HeaderWriter22WriteHeaderWithReserveENS_16GroupVariationIDENS_13QualifierCodeEj@PLT
	testb	%al, %al
	jne	.L194
	pxor	%xmm0, %xmm0
	xorl	%ecx, %ecx
	leaq	80(%rsp), %rdi
	movb	$0, 78(%rsp)
	movl	$0, 48(%rsp)
	movl	$0, 72(%rsp)
	movw	%cx, 76(%rsp)
	movups	%xmm0, 56(%rsp)
	call	_ZN7openpal6WSliceC1Ev@PLT
.LEHE8:
	movq	$0, 96(%rsp)
.L185:
	xorl	%edx, %edx
	movq	%rbx, 24(%rsp)
	leaq	16(%rsp), %rsi
	movq	%r12, %rdi
	movq	_ZTVN8opendnp314FunctorVisitorINS_7IndexedINS_17AnalogOutputInt32EEEZNS_22CommandResponseHandler27RespondToHeaderWithIteratorIS2_N7openpal7Bit16LEItEEEENS_8IINFieldENS_13QualifierCodeERKNS_14DNP3SerializerIT_EERKNS_11ICollectionINS1_ISC_EEEEPNS_21PrefixedWriteIteratorIT0_SC_EEEUlRKS3_E_EE@GOTPCREL(%rip), %rax
	movw	%dx, 14(%rsp)
	addq	$16, %rax
	movq	%rax, 16(%rsp)
	leaq	48(%rsp), %rax
	movq	%rax, 32(%rsp)
	leaq	14(%rsp), %rax
	movq	%rax, 40(%rsp)
	movq	(%r12), %rax
.LEHB9:
	call	*8(%rax)
.LEHE9:
	cmpb	$0, 78(%rsp)
	movzbl	14(%rsp), %ecx
	movzbl	15(%rsp), %edx
	je	.L187
	movq	88(%rsp), %rax
	movzwl	76(%rsp), %esi
	movw	%si, (%rax)
.L187:
	xorl	%eax, %eax
	movb	%cl, %al
	movq	104(%rsp), %rcx
	xorq	%fs:40, %rcx
	movb	%dl, %ah
	jne	.L195
	addq	$112, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 32
	popq	%rbx
	.cfi_def_cfa_offset 24
	popq	%rbp
	.cfi_def_cfa_offset 16
	popq	%r12
	.cfi_def_cfa_offset 8
	ret
	.p2align 4,,10
	.p2align 3
.L194:
	.cfi_restore_state
	movq	_ZN8opendnp311Group41Var110ReadTargetERN7openpal6RSliceERNS_17AnalogOutputInt32E@GOTPCREL(%rip), %xmm0
	movq	0(%rbp), %rdi
	xorl	%esi, %esi
	movl	$5, 48(%rsp)
	movl	$7, 72(%rsp)
	movhps	_ZN8opendnp311Group41Var111WriteTargetERKNS_17AnalogOutputInt32ERN7openpal6WSliceE@GOTPCREL(%rip), %xmm0
	movdqu	(%rdi), %xmm1
	movw	%si, 76(%rsp)
	movups	%xmm0, 56(%rsp)
	movl	(%rdi), %eax
	movq	%rdi, 96(%rsp)
	cmpl	$1, %eax
	movaps	%xmm1, 80(%rsp)
	seta	78(%rsp)
	jbe	.L185
	movl	$2, %esi
.LEHB10:
	call	_ZN7openpal6WSlice7AdvanceEj@PLT
	jmp	.L185
	.p2align 4,,10
	.p2align 3
.L183:
	xorl	%eax, %eax
	movq	%rdi, 56(%rsp)
	leaq	48(%rsp), %rsi
	movq	%rdx, %rdi
	movw	%ax, 16(%rsp)
	movq	_ZTVN8opendnp314FunctorVisitorINS_7IndexedINS_17AnalogOutputInt32EEEZNS_22CommandResponseHandler27RespondToHeaderWithIteratorIS2_N7openpal7Bit16LEItEEEENS_8IINFieldENS_13QualifierCodeERKNS_14DNP3SerializerIT_EERKNS_11ICollectionINS1_ISC_EEEEPNS_21PrefixedWriteIteratorIT0_SC_EEEUlRKS3_E_EE@GOTPCREL(%rip), %rax
	movq	$0, 64(%rsp)
	addq	$16, %rax
	movq	%rax, 48(%rsp)
	leaq	16(%rsp), %rax
	movq	%rax, 72(%rsp)
	movq	(%rdx), %rax
	call	*8(%rax)
.LEHE10:
	movzbl	16(%rsp), %ecx
	movzbl	17(%rsp), %edx
	jmp	.L187
.L195:
	call	__stack_chk_fail@PLT
.L191:
	endbr64
	movq	%rax, %rdi
	jmp	.L188
	.section	.gcc_except_table
.LLSDA2413:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE2413-.LLSDACSB2413
.LLSDACSB2413:
	.uleb128 .LEHB8-.LFB2413
	.uleb128 .LEHE8-.LEHB8
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB9-.LFB2413
	.uleb128 .LEHE9-.LEHB9
	.uleb128 .L191-.LFB2413
	.uleb128 0
	.uleb128 .LEHB10-.LFB2413
	.uleb128 .LEHE10-.LEHB10
	.uleb128 0
	.uleb128 0
.LLSDACSE2413:
	.text
	.cfi_endproc
	.section	.text.unlikely
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDAC2413
	.type	_ZN8opendnp322CommandResponseHandler25ProcessIndexPrefixTwoByteERKNS_12HeaderRecordERKNS_11ICollectionINS_7IndexedINS_17AnalogOutputInt32EEEEE.cold, @function
_ZN8opendnp322CommandResponseHandler25ProcessIndexPrefixTwoByteERKNS_12HeaderRecordERKNS_11ICollectionINS_7IndexedINS_17AnalogOutputInt32EEEEE.cold:
.LFSB2413:
.L188:
	.cfi_def_cfa_offset 144
	.cfi_offset 3, -32
	.cfi_offset 6, -24
	.cfi_offset 12, -16
	cmpb	$0, 78(%rsp)
	je	.L189
	movq	88(%rsp), %rax
	movzwl	76(%rsp), %edx
	movw	%dx, (%rax)
.L189:
.LEHB11:
	call	_Unwind_Resume@PLT
.LEHE11:
	.cfi_endproc
.LFE2413:
	.section	.gcc_except_table
.LLSDAC2413:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSEC2413-.LLSDACSBC2413
.LLSDACSBC2413:
	.uleb128 .LEHB11-.LCOLDB2
	.uleb128 .LEHE11-.LEHB11
	.uleb128 0
	.uleb128 0
.LLSDACSEC2413:
	.section	.text.unlikely
	.text
	.size	_ZN8opendnp322CommandResponseHandler25ProcessIndexPrefixTwoByteERKNS_12HeaderRecordERKNS_11ICollectionINS_7IndexedINS_17AnalogOutputInt32EEEEE, .-_ZN8opendnp322CommandResponseHandler25ProcessIndexPrefixTwoByteERKNS_12HeaderRecordERKNS_11ICollectionINS_7IndexedINS_17AnalogOutputInt32EEEEE
	.section	.text.unlikely
	.size	_ZN8opendnp322CommandResponseHandler25ProcessIndexPrefixTwoByteERKNS_12HeaderRecordERKNS_11ICollectionINS_7IndexedINS_17AnalogOutputInt32EEEEE.cold, .-_ZN8opendnp322CommandResponseHandler25ProcessIndexPrefixTwoByteERKNS_12HeaderRecordERKNS_11ICollectionINS_7IndexedINS_17AnalogOutputInt32EEEEE.cold
.LCOLDE2:
	.text
.LHOTE2:
	.section	.text.unlikely
	.align 2
.LCOLDB3:
	.text
.LHOTB3:
	.align 2
	.p2align 4
	.globl	_ZN8opendnp322CommandResponseHandler25ProcessIndexPrefixTwoByteERKNS_12HeaderRecordERKNS_11ICollectionINS_7IndexedINS_19AnalogOutputFloat32EEEEE
	.type	_ZN8opendnp322CommandResponseHandler25ProcessIndexPrefixTwoByteERKNS_12HeaderRecordERKNS_11ICollectionINS_7IndexedINS_19AnalogOutputFloat32EEEEE, @function
_ZN8opendnp322CommandResponseHandler25ProcessIndexPrefixTwoByteERKNS_12HeaderRecordERKNS_11ICollectionINS_7IndexedINS_19AnalogOutputFloat32EEEEE:
.LFB2414:
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA2414
	endbr64
	pushq	%r12
	.cfi_def_cfa_offset 16
	.cfi_offset 12, -16
	movq	%rdx, %r12
	pushq	%rbp
	.cfi_def_cfa_offset 24
	.cfi_offset 6, -24
	pushq	%rbx
	.cfi_def_cfa_offset 32
	.cfi_offset 3, -32
	movq	%rdi, %rbx
	subq	$112, %rsp
	.cfi_def_cfa_offset 144
	movq	48(%rdi), %rbp
	movq	%fs:40, %rax
	movq	%rax, 104(%rsp)
	xorl	%eax, %eax
	testq	%rbp, %rbp
	je	.L197
	movl	$9, %ecx
	movl	$40, %edx
	movl	$809, %esi
	movq	%rbp, %rdi
.LEHB12:
	call	_ZN8opendnp312HeaderWriter22WriteHeaderWithReserveENS_16GroupVariationIDENS_13QualifierCodeEj@PLT
	testb	%al, %al
	jne	.L208
	pxor	%xmm0, %xmm0
	xorl	%ecx, %ecx
	leaq	80(%rsp), %rdi
	movb	$0, 78(%rsp)
	movl	$0, 48(%rsp)
	movl	$0, 72(%rsp)
	movw	%cx, 76(%rsp)
	movups	%xmm0, 56(%rsp)
	call	_ZN7openpal6WSliceC1Ev@PLT
.LEHE12:
	movq	$0, 96(%rsp)
.L199:
	xorl	%edx, %edx
	movq	%rbx, 24(%rsp)
	leaq	16(%rsp), %rsi
	movq	%r12, %rdi
	movq	_ZTVN8opendnp314FunctorVisitorINS_7IndexedINS_19AnalogOutputFloat32EEEZNS_22CommandResponseHandler27RespondToHeaderWithIteratorIS2_N7openpal7Bit16LEItEEEENS_8IINFieldENS_13QualifierCodeERKNS_14DNP3SerializerIT_EERKNS_11ICollectionINS1_ISC_EEEEPNS_21PrefixedWriteIteratorIT0_SC_EEEUlRKS3_E_EE@GOTPCREL(%rip), %rax
	movw	%dx, 14(%rsp)
	addq	$16, %rax
	movq	%rax, 16(%rsp)
	leaq	48(%rsp), %rax
	movq	%rax, 32(%rsp)
	leaq	14(%rsp), %rax
	movq	%rax, 40(%rsp)
	movq	(%r12), %rax
.LEHB13:
	call	*8(%rax)
.LEHE13:
	cmpb	$0, 78(%rsp)
	movzbl	14(%rsp), %ecx
	movzbl	15(%rsp), %edx
	je	.L201
	movq	88(%rsp), %rax
	movzwl	76(%rsp), %esi
	movw	%si, (%rax)
.L201:
	xorl	%eax, %eax
	movb	%cl, %al
	movq	104(%rsp), %rcx
	xorq	%fs:40, %rcx
	movb	%dl, %ah
	jne	.L209
	addq	$112, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 32
	popq	%rbx
	.cfi_def_cfa_offset 24
	popq	%rbp
	.cfi_def_cfa_offset 16
	popq	%r12
	.cfi_def_cfa_offset 8
	ret
	.p2align 4,,10
	.p2align 3
.L208:
	.cfi_restore_state
	movq	_ZN8opendnp311Group41Var310ReadTargetERN7openpal6RSliceERNS_19AnalogOutputFloat32E@GOTPCREL(%rip), %xmm0
	movq	0(%rbp), %rdi
	xorl	%esi, %esi
	movl	$5, 48(%rsp)
	movl	$7, 72(%rsp)
	movhps	_ZN8opendnp311Group41Var311WriteTargetERKNS_19AnalogOutputFloat32ERN7openpal6WSliceE@GOTPCREL(%rip), %xmm0
	movdqu	(%rdi), %xmm1
	movw	%si, 76(%rsp)
	movups	%xmm0, 56(%rsp)
	movl	(%rdi), %eax
	movq	%rdi, 96(%rsp)
	cmpl	$1, %eax
	movaps	%xmm1, 80(%rsp)
	seta	78(%rsp)
	jbe	.L199
	movl	$2, %esi
.LEHB14:
	call	_ZN7openpal6WSlice7AdvanceEj@PLT
	jmp	.L199
	.p2align 4,,10
	.p2align 3
.L197:
	xorl	%eax, %eax
	movq	%rdi, 56(%rsp)
	leaq	48(%rsp), %rsi
	movq	%rdx, %rdi
	movw	%ax, 16(%rsp)
	movq	_ZTVN8opendnp314FunctorVisitorINS_7IndexedINS_19AnalogOutputFloat32EEEZNS_22CommandResponseHandler27RespondToHeaderWithIteratorIS2_N7openpal7Bit16LEItEEEENS_8IINFieldENS_13QualifierCodeERKNS_14DNP3SerializerIT_EERKNS_11ICollectionINS1_ISC_EEEEPNS_21PrefixedWriteIteratorIT0_SC_EEEUlRKS3_E_EE@GOTPCREL(%rip), %rax
	movq	$0, 64(%rsp)
	addq	$16, %rax
	movq	%rax, 48(%rsp)
	leaq	16(%rsp), %rax
	movq	%rax, 72(%rsp)
	movq	(%rdx), %rax
	call	*8(%rax)
.LEHE14:
	movzbl	16(%rsp), %ecx
	movzbl	17(%rsp), %edx
	jmp	.L201
.L209:
	call	__stack_chk_fail@PLT
.L205:
	endbr64
	movq	%rax, %rdi
	jmp	.L202
	.section	.gcc_except_table
.LLSDA2414:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE2414-.LLSDACSB2414
.LLSDACSB2414:
	.uleb128 .LEHB12-.LFB2414
	.uleb128 .LEHE12-.LEHB12
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB13-.LFB2414
	.uleb128 .LEHE13-.LEHB13
	.uleb128 .L205-.LFB2414
	.uleb128 0
	.uleb128 .LEHB14-.LFB2414
	.uleb128 .LEHE14-.LEHB14
	.uleb128 0
	.uleb128 0
.LLSDACSE2414:
	.text
	.cfi_endproc
	.section	.text.unlikely
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDAC2414
	.type	_ZN8opendnp322CommandResponseHandler25ProcessIndexPrefixTwoByteERKNS_12HeaderRecordERKNS_11ICollectionINS_7IndexedINS_19AnalogOutputFloat32EEEEE.cold, @function
_ZN8opendnp322CommandResponseHandler25ProcessIndexPrefixTwoByteERKNS_12HeaderRecordERKNS_11ICollectionINS_7IndexedINS_19AnalogOutputFloat32EEEEE.cold:
.LFSB2414:
.L202:
	.cfi_def_cfa_offset 144
	.cfi_offset 3, -32
	.cfi_offset 6, -24
	.cfi_offset 12, -16
	cmpb	$0, 78(%rsp)
	je	.L203
	movq	88(%rsp), %rax
	movzwl	76(%rsp), %edx
	movw	%dx, (%rax)
.L203:
.LEHB15:
	call	_Unwind_Resume@PLT
.LEHE15:
	.cfi_endproc
.LFE2414:
	.section	.gcc_except_table
.LLSDAC2414:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSEC2414-.LLSDACSBC2414
.LLSDACSBC2414:
	.uleb128 .LEHB15-.LCOLDB3
	.uleb128 .LEHE15-.LEHB15
	.uleb128 0
	.uleb128 0
.LLSDACSEC2414:
	.section	.text.unlikely
	.text
	.size	_ZN8opendnp322CommandResponseHandler25ProcessIndexPrefixTwoByteERKNS_12HeaderRecordERKNS_11ICollectionINS_7IndexedINS_19AnalogOutputFloat32EEEEE, .-_ZN8opendnp322CommandResponseHandler25ProcessIndexPrefixTwoByteERKNS_12HeaderRecordERKNS_11ICollectionINS_7IndexedINS_19AnalogOutputFloat32EEEEE
	.section	.text.unlikely
	.size	_ZN8opendnp322CommandResponseHandler25ProcessIndexPrefixTwoByteERKNS_12HeaderRecordERKNS_11ICollectionINS_7IndexedINS_19AnalogOutputFloat32EEEEE.cold, .-_ZN8opendnp322CommandResponseHandler25ProcessIndexPrefixTwoByteERKNS_12HeaderRecordERKNS_11ICollectionINS_7IndexedINS_19AnalogOutputFloat32EEEEE.cold
.LCOLDE3:
	.text
.LHOTE3:
	.section	.text.unlikely
	.align 2
.LCOLDB4:
	.text
.LHOTB4:
	.align 2
	.p2align 4
	.globl	_ZN8opendnp322CommandResponseHandler25ProcessIndexPrefixTwoByteERKNS_12HeaderRecordERKNS_11ICollectionINS_7IndexedINS_20AnalogOutputDouble64EEEEE
	.type	_ZN8opendnp322CommandResponseHandler25ProcessIndexPrefixTwoByteERKNS_12HeaderRecordERKNS_11ICollectionINS_7IndexedINS_20AnalogOutputDouble64EEEEE, @function
_ZN8opendnp322CommandResponseHandler25ProcessIndexPrefixTwoByteERKNS_12HeaderRecordERKNS_11ICollectionINS_7IndexedINS_20AnalogOutputDouble64EEEEE:
.LFB2415:
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA2415
	endbr64
	pushq	%r12
	.cfi_def_cfa_offset 16
	.cfi_offset 12, -16
	movq	%rdx, %r12
	pushq	%rbp
	.cfi_def_cfa_offset 24
	.cfi_offset 6, -24
	pushq	%rbx
	.cfi_def_cfa_offset 32
	.cfi_offset 3, -32
	movq	%rdi, %rbx
	subq	$112, %rsp
	.cfi_def_cfa_offset 144
	movq	48(%rdi), %rbp
	movq	%fs:40, %rax
	movq	%rax, 104(%rsp)
	xorl	%eax, %eax
	testq	%rbp, %rbp
	je	.L211
	movl	$13, %ecx
	movl	$40, %edx
	movl	$1065, %esi
	movq	%rbp, %rdi
.LEHB16:
	call	_ZN8opendnp312HeaderWriter22WriteHeaderWithReserveENS_16GroupVariationIDENS_13QualifierCodeEj@PLT
	testb	%al, %al
	jne	.L222
	pxor	%xmm0, %xmm0
	xorl	%ecx, %ecx
	leaq	80(%rsp), %rdi
	movb	$0, 78(%rsp)
	movl	$0, 48(%rsp)
	movl	$0, 72(%rsp)
	movw	%cx, 76(%rsp)
	movups	%xmm0, 56(%rsp)
	call	_ZN7openpal6WSliceC1Ev@PLT
.LEHE16:
	movq	$0, 96(%rsp)
.L213:
	xorl	%edx, %edx
	movq	%rbx, 24(%rsp)
	leaq	16(%rsp), %rsi
	movq	%r12, %rdi
	movq	_ZTVN8opendnp314FunctorVisitorINS_7IndexedINS_20AnalogOutputDouble64EEEZNS_22CommandResponseHandler27RespondToHeaderWithIteratorIS2_N7openpal7Bit16LEItEEEENS_8IINFieldENS_13QualifierCodeERKNS_14DNP3SerializerIT_EERKNS_11ICollectionINS1_ISC_EEEEPNS_21PrefixedWriteIteratorIT0_SC_EEEUlRKS3_E_EE@GOTPCREL(%rip), %rax
	movw	%dx, 14(%rsp)
	addq	$16, %rax
	movq	%rax, 16(%rsp)
	leaq	48(%rsp), %rax
	movq	%rax, 32(%rsp)
	leaq	14(%rsp), %rax
	movq	%rax, 40(%rsp)
	movq	(%r12), %rax
.LEHB17:
	call	*8(%rax)
.LEHE17:
	cmpb	$0, 78(%rsp)
	movzbl	14(%rsp), %ecx
	movzbl	15(%rsp), %edx
	je	.L215
	movq	88(%rsp), %rax
	movzwl	76(%rsp), %esi
	movw	%si, (%rax)
.L215:
	xorl	%eax, %eax
	movb	%cl, %al
	movq	104(%rsp), %rcx
	xorq	%fs:40, %rcx
	movb	%dl, %ah
	jne	.L223
	addq	$112, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 32
	popq	%rbx
	.cfi_def_cfa_offset 24
	popq	%rbp
	.cfi_def_cfa_offset 16
	popq	%r12
	.cfi_def_cfa_offset 8
	ret
	.p2align 4,,10
	.p2align 3
.L222:
	.cfi_restore_state
	movq	_ZN8opendnp311Group41Var410ReadTargetERN7openpal6RSliceERNS_20AnalogOutputDouble64E@GOTPCREL(%rip), %xmm0
	movq	0(%rbp), %rdi
	xorl	%esi, %esi
	movl	$9, 48(%rsp)
	movl	$11, 72(%rsp)
	movhps	_ZN8opendnp311Group41Var411WriteTargetERKNS_20AnalogOutputDouble64ERN7openpal6WSliceE@GOTPCREL(%rip), %xmm0
	movdqu	(%rdi), %xmm1
	movw	%si, 76(%rsp)
	movups	%xmm0, 56(%rsp)
	movl	(%rdi), %eax
	movq	%rdi, 96(%rsp)
	cmpl	$1, %eax
	movaps	%xmm1, 80(%rsp)
	seta	78(%rsp)
	jbe	.L213
	movl	$2, %esi
.LEHB18:
	call	_ZN7openpal6WSlice7AdvanceEj@PLT
	jmp	.L213
	.p2align 4,,10
	.p2align 3
.L211:
	xorl	%eax, %eax
	movq	%rdi, 56(%rsp)
	leaq	48(%rsp), %rsi
	movq	%rdx, %rdi
	movw	%ax, 16(%rsp)
	movq	_ZTVN8opendnp314FunctorVisitorINS_7IndexedINS_20AnalogOutputDouble64EEEZNS_22CommandResponseHandler27RespondToHeaderWithIteratorIS2_N7openpal7Bit16LEItEEEENS_8IINFieldENS_13QualifierCodeERKNS_14DNP3SerializerIT_EERKNS_11ICollectionINS1_ISC_EEEEPNS_21PrefixedWriteIteratorIT0_SC_EEEUlRKS3_E_EE@GOTPCREL(%rip), %rax
	movq	$0, 64(%rsp)
	addq	$16, %rax
	movq	%rax, 48(%rsp)
	leaq	16(%rsp), %rax
	movq	%rax, 72(%rsp)
	movq	(%rdx), %rax
	call	*8(%rax)
.LEHE18:
	movzbl	16(%rsp), %ecx
	movzbl	17(%rsp), %edx
	jmp	.L215
.L223:
	call	__stack_chk_fail@PLT
.L219:
	endbr64
	movq	%rax, %rdi
	jmp	.L216
	.section	.gcc_except_table
.LLSDA2415:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE2415-.LLSDACSB2415
.LLSDACSB2415:
	.uleb128 .LEHB16-.LFB2415
	.uleb128 .LEHE16-.LEHB16
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB17-.LFB2415
	.uleb128 .LEHE17-.LEHB17
	.uleb128 .L219-.LFB2415
	.uleb128 0
	.uleb128 .LEHB18-.LFB2415
	.uleb128 .LEHE18-.LEHB18
	.uleb128 0
	.uleb128 0
.LLSDACSE2415:
	.text
	.cfi_endproc
	.section	.text.unlikely
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDAC2415
	.type	_ZN8opendnp322CommandResponseHandler25ProcessIndexPrefixTwoByteERKNS_12HeaderRecordERKNS_11ICollectionINS_7IndexedINS_20AnalogOutputDouble64EEEEE.cold, @function
_ZN8opendnp322CommandResponseHandler25ProcessIndexPrefixTwoByteERKNS_12HeaderRecordERKNS_11ICollectionINS_7IndexedINS_20AnalogOutputDouble64EEEEE.cold:
.LFSB2415:
.L216:
	.cfi_def_cfa_offset 144
	.cfi_offset 3, -32
	.cfi_offset 6, -24
	.cfi_offset 12, -16
	cmpb	$0, 78(%rsp)
	je	.L217
	movq	88(%rsp), %rax
	movzwl	76(%rsp), %edx
	movw	%dx, (%rax)
.L217:
.LEHB19:
	call	_Unwind_Resume@PLT
.LEHE19:
	.cfi_endproc
.LFE2415:
	.section	.gcc_except_table
.LLSDAC2415:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSEC2415-.LLSDACSBC2415
.LLSDACSBC2415:
	.uleb128 .LEHB19-.LCOLDB4
	.uleb128 .LEHE19-.LEHB19
	.uleb128 0
	.uleb128 0
.LLSDACSEC2415:
	.section	.text.unlikely
	.text
	.size	_ZN8opendnp322CommandResponseHandler25ProcessIndexPrefixTwoByteERKNS_12HeaderRecordERKNS_11ICollectionINS_7IndexedINS_20AnalogOutputDouble64EEEEE, .-_ZN8opendnp322CommandResponseHandler25ProcessIndexPrefixTwoByteERKNS_12HeaderRecordERKNS_11ICollectionINS_7IndexedINS_20AnalogOutputDouble64EEEEE
	.section	.text.unlikely
	.size	_ZN8opendnp322CommandResponseHandler25ProcessIndexPrefixTwoByteERKNS_12HeaderRecordERKNS_11ICollectionINS_7IndexedINS_20AnalogOutputDouble64EEEEE.cold, .-_ZN8opendnp322CommandResponseHandler25ProcessIndexPrefixTwoByteERKNS_12HeaderRecordERKNS_11ICollectionINS_7IndexedINS_20AnalogOutputDouble64EEEEE.cold
.LCOLDE4:
	.text
.LHOTE4:
	.section	.text.unlikely
	.align 2
.LCOLDB5:
	.text
.LHOTB5:
	.align 2
	.p2align 4
	.globl	_ZN8opendnp322CommandResponseHandler25ProcessIndexPrefixOneByteERKNS_12HeaderRecordERKNS_11ICollectionINS_7IndexedINS_23ControlRelayOutputBlockEEEEE
	.type	_ZN8opendnp322CommandResponseHandler25ProcessIndexPrefixOneByteERKNS_12HeaderRecordERKNS_11ICollectionINS_7IndexedINS_23ControlRelayOutputBlockEEEEE, @function
_ZN8opendnp322CommandResponseHandler25ProcessIndexPrefixOneByteERKNS_12HeaderRecordERKNS_11ICollectionINS_7IndexedINS_23ControlRelayOutputBlockEEEEE:
.LFB2416:
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA2416
	endbr64
	pushq	%r12
	.cfi_def_cfa_offset 16
	.cfi_offset 12, -16
	movq	%rdx, %r12
	pushq	%rbp
	.cfi_def_cfa_offset 24
	.cfi_offset 6, -24
	pushq	%rbx
	.cfi_def_cfa_offset 32
	.cfi_offset 3, -32
	movq	%rdi, %rbx
	subq	$112, %rsp
	.cfi_def_cfa_offset 144
	movq	48(%rdi), %rbp
	movq	%fs:40, %rax
	movq	%rax, 104(%rsp)
	xorl	%eax, %eax
	testq	%rbp, %rbp
	je	.L225
	movl	$13, %ecx
	movl	$23, %edx
	movl	$268, %esi
	movq	%rbp, %rdi
.LEHB20:
	call	_ZN8opendnp312HeaderWriter22WriteHeaderWithReserveENS_16GroupVariationIDENS_13QualifierCodeEj@PLT
	testb	%al, %al
	jne	.L239
	pxor	%xmm0, %xmm0
	xorl	%ecx, %ecx
	leaq	80(%rsp), %rdi
	movl	$0, 48(%rsp)
	movl	$0, 72(%rsp)
	movw	%cx, 76(%rsp)
	movups	%xmm0, 56(%rsp)
	call	_ZN7openpal6WSliceC1Ev@PLT
.LEHE20:
	movq	$0, 96(%rsp)
.L227:
	xorl	%edx, %edx
	movq	%rbx, 24(%rsp)
	leaq	16(%rsp), %rsi
	movq	%r12, %rdi
	movq	_ZTVN8opendnp314FunctorVisitorINS_7IndexedINS_23ControlRelayOutputBlockEEEZNS_22CommandResponseHandler27RespondToHeaderWithIteratorIS2_N7openpal11UInt8SimpleEEENS_8IINFieldENS_13QualifierCodeERKNS_14DNP3SerializerIT_EERKNS_11ICollectionINS1_ISB_EEEEPNS_21PrefixedWriteIteratorIT0_SB_EEEUlRKS3_E_EE@GOTPCREL(%rip), %rax
	movw	%dx, 14(%rsp)
	addq	$16, %rax
	movq	%rax, 16(%rsp)
	leaq	48(%rsp), %rax
	movq	%rax, 32(%rsp)
	leaq	14(%rsp), %rax
	movq	%rax, 40(%rsp)
	movq	(%r12), %rax
.LEHB21:
	call	*8(%rax)
.LEHE21:
	cmpb	$0, 77(%rsp)
	movzbl	14(%rsp), %ecx
	movzbl	15(%rsp), %edx
	je	.L229
	movzbl	76(%rsp), %esi
	movq	88(%rsp), %rax
	movb	%sil, (%rax)
.L229:
	xorl	%eax, %eax
	movb	%cl, %al
	movq	104(%rsp), %rcx
	xorq	%fs:40, %rcx
	movb	%dl, %ah
	jne	.L240
	addq	$112, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 32
	popq	%rbx
	.cfi_def_cfa_offset 24
	popq	%rbp
	.cfi_def_cfa_offset 16
	popq	%r12
	.cfi_def_cfa_offset 8
	ret
	.p2align 4,,10
	.p2align 3
.L239:
	.cfi_restore_state
	movq	_ZN8opendnp311Group12Var110ReadTargetERN7openpal6RSliceERNS_23ControlRelayOutputBlockE@GOTPCREL(%rip), %xmm0
	movq	0(%rbp), %rdi
	movb	$0, 76(%rsp)
	movl	$11, 48(%rsp)
	movhps	_ZN8opendnp311Group12Var111WriteTargetERKNS_23ControlRelayOutputBlockERN7openpal6WSliceE@GOTPCREL(%rip), %xmm0
	movl	$12, 72(%rsp)
	movdqu	(%rdi), %xmm1
	movups	%xmm0, 56(%rsp)
	movl	(%rdi), %eax
	movq	%rdi, 96(%rsp)
	testl	%eax, %eax
	movaps	%xmm1, 80(%rsp)
	setne	77(%rsp)
	je	.L227
	movl	$1, %esi
.LEHB22:
	call	_ZN7openpal6WSlice7AdvanceEj@PLT
	jmp	.L227
	.p2align 4,,10
	.p2align 3
.L225:
	xorl	%eax, %eax
	movq	%rdi, 56(%rsp)
	leaq	48(%rsp), %rsi
	movq	%rdx, %rdi
	movw	%ax, 16(%rsp)
	movq	_ZTVN8opendnp314FunctorVisitorINS_7IndexedINS_23ControlRelayOutputBlockEEEZNS_22CommandResponseHandler27RespondToHeaderWithIteratorIS2_N7openpal11UInt8SimpleEEENS_8IINFieldENS_13QualifierCodeERKNS_14DNP3SerializerIT_EERKNS_11ICollectionINS1_ISB_EEEEPNS_21PrefixedWriteIteratorIT0_SB_EEEUlRKS3_E_EE@GOTPCREL(%rip), %rax
	movq	$0, 64(%rsp)
	addq	$16, %rax
	movq	%rax, 48(%rsp)
	leaq	16(%rsp), %rax
	movq	%rax, 72(%rsp)
	movq	(%rdx), %rax
	call	*8(%rax)
.LEHE22:
	movzbl	16(%rsp), %ecx
	movzbl	17(%rsp), %edx
	jmp	.L229
.L240:
	call	__stack_chk_fail@PLT
.L233:
	endbr64
	movq	%rax, %rdi
	jmp	.L230
	.section	.gcc_except_table
.LLSDA2416:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE2416-.LLSDACSB2416
.LLSDACSB2416:
	.uleb128 .LEHB20-.LFB2416
	.uleb128 .LEHE20-.LEHB20
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB21-.LFB2416
	.uleb128 .LEHE21-.LEHB21
	.uleb128 .L233-.LFB2416
	.uleb128 0
	.uleb128 .LEHB22-.LFB2416
	.uleb128 .LEHE22-.LEHB22
	.uleb128 0
	.uleb128 0
.LLSDACSE2416:
	.text
	.cfi_endproc
	.section	.text.unlikely
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDAC2416
	.type	_ZN8opendnp322CommandResponseHandler25ProcessIndexPrefixOneByteERKNS_12HeaderRecordERKNS_11ICollectionINS_7IndexedINS_23ControlRelayOutputBlockEEEEE.cold, @function
_ZN8opendnp322CommandResponseHandler25ProcessIndexPrefixOneByteERKNS_12HeaderRecordERKNS_11ICollectionINS_7IndexedINS_23ControlRelayOutputBlockEEEEE.cold:
.LFSB2416:
.L230:
	.cfi_def_cfa_offset 144
	.cfi_offset 3, -32
	.cfi_offset 6, -24
	.cfi_offset 12, -16
	cmpb	$0, 77(%rsp)
	je	.L231
	movzbl	76(%rsp), %edx
	movq	88(%rsp), %rax
	movb	%dl, (%rax)
.L231:
.LEHB23:
	call	_Unwind_Resume@PLT
.LEHE23:
	.cfi_endproc
.LFE2416:
	.section	.gcc_except_table
.LLSDAC2416:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSEC2416-.LLSDACSBC2416
.LLSDACSBC2416:
	.uleb128 .LEHB23-.LCOLDB5
	.uleb128 .LEHE23-.LEHB23
	.uleb128 0
	.uleb128 0
.LLSDACSEC2416:
	.section	.text.unlikely
	.text
	.size	_ZN8opendnp322CommandResponseHandler25ProcessIndexPrefixOneByteERKNS_12HeaderRecordERKNS_11ICollectionINS_7IndexedINS_23ControlRelayOutputBlockEEEEE, .-_ZN8opendnp322CommandResponseHandler25ProcessIndexPrefixOneByteERKNS_12HeaderRecordERKNS_11ICollectionINS_7IndexedINS_23ControlRelayOutputBlockEEEEE
	.section	.text.unlikely
	.size	_ZN8opendnp322CommandResponseHandler25ProcessIndexPrefixOneByteERKNS_12HeaderRecordERKNS_11ICollectionINS_7IndexedINS_23ControlRelayOutputBlockEEEEE.cold, .-_ZN8opendnp322CommandResponseHandler25ProcessIndexPrefixOneByteERKNS_12HeaderRecordERKNS_11ICollectionINS_7IndexedINS_23ControlRelayOutputBlockEEEEE.cold
.LCOLDE5:
	.text
.LHOTE5:
	.align 2
	.p2align 4
	.globl	_ZN8opendnp322CommandResponseHandler13ProcessHeaderERKNS_12PrefixHeaderERKNS_11ICollectionINS_7IndexedINS_23ControlRelayOutputBlockEEEEE
	.type	_ZN8opendnp322CommandResponseHandler13ProcessHeaderERKNS_12PrefixHeaderERKNS_11ICollectionINS_7IndexedINS_23ControlRelayOutputBlockEEEEE, @function
_ZN8opendnp322CommandResponseHandler13ProcessHeaderERKNS_12PrefixHeaderERKNS_11ICollectionINS_7IndexedINS_23ControlRelayOutputBlockEEEEE:
.LFB2406:
	.cfi_startproc
	endbr64
	pushq	%r13
	.cfi_def_cfa_offset 16
	.cfi_offset 13, -16
	movq	%rdx, %r13
	pushq	%r12
	.cfi_def_cfa_offset 24
	.cfi_offset 12, -24
	movq	%rdi, %r12
	movq	%rsi, %rdi
	pushq	%rbp
	.cfi_def_cfa_offset 32
	.cfi_offset 6, -32
	movq	%rsi, %rbp
	call	_ZNK8opendnp312HeaderRecord16GetQualifierCodeEv@PLT
	movq	%r13, %rdx
	movq	%rbp, %rsi
	movq	%r12, %rdi
	cmpb	$23, %al
	je	.L244
	popq	%rbp
	.cfi_remember_state
	.cfi_def_cfa_offset 24
	popq	%r12
	.cfi_def_cfa_offset 16
	popq	%r13
	.cfi_def_cfa_offset 8
	jmp	_ZN8opendnp322CommandResponseHandler25ProcessIndexPrefixTwoByteERKNS_12HeaderRecordERKNS_11ICollectionINS_7IndexedINS_23ControlRelayOutputBlockEEEEE@PLT
	.p2align 4,,10
	.p2align 3
.L244:
	.cfi_restore_state
	popq	%rbp
	.cfi_def_cfa_offset 24
	popq	%r12
	.cfi_def_cfa_offset 16
	popq	%r13
	.cfi_def_cfa_offset 8
	jmp	_ZN8opendnp322CommandResponseHandler25ProcessIndexPrefixOneByteERKNS_12HeaderRecordERKNS_11ICollectionINS_7IndexedINS_23ControlRelayOutputBlockEEEEE@PLT
	.cfi_endproc
.LFE2406:
	.size	_ZN8opendnp322CommandResponseHandler13ProcessHeaderERKNS_12PrefixHeaderERKNS_11ICollectionINS_7IndexedINS_23ControlRelayOutputBlockEEEEE, .-_ZN8opendnp322CommandResponseHandler13ProcessHeaderERKNS_12PrefixHeaderERKNS_11ICollectionINS_7IndexedINS_23ControlRelayOutputBlockEEEEE
	.section	.text.unlikely
	.align 2
.LCOLDB6:
	.text
.LHOTB6:
	.align 2
	.p2align 4
	.globl	_ZN8opendnp322CommandResponseHandler25ProcessIndexPrefixOneByteERKNS_12HeaderRecordERKNS_11ICollectionINS_7IndexedINS_17AnalogOutputInt16EEEEE
	.type	_ZN8opendnp322CommandResponseHandler25ProcessIndexPrefixOneByteERKNS_12HeaderRecordERKNS_11ICollectionINS_7IndexedINS_17AnalogOutputInt16EEEEE, @function
_ZN8opendnp322CommandResponseHandler25ProcessIndexPrefixOneByteERKNS_12HeaderRecordERKNS_11ICollectionINS_7IndexedINS_17AnalogOutputInt16EEEEE:
.LFB2417:
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA2417
	endbr64
	pushq	%r12
	.cfi_def_cfa_offset 16
	.cfi_offset 12, -16
	movq	%rdx, %r12
	pushq	%rbp
	.cfi_def_cfa_offset 24
	.cfi_offset 6, -24
	pushq	%rbx
	.cfi_def_cfa_offset 32
	.cfi_offset 3, -32
	movq	%rdi, %rbx
	subq	$112, %rsp
	.cfi_def_cfa_offset 144
	movq	48(%rdi), %rbp
	movq	%fs:40, %rax
	movq	%rax, 104(%rsp)
	xorl	%eax, %eax
	testq	%rbp, %rbp
	je	.L246
	movl	$5, %ecx
	movl	$23, %edx
	movl	$553, %esi
	movq	%rbp, %rdi
.LEHB24:
	call	_ZN8opendnp312HeaderWriter22WriteHeaderWithReserveENS_16GroupVariationIDENS_13QualifierCodeEj@PLT
	testb	%al, %al
	jne	.L260
	pxor	%xmm0, %xmm0
	xorl	%ecx, %ecx
	leaq	80(%rsp), %rdi
	movl	$0, 48(%rsp)
	movl	$0, 72(%rsp)
	movw	%cx, 76(%rsp)
	movups	%xmm0, 56(%rsp)
	call	_ZN7openpal6WSliceC1Ev@PLT
.LEHE24:
	movq	$0, 96(%rsp)
.L248:
	xorl	%edx, %edx
	movq	%rbx, 24(%rsp)
	leaq	16(%rsp), %rsi
	movq	%r12, %rdi
	movq	_ZTVN8opendnp314FunctorVisitorINS_7IndexedINS_17AnalogOutputInt16EEEZNS_22CommandResponseHandler27RespondToHeaderWithIteratorIS2_N7openpal11UInt8SimpleEEENS_8IINFieldENS_13QualifierCodeERKNS_14DNP3SerializerIT_EERKNS_11ICollectionINS1_ISB_EEEEPNS_21PrefixedWriteIteratorIT0_SB_EEEUlRKS3_E_EE@GOTPCREL(%rip), %rax
	movw	%dx, 14(%rsp)
	addq	$16, %rax
	movq	%rax, 16(%rsp)
	leaq	48(%rsp), %rax
	movq	%rax, 32(%rsp)
	leaq	14(%rsp), %rax
	movq	%rax, 40(%rsp)
	movq	(%r12), %rax
.LEHB25:
	call	*8(%rax)
.LEHE25:
	cmpb	$0, 77(%rsp)
	movzbl	14(%rsp), %ecx
	movzbl	15(%rsp), %edx
	je	.L250
	movzbl	76(%rsp), %esi
	movq	88(%rsp), %rax
	movb	%sil, (%rax)
.L250:
	xorl	%eax, %eax
	movb	%cl, %al
	movq	104(%rsp), %rcx
	xorq	%fs:40, %rcx
	movb	%dl, %ah
	jne	.L261
	addq	$112, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 32
	popq	%rbx
	.cfi_def_cfa_offset 24
	popq	%rbp
	.cfi_def_cfa_offset 16
	popq	%r12
	.cfi_def_cfa_offset 8
	ret
	.p2align 4,,10
	.p2align 3
.L260:
	.cfi_restore_state
	movq	_ZN8opendnp311Group41Var210ReadTargetERN7openpal6RSliceERNS_17AnalogOutputInt16E@GOTPCREL(%rip), %xmm0
	movq	0(%rbp), %rdi
	movb	$0, 76(%rsp)
	movl	$3, 48(%rsp)
	movhps	_ZN8opendnp311Group41Var211WriteTargetERKNS_17AnalogOutputInt16ERN7openpal6WSliceE@GOTPCREL(%rip), %xmm0
	movl	$4, 72(%rsp)
	movdqu	(%rdi), %xmm1
	movups	%xmm0, 56(%rsp)
	movl	(%rdi), %eax
	movq	%rdi, 96(%rsp)
	testl	%eax, %eax
	movaps	%xmm1, 80(%rsp)
	setne	77(%rsp)
	je	.L248
	movl	$1, %esi
.LEHB26:
	call	_ZN7openpal6WSlice7AdvanceEj@PLT
	jmp	.L248
	.p2align 4,,10
	.p2align 3
.L246:
	xorl	%eax, %eax
	movq	%rdi, 56(%rsp)
	leaq	48(%rsp), %rsi
	movq	%rdx, %rdi
	movw	%ax, 16(%rsp)
	movq	_ZTVN8opendnp314FunctorVisitorINS_7IndexedINS_17AnalogOutputInt16EEEZNS_22CommandResponseHandler27RespondToHeaderWithIteratorIS2_N7openpal11UInt8SimpleEEENS_8IINFieldENS_13QualifierCodeERKNS_14DNP3SerializerIT_EERKNS_11ICollectionINS1_ISB_EEEEPNS_21PrefixedWriteIteratorIT0_SB_EEEUlRKS3_E_EE@GOTPCREL(%rip), %rax
	movq	$0, 64(%rsp)
	addq	$16, %rax
	movq	%rax, 48(%rsp)
	leaq	16(%rsp), %rax
	movq	%rax, 72(%rsp)
	movq	(%rdx), %rax
	call	*8(%rax)
.LEHE26:
	movzbl	16(%rsp), %ecx
	movzbl	17(%rsp), %edx
	jmp	.L250
.L261:
	call	__stack_chk_fail@PLT
.L254:
	endbr64
	movq	%rax, %rdi
	jmp	.L251
	.section	.gcc_except_table
.LLSDA2417:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE2417-.LLSDACSB2417
.LLSDACSB2417:
	.uleb128 .LEHB24-.LFB2417
	.uleb128 .LEHE24-.LEHB24
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB25-.LFB2417
	.uleb128 .LEHE25-.LEHB25
	.uleb128 .L254-.LFB2417
	.uleb128 0
	.uleb128 .LEHB26-.LFB2417
	.uleb128 .LEHE26-.LEHB26
	.uleb128 0
	.uleb128 0
.LLSDACSE2417:
	.text
	.cfi_endproc
	.section	.text.unlikely
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDAC2417
	.type	_ZN8opendnp322CommandResponseHandler25ProcessIndexPrefixOneByteERKNS_12HeaderRecordERKNS_11ICollectionINS_7IndexedINS_17AnalogOutputInt16EEEEE.cold, @function
_ZN8opendnp322CommandResponseHandler25ProcessIndexPrefixOneByteERKNS_12HeaderRecordERKNS_11ICollectionINS_7IndexedINS_17AnalogOutputInt16EEEEE.cold:
.LFSB2417:
.L251:
	.cfi_def_cfa_offset 144
	.cfi_offset 3, -32
	.cfi_offset 6, -24
	.cfi_offset 12, -16
	cmpb	$0, 77(%rsp)
	je	.L252
	movzbl	76(%rsp), %edx
	movq	88(%rsp), %rax
	movb	%dl, (%rax)
.L252:
.LEHB27:
	call	_Unwind_Resume@PLT
.LEHE27:
	.cfi_endproc
.LFE2417:
	.section	.gcc_except_table
.LLSDAC2417:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSEC2417-.LLSDACSBC2417
.LLSDACSBC2417:
	.uleb128 .LEHB27-.LCOLDB6
	.uleb128 .LEHE27-.LEHB27
	.uleb128 0
	.uleb128 0
.LLSDACSEC2417:
	.section	.text.unlikely
	.text
	.size	_ZN8opendnp322CommandResponseHandler25ProcessIndexPrefixOneByteERKNS_12HeaderRecordERKNS_11ICollectionINS_7IndexedINS_17AnalogOutputInt16EEEEE, .-_ZN8opendnp322CommandResponseHandler25ProcessIndexPrefixOneByteERKNS_12HeaderRecordERKNS_11ICollectionINS_7IndexedINS_17AnalogOutputInt16EEEEE
	.section	.text.unlikely
	.size	_ZN8opendnp322CommandResponseHandler25ProcessIndexPrefixOneByteERKNS_12HeaderRecordERKNS_11ICollectionINS_7IndexedINS_17AnalogOutputInt16EEEEE.cold, .-_ZN8opendnp322CommandResponseHandler25ProcessIndexPrefixOneByteERKNS_12HeaderRecordERKNS_11ICollectionINS_7IndexedINS_17AnalogOutputInt16EEEEE.cold
.LCOLDE6:
	.text
.LHOTE6:
	.align 2
	.p2align 4
	.globl	_ZN8opendnp322CommandResponseHandler13ProcessHeaderERKNS_12PrefixHeaderERKNS_11ICollectionINS_7IndexedINS_17AnalogOutputInt16EEEEE
	.type	_ZN8opendnp322CommandResponseHandler13ProcessHeaderERKNS_12PrefixHeaderERKNS_11ICollectionINS_7IndexedINS_17AnalogOutputInt16EEEEE, @function
_ZN8opendnp322CommandResponseHandler13ProcessHeaderERKNS_12PrefixHeaderERKNS_11ICollectionINS_7IndexedINS_17AnalogOutputInt16EEEEE:
.LFB2407:
	.cfi_startproc
	endbr64
	pushq	%r13
	.cfi_def_cfa_offset 16
	.cfi_offset 13, -16
	movq	%rdx, %r13
	pushq	%r12
	.cfi_def_cfa_offset 24
	.cfi_offset 12, -24
	movq	%rdi, %r12
	movq	%rsi, %rdi
	pushq	%rbp
	.cfi_def_cfa_offset 32
	.cfi_offset 6, -32
	movq	%rsi, %rbp
	call	_ZNK8opendnp312HeaderRecord16GetQualifierCodeEv@PLT
	movq	%r13, %rdx
	movq	%rbp, %rsi
	movq	%r12, %rdi
	cmpb	$23, %al
	je	.L265
	popq	%rbp
	.cfi_remember_state
	.cfi_def_cfa_offset 24
	popq	%r12
	.cfi_def_cfa_offset 16
	popq	%r13
	.cfi_def_cfa_offset 8
	jmp	_ZN8opendnp322CommandResponseHandler25ProcessIndexPrefixTwoByteERKNS_12HeaderRecordERKNS_11ICollectionINS_7IndexedINS_17AnalogOutputInt16EEEEE@PLT
	.p2align 4,,10
	.p2align 3
.L265:
	.cfi_restore_state
	popq	%rbp
	.cfi_def_cfa_offset 24
	popq	%r12
	.cfi_def_cfa_offset 16
	popq	%r13
	.cfi_def_cfa_offset 8
	jmp	_ZN8opendnp322CommandResponseHandler25ProcessIndexPrefixOneByteERKNS_12HeaderRecordERKNS_11ICollectionINS_7IndexedINS_17AnalogOutputInt16EEEEE@PLT
	.cfi_endproc
.LFE2407:
	.size	_ZN8opendnp322CommandResponseHandler13ProcessHeaderERKNS_12PrefixHeaderERKNS_11ICollectionINS_7IndexedINS_17AnalogOutputInt16EEEEE, .-_ZN8opendnp322CommandResponseHandler13ProcessHeaderERKNS_12PrefixHeaderERKNS_11ICollectionINS_7IndexedINS_17AnalogOutputInt16EEEEE
	.section	.text.unlikely
	.align 2
.LCOLDB7:
	.text
.LHOTB7:
	.align 2
	.p2align 4
	.globl	_ZN8opendnp322CommandResponseHandler25ProcessIndexPrefixOneByteERKNS_12HeaderRecordERKNS_11ICollectionINS_7IndexedINS_17AnalogOutputInt32EEEEE
	.type	_ZN8opendnp322CommandResponseHandler25ProcessIndexPrefixOneByteERKNS_12HeaderRecordERKNS_11ICollectionINS_7IndexedINS_17AnalogOutputInt32EEEEE, @function
_ZN8opendnp322CommandResponseHandler25ProcessIndexPrefixOneByteERKNS_12HeaderRecordERKNS_11ICollectionINS_7IndexedINS_17AnalogOutputInt32EEEEE:
.LFB2418:
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA2418
	endbr64
	pushq	%r12
	.cfi_def_cfa_offset 16
	.cfi_offset 12, -16
	movq	%rdx, %r12
	pushq	%rbp
	.cfi_def_cfa_offset 24
	.cfi_offset 6, -24
	pushq	%rbx
	.cfi_def_cfa_offset 32
	.cfi_offset 3, -32
	movq	%rdi, %rbx
	subq	$112, %rsp
	.cfi_def_cfa_offset 144
	movq	48(%rdi), %rbp
	movq	%fs:40, %rax
	movq	%rax, 104(%rsp)
	xorl	%eax, %eax
	testq	%rbp, %rbp
	je	.L267
	movl	$7, %ecx
	movl	$23, %edx
	movl	$297, %esi
	movq	%rbp, %rdi
.LEHB28:
	call	_ZN8opendnp312HeaderWriter22WriteHeaderWithReserveENS_16GroupVariationIDENS_13QualifierCodeEj@PLT
	testb	%al, %al
	jne	.L281
	pxor	%xmm0, %xmm0
	xorl	%ecx, %ecx
	leaq	80(%rsp), %rdi
	movl	$0, 48(%rsp)
	movl	$0, 72(%rsp)
	movw	%cx, 76(%rsp)
	movups	%xmm0, 56(%rsp)
	call	_ZN7openpal6WSliceC1Ev@PLT
.LEHE28:
	movq	$0, 96(%rsp)
.L269:
	xorl	%edx, %edx
	movq	%rbx, 24(%rsp)
	leaq	16(%rsp), %rsi
	movq	%r12, %rdi
	movq	_ZTVN8opendnp314FunctorVisitorINS_7IndexedINS_17AnalogOutputInt32EEEZNS_22CommandResponseHandler27RespondToHeaderWithIteratorIS2_N7openpal11UInt8SimpleEEENS_8IINFieldENS_13QualifierCodeERKNS_14DNP3SerializerIT_EERKNS_11ICollectionINS1_ISB_EEEEPNS_21PrefixedWriteIteratorIT0_SB_EEEUlRKS3_E_EE@GOTPCREL(%rip), %rax
	movw	%dx, 14(%rsp)
	addq	$16, %rax
	movq	%rax, 16(%rsp)
	leaq	48(%rsp), %rax
	movq	%rax, 32(%rsp)
	leaq	14(%rsp), %rax
	movq	%rax, 40(%rsp)
	movq	(%r12), %rax
.LEHB29:
	call	*8(%rax)
.LEHE29:
	cmpb	$0, 77(%rsp)
	movzbl	14(%rsp), %ecx
	movzbl	15(%rsp), %edx
	je	.L271
	movzbl	76(%rsp), %esi
	movq	88(%rsp), %rax
	movb	%sil, (%rax)
.L271:
	xorl	%eax, %eax
	movb	%cl, %al
	movq	104(%rsp), %rcx
	xorq	%fs:40, %rcx
	movb	%dl, %ah
	jne	.L282
	addq	$112, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 32
	popq	%rbx
	.cfi_def_cfa_offset 24
	popq	%rbp
	.cfi_def_cfa_offset 16
	popq	%r12
	.cfi_def_cfa_offset 8
	ret
	.p2align 4,,10
	.p2align 3
.L281:
	.cfi_restore_state
	movq	_ZN8opendnp311Group41Var110ReadTargetERN7openpal6RSliceERNS_17AnalogOutputInt32E@GOTPCREL(%rip), %xmm0
	movq	0(%rbp), %rdi
	movb	$0, 76(%rsp)
	movl	$5, 48(%rsp)
	movhps	_ZN8opendnp311Group41Var111WriteTargetERKNS_17AnalogOutputInt32ERN7openpal6WSliceE@GOTPCREL(%rip), %xmm0
	movl	$6, 72(%rsp)
	movdqu	(%rdi), %xmm1
	movups	%xmm0, 56(%rsp)
	movl	(%rdi), %eax
	movq	%rdi, 96(%rsp)
	testl	%eax, %eax
	movaps	%xmm1, 80(%rsp)
	setne	77(%rsp)
	je	.L269
	movl	$1, %esi
.LEHB30:
	call	_ZN7openpal6WSlice7AdvanceEj@PLT
	jmp	.L269
	.p2align 4,,10
	.p2align 3
.L267:
	xorl	%eax, %eax
	movq	%rdi, 56(%rsp)
	leaq	48(%rsp), %rsi
	movq	%rdx, %rdi
	movw	%ax, 16(%rsp)
	movq	_ZTVN8opendnp314FunctorVisitorINS_7IndexedINS_17AnalogOutputInt32EEEZNS_22CommandResponseHandler27RespondToHeaderWithIteratorIS2_N7openpal11UInt8SimpleEEENS_8IINFieldENS_13QualifierCodeERKNS_14DNP3SerializerIT_EERKNS_11ICollectionINS1_ISB_EEEEPNS_21PrefixedWriteIteratorIT0_SB_EEEUlRKS3_E_EE@GOTPCREL(%rip), %rax
	movq	$0, 64(%rsp)
	addq	$16, %rax
	movq	%rax, 48(%rsp)
	leaq	16(%rsp), %rax
	movq	%rax, 72(%rsp)
	movq	(%rdx), %rax
	call	*8(%rax)
.LEHE30:
	movzbl	16(%rsp), %ecx
	movzbl	17(%rsp), %edx
	jmp	.L271
.L282:
	call	__stack_chk_fail@PLT
.L275:
	endbr64
	movq	%rax, %rdi
	jmp	.L272
	.section	.gcc_except_table
.LLSDA2418:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE2418-.LLSDACSB2418
.LLSDACSB2418:
	.uleb128 .LEHB28-.LFB2418
	.uleb128 .LEHE28-.LEHB28
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB29-.LFB2418
	.uleb128 .LEHE29-.LEHB29
	.uleb128 .L275-.LFB2418
	.uleb128 0
	.uleb128 .LEHB30-.LFB2418
	.uleb128 .LEHE30-.LEHB30
	.uleb128 0
	.uleb128 0
.LLSDACSE2418:
	.text
	.cfi_endproc
	.section	.text.unlikely
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDAC2418
	.type	_ZN8opendnp322CommandResponseHandler25ProcessIndexPrefixOneByteERKNS_12HeaderRecordERKNS_11ICollectionINS_7IndexedINS_17AnalogOutputInt32EEEEE.cold, @function
_ZN8opendnp322CommandResponseHandler25ProcessIndexPrefixOneByteERKNS_12HeaderRecordERKNS_11ICollectionINS_7IndexedINS_17AnalogOutputInt32EEEEE.cold:
.LFSB2418:
.L272:
	.cfi_def_cfa_offset 144
	.cfi_offset 3, -32
	.cfi_offset 6, -24
	.cfi_offset 12, -16
	cmpb	$0, 77(%rsp)
	je	.L273
	movzbl	76(%rsp), %edx
	movq	88(%rsp), %rax
	movb	%dl, (%rax)
.L273:
.LEHB31:
	call	_Unwind_Resume@PLT
.LEHE31:
	.cfi_endproc
.LFE2418:
	.section	.gcc_except_table
.LLSDAC2418:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSEC2418-.LLSDACSBC2418
.LLSDACSBC2418:
	.uleb128 .LEHB31-.LCOLDB7
	.uleb128 .LEHE31-.LEHB31
	.uleb128 0
	.uleb128 0
.LLSDACSEC2418:
	.section	.text.unlikely
	.text
	.size	_ZN8opendnp322CommandResponseHandler25ProcessIndexPrefixOneByteERKNS_12HeaderRecordERKNS_11ICollectionINS_7IndexedINS_17AnalogOutputInt32EEEEE, .-_ZN8opendnp322CommandResponseHandler25ProcessIndexPrefixOneByteERKNS_12HeaderRecordERKNS_11ICollectionINS_7IndexedINS_17AnalogOutputInt32EEEEE
	.section	.text.unlikely
	.size	_ZN8opendnp322CommandResponseHandler25ProcessIndexPrefixOneByteERKNS_12HeaderRecordERKNS_11ICollectionINS_7IndexedINS_17AnalogOutputInt32EEEEE.cold, .-_ZN8opendnp322CommandResponseHandler25ProcessIndexPrefixOneByteERKNS_12HeaderRecordERKNS_11ICollectionINS_7IndexedINS_17AnalogOutputInt32EEEEE.cold
.LCOLDE7:
	.text
.LHOTE7:
	.align 2
	.p2align 4
	.globl	_ZN8opendnp322CommandResponseHandler13ProcessHeaderERKNS_12PrefixHeaderERKNS_11ICollectionINS_7IndexedINS_17AnalogOutputInt32EEEEE
	.type	_ZN8opendnp322CommandResponseHandler13ProcessHeaderERKNS_12PrefixHeaderERKNS_11ICollectionINS_7IndexedINS_17AnalogOutputInt32EEEEE, @function
_ZN8opendnp322CommandResponseHandler13ProcessHeaderERKNS_12PrefixHeaderERKNS_11ICollectionINS_7IndexedINS_17AnalogOutputInt32EEEEE:
.LFB2408:
	.cfi_startproc
	endbr64
	pushq	%r13
	.cfi_def_cfa_offset 16
	.cfi_offset 13, -16
	movq	%rdx, %r13
	pushq	%r12
	.cfi_def_cfa_offset 24
	.cfi_offset 12, -24
	movq	%rdi, %r12
	movq	%rsi, %rdi
	pushq	%rbp
	.cfi_def_cfa_offset 32
	.cfi_offset 6, -32
	movq	%rsi, %rbp
	call	_ZNK8opendnp312HeaderRecord16GetQualifierCodeEv@PLT
	movq	%r13, %rdx
	movq	%rbp, %rsi
	movq	%r12, %rdi
	cmpb	$23, %al
	je	.L286
	popq	%rbp
	.cfi_remember_state
	.cfi_def_cfa_offset 24
	popq	%r12
	.cfi_def_cfa_offset 16
	popq	%r13
	.cfi_def_cfa_offset 8
	jmp	_ZN8opendnp322CommandResponseHandler25ProcessIndexPrefixTwoByteERKNS_12HeaderRecordERKNS_11ICollectionINS_7IndexedINS_17AnalogOutputInt32EEEEE@PLT
	.p2align 4,,10
	.p2align 3
.L286:
	.cfi_restore_state
	popq	%rbp
	.cfi_def_cfa_offset 24
	popq	%r12
	.cfi_def_cfa_offset 16
	popq	%r13
	.cfi_def_cfa_offset 8
	jmp	_ZN8opendnp322CommandResponseHandler25ProcessIndexPrefixOneByteERKNS_12HeaderRecordERKNS_11ICollectionINS_7IndexedINS_17AnalogOutputInt32EEEEE@PLT
	.cfi_endproc
.LFE2408:
	.size	_ZN8opendnp322CommandResponseHandler13ProcessHeaderERKNS_12PrefixHeaderERKNS_11ICollectionINS_7IndexedINS_17AnalogOutputInt32EEEEE, .-_ZN8opendnp322CommandResponseHandler13ProcessHeaderERKNS_12PrefixHeaderERKNS_11ICollectionINS_7IndexedINS_17AnalogOutputInt32EEEEE
	.section	.text.unlikely
	.align 2
.LCOLDB8:
	.text
.LHOTB8:
	.align 2
	.p2align 4
	.globl	_ZN8opendnp322CommandResponseHandler25ProcessIndexPrefixOneByteERKNS_12HeaderRecordERKNS_11ICollectionINS_7IndexedINS_19AnalogOutputFloat32EEEEE
	.type	_ZN8opendnp322CommandResponseHandler25ProcessIndexPrefixOneByteERKNS_12HeaderRecordERKNS_11ICollectionINS_7IndexedINS_19AnalogOutputFloat32EEEEE, @function
_ZN8opendnp322CommandResponseHandler25ProcessIndexPrefixOneByteERKNS_12HeaderRecordERKNS_11ICollectionINS_7IndexedINS_19AnalogOutputFloat32EEEEE:
.LFB2419:
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA2419
	endbr64
	pushq	%r12
	.cfi_def_cfa_offset 16
	.cfi_offset 12, -16
	movq	%rdx, %r12
	pushq	%rbp
	.cfi_def_cfa_offset 24
	.cfi_offset 6, -24
	pushq	%rbx
	.cfi_def_cfa_offset 32
	.cfi_offset 3, -32
	movq	%rdi, %rbx
	subq	$112, %rsp
	.cfi_def_cfa_offset 144
	movq	48(%rdi), %rbp
	movq	%fs:40, %rax
	movq	%rax, 104(%rsp)
	xorl	%eax, %eax
	testq	%rbp, %rbp
	je	.L288
	movl	$7, %ecx
	movl	$23, %edx
	movl	$809, %esi
	movq	%rbp, %rdi
.LEHB32:
	call	_ZN8opendnp312HeaderWriter22WriteHeaderWithReserveENS_16GroupVariationIDENS_13QualifierCodeEj@PLT
	testb	%al, %al
	jne	.L302
	pxor	%xmm0, %xmm0
	xorl	%ecx, %ecx
	leaq	80(%rsp), %rdi
	movl	$0, 48(%rsp)
	movl	$0, 72(%rsp)
	movw	%cx, 76(%rsp)
	movups	%xmm0, 56(%rsp)
	call	_ZN7openpal6WSliceC1Ev@PLT
.LEHE32:
	movq	$0, 96(%rsp)
.L290:
	xorl	%edx, %edx
	movq	%rbx, 24(%rsp)
	leaq	16(%rsp), %rsi
	movq	%r12, %rdi
	movq	_ZTVN8opendnp314FunctorVisitorINS_7IndexedINS_19AnalogOutputFloat32EEEZNS_22CommandResponseHandler27RespondToHeaderWithIteratorIS2_N7openpal11UInt8SimpleEEENS_8IINFieldENS_13QualifierCodeERKNS_14DNP3SerializerIT_EERKNS_11ICollectionINS1_ISB_EEEEPNS_21PrefixedWriteIteratorIT0_SB_EEEUlRKS3_E_EE@GOTPCREL(%rip), %rax
	movw	%dx, 14(%rsp)
	addq	$16, %rax
	movq	%rax, 16(%rsp)
	leaq	48(%rsp), %rax
	movq	%rax, 32(%rsp)
	leaq	14(%rsp), %rax
	movq	%rax, 40(%rsp)
	movq	(%r12), %rax
.LEHB33:
	call	*8(%rax)
.LEHE33:
	cmpb	$0, 77(%rsp)
	movzbl	14(%rsp), %ecx
	movzbl	15(%rsp), %edx
	je	.L292
	movzbl	76(%rsp), %esi
	movq	88(%rsp), %rax
	movb	%sil, (%rax)
.L292:
	xorl	%eax, %eax
	movb	%cl, %al
	movq	104(%rsp), %rcx
	xorq	%fs:40, %rcx
	movb	%dl, %ah
	jne	.L303
	addq	$112, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 32
	popq	%rbx
	.cfi_def_cfa_offset 24
	popq	%rbp
	.cfi_def_cfa_offset 16
	popq	%r12
	.cfi_def_cfa_offset 8
	ret
	.p2align 4,,10
	.p2align 3
.L302:
	.cfi_restore_state
	movq	_ZN8opendnp311Group41Var310ReadTargetERN7openpal6RSliceERNS_19AnalogOutputFloat32E@GOTPCREL(%rip), %xmm0
	movq	0(%rbp), %rdi
	movb	$0, 76(%rsp)
	movl	$5, 48(%rsp)
	movhps	_ZN8opendnp311Group41Var311WriteTargetERKNS_19AnalogOutputFloat32ERN7openpal6WSliceE@GOTPCREL(%rip), %xmm0
	movl	$6, 72(%rsp)
	movdqu	(%rdi), %xmm1
	movups	%xmm0, 56(%rsp)
	movl	(%rdi), %eax
	movq	%rdi, 96(%rsp)
	testl	%eax, %eax
	movaps	%xmm1, 80(%rsp)
	setne	77(%rsp)
	je	.L290
	movl	$1, %esi
.LEHB34:
	call	_ZN7openpal6WSlice7AdvanceEj@PLT
	jmp	.L290
	.p2align 4,,10
	.p2align 3
.L288:
	xorl	%eax, %eax
	movq	%rdi, 56(%rsp)
	leaq	48(%rsp), %rsi
	movq	%rdx, %rdi
	movw	%ax, 16(%rsp)
	movq	_ZTVN8opendnp314FunctorVisitorINS_7IndexedINS_19AnalogOutputFloat32EEEZNS_22CommandResponseHandler27RespondToHeaderWithIteratorIS2_N7openpal11UInt8SimpleEEENS_8IINFieldENS_13QualifierCodeERKNS_14DNP3SerializerIT_EERKNS_11ICollectionINS1_ISB_EEEEPNS_21PrefixedWriteIteratorIT0_SB_EEEUlRKS3_E_EE@GOTPCREL(%rip), %rax
	movq	$0, 64(%rsp)
	addq	$16, %rax
	movq	%rax, 48(%rsp)
	leaq	16(%rsp), %rax
	movq	%rax, 72(%rsp)
	movq	(%rdx), %rax
	call	*8(%rax)
.LEHE34:
	movzbl	16(%rsp), %ecx
	movzbl	17(%rsp), %edx
	jmp	.L292
.L303:
	call	__stack_chk_fail@PLT
.L296:
	endbr64
	movq	%rax, %rdi
	jmp	.L293
	.section	.gcc_except_table
.LLSDA2419:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE2419-.LLSDACSB2419
.LLSDACSB2419:
	.uleb128 .LEHB32-.LFB2419
	.uleb128 .LEHE32-.LEHB32
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB33-.LFB2419
	.uleb128 .LEHE33-.LEHB33
	.uleb128 .L296-.LFB2419
	.uleb128 0
	.uleb128 .LEHB34-.LFB2419
	.uleb128 .LEHE34-.LEHB34
	.uleb128 0
	.uleb128 0
.LLSDACSE2419:
	.text
	.cfi_endproc
	.section	.text.unlikely
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDAC2419
	.type	_ZN8opendnp322CommandResponseHandler25ProcessIndexPrefixOneByteERKNS_12HeaderRecordERKNS_11ICollectionINS_7IndexedINS_19AnalogOutputFloat32EEEEE.cold, @function
_ZN8opendnp322CommandResponseHandler25ProcessIndexPrefixOneByteERKNS_12HeaderRecordERKNS_11ICollectionINS_7IndexedINS_19AnalogOutputFloat32EEEEE.cold:
.LFSB2419:
.L293:
	.cfi_def_cfa_offset 144
	.cfi_offset 3, -32
	.cfi_offset 6, -24
	.cfi_offset 12, -16
	cmpb	$0, 77(%rsp)
	je	.L294
	movzbl	76(%rsp), %edx
	movq	88(%rsp), %rax
	movb	%dl, (%rax)
.L294:
.LEHB35:
	call	_Unwind_Resume@PLT
.LEHE35:
	.cfi_endproc
.LFE2419:
	.section	.gcc_except_table
.LLSDAC2419:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSEC2419-.LLSDACSBC2419
.LLSDACSBC2419:
	.uleb128 .LEHB35-.LCOLDB8
	.uleb128 .LEHE35-.LEHB35
	.uleb128 0
	.uleb128 0
.LLSDACSEC2419:
	.section	.text.unlikely
	.text
	.size	_ZN8opendnp322CommandResponseHandler25ProcessIndexPrefixOneByteERKNS_12HeaderRecordERKNS_11ICollectionINS_7IndexedINS_19AnalogOutputFloat32EEEEE, .-_ZN8opendnp322CommandResponseHandler25ProcessIndexPrefixOneByteERKNS_12HeaderRecordERKNS_11ICollectionINS_7IndexedINS_19AnalogOutputFloat32EEEEE
	.section	.text.unlikely
	.size	_ZN8opendnp322CommandResponseHandler25ProcessIndexPrefixOneByteERKNS_12HeaderRecordERKNS_11ICollectionINS_7IndexedINS_19AnalogOutputFloat32EEEEE.cold, .-_ZN8opendnp322CommandResponseHandler25ProcessIndexPrefixOneByteERKNS_12HeaderRecordERKNS_11ICollectionINS_7IndexedINS_19AnalogOutputFloat32EEEEE.cold
.LCOLDE8:
	.text
.LHOTE8:
	.align 2
	.p2align 4
	.globl	_ZN8opendnp322CommandResponseHandler13ProcessHeaderERKNS_12PrefixHeaderERKNS_11ICollectionINS_7IndexedINS_19AnalogOutputFloat32EEEEE
	.type	_ZN8opendnp322CommandResponseHandler13ProcessHeaderERKNS_12PrefixHeaderERKNS_11ICollectionINS_7IndexedINS_19AnalogOutputFloat32EEEEE, @function
_ZN8opendnp322CommandResponseHandler13ProcessHeaderERKNS_12PrefixHeaderERKNS_11ICollectionINS_7IndexedINS_19AnalogOutputFloat32EEEEE:
.LFB2409:
	.cfi_startproc
	endbr64
	pushq	%r13
	.cfi_def_cfa_offset 16
	.cfi_offset 13, -16
	movq	%rdx, %r13
	pushq	%r12
	.cfi_def_cfa_offset 24
	.cfi_offset 12, -24
	movq	%rdi, %r12
	movq	%rsi, %rdi
	pushq	%rbp
	.cfi_def_cfa_offset 32
	.cfi_offset 6, -32
	movq	%rsi, %rbp
	call	_ZNK8opendnp312HeaderRecord16GetQualifierCodeEv@PLT
	movq	%r13, %rdx
	movq	%rbp, %rsi
	movq	%r12, %rdi
	cmpb	$23, %al
	je	.L307
	popq	%rbp
	.cfi_remember_state
	.cfi_def_cfa_offset 24
	popq	%r12
	.cfi_def_cfa_offset 16
	popq	%r13
	.cfi_def_cfa_offset 8
	jmp	_ZN8opendnp322CommandResponseHandler25ProcessIndexPrefixTwoByteERKNS_12HeaderRecordERKNS_11ICollectionINS_7IndexedINS_19AnalogOutputFloat32EEEEE@PLT
	.p2align 4,,10
	.p2align 3
.L307:
	.cfi_restore_state
	popq	%rbp
	.cfi_def_cfa_offset 24
	popq	%r12
	.cfi_def_cfa_offset 16
	popq	%r13
	.cfi_def_cfa_offset 8
	jmp	_ZN8opendnp322CommandResponseHandler25ProcessIndexPrefixOneByteERKNS_12HeaderRecordERKNS_11ICollectionINS_7IndexedINS_19AnalogOutputFloat32EEEEE@PLT
	.cfi_endproc
.LFE2409:
	.size	_ZN8opendnp322CommandResponseHandler13ProcessHeaderERKNS_12PrefixHeaderERKNS_11ICollectionINS_7IndexedINS_19AnalogOutputFloat32EEEEE, .-_ZN8opendnp322CommandResponseHandler13ProcessHeaderERKNS_12PrefixHeaderERKNS_11ICollectionINS_7IndexedINS_19AnalogOutputFloat32EEEEE
	.section	.text.unlikely
	.align 2
.LCOLDB9:
	.text
.LHOTB9:
	.align 2
	.p2align 4
	.globl	_ZN8opendnp322CommandResponseHandler25ProcessIndexPrefixOneByteERKNS_12HeaderRecordERKNS_11ICollectionINS_7IndexedINS_20AnalogOutputDouble64EEEEE
	.type	_ZN8opendnp322CommandResponseHandler25ProcessIndexPrefixOneByteERKNS_12HeaderRecordERKNS_11ICollectionINS_7IndexedINS_20AnalogOutputDouble64EEEEE, @function
_ZN8opendnp322CommandResponseHandler25ProcessIndexPrefixOneByteERKNS_12HeaderRecordERKNS_11ICollectionINS_7IndexedINS_20AnalogOutputDouble64EEEEE:
.LFB2420:
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA2420
	endbr64
	pushq	%r12
	.cfi_def_cfa_offset 16
	.cfi_offset 12, -16
	movq	%rdx, %r12
	pushq	%rbp
	.cfi_def_cfa_offset 24
	.cfi_offset 6, -24
	pushq	%rbx
	.cfi_def_cfa_offset 32
	.cfi_offset 3, -32
	movq	%rdi, %rbx
	subq	$112, %rsp
	.cfi_def_cfa_offset 144
	movq	48(%rdi), %rbp
	movq	%fs:40, %rax
	movq	%rax, 104(%rsp)
	xorl	%eax, %eax
	testq	%rbp, %rbp
	je	.L309
	movl	$11, %ecx
	movl	$23, %edx
	movl	$1065, %esi
	movq	%rbp, %rdi
.LEHB36:
	call	_ZN8opendnp312HeaderWriter22WriteHeaderWithReserveENS_16GroupVariationIDENS_13QualifierCodeEj@PLT
	testb	%al, %al
	jne	.L323
	pxor	%xmm0, %xmm0
	xorl	%ecx, %ecx
	leaq	80(%rsp), %rdi
	movl	$0, 48(%rsp)
	movl	$0, 72(%rsp)
	movw	%cx, 76(%rsp)
	movups	%xmm0, 56(%rsp)
	call	_ZN7openpal6WSliceC1Ev@PLT
.LEHE36:
	movq	$0, 96(%rsp)
.L311:
	xorl	%edx, %edx
	movq	%rbx, 24(%rsp)
	leaq	16(%rsp), %rsi
	movq	%r12, %rdi
	movq	_ZTVN8opendnp314FunctorVisitorINS_7IndexedINS_20AnalogOutputDouble64EEEZNS_22CommandResponseHandler27RespondToHeaderWithIteratorIS2_N7openpal11UInt8SimpleEEENS_8IINFieldENS_13QualifierCodeERKNS_14DNP3SerializerIT_EERKNS_11ICollectionINS1_ISB_EEEEPNS_21PrefixedWriteIteratorIT0_SB_EEEUlRKS3_E_EE@GOTPCREL(%rip), %rax
	movw	%dx, 14(%rsp)
	addq	$16, %rax
	movq	%rax, 16(%rsp)
	leaq	48(%rsp), %rax
	movq	%rax, 32(%rsp)
	leaq	14(%rsp), %rax
	movq	%rax, 40(%rsp)
	movq	(%r12), %rax
.LEHB37:
	call	*8(%rax)
.LEHE37:
	cmpb	$0, 77(%rsp)
	movzbl	14(%rsp), %ecx
	movzbl	15(%rsp), %edx
	je	.L313
	movzbl	76(%rsp), %esi
	movq	88(%rsp), %rax
	movb	%sil, (%rax)
.L313:
	xorl	%eax, %eax
	movb	%cl, %al
	movq	104(%rsp), %rcx
	xorq	%fs:40, %rcx
	movb	%dl, %ah
	jne	.L324
	addq	$112, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 32
	popq	%rbx
	.cfi_def_cfa_offset 24
	popq	%rbp
	.cfi_def_cfa_offset 16
	popq	%r12
	.cfi_def_cfa_offset 8
	ret
	.p2align 4,,10
	.p2align 3
.L323:
	.cfi_restore_state
	movq	_ZN8opendnp311Group41Var410ReadTargetERN7openpal6RSliceERNS_20AnalogOutputDouble64E@GOTPCREL(%rip), %xmm0
	movq	0(%rbp), %rdi
	movb	$0, 76(%rsp)
	movl	$9, 48(%rsp)
	movhps	_ZN8opendnp311Group41Var411WriteTargetERKNS_20AnalogOutputDouble64ERN7openpal6WSliceE@GOTPCREL(%rip), %xmm0
	movl	$10, 72(%rsp)
	movdqu	(%rdi), %xmm1
	movups	%xmm0, 56(%rsp)
	movl	(%rdi), %eax
	movq	%rdi, 96(%rsp)
	testl	%eax, %eax
	movaps	%xmm1, 80(%rsp)
	setne	77(%rsp)
	je	.L311
	movl	$1, %esi
.LEHB38:
	call	_ZN7openpal6WSlice7AdvanceEj@PLT
	jmp	.L311
	.p2align 4,,10
	.p2align 3
.L309:
	xorl	%eax, %eax
	movq	%rdi, 56(%rsp)
	leaq	48(%rsp), %rsi
	movq	%rdx, %rdi
	movw	%ax, 16(%rsp)
	movq	_ZTVN8opendnp314FunctorVisitorINS_7IndexedINS_20AnalogOutputDouble64EEEZNS_22CommandResponseHandler27RespondToHeaderWithIteratorIS2_N7openpal11UInt8SimpleEEENS_8IINFieldENS_13QualifierCodeERKNS_14DNP3SerializerIT_EERKNS_11ICollectionINS1_ISB_EEEEPNS_21PrefixedWriteIteratorIT0_SB_EEEUlRKS3_E_EE@GOTPCREL(%rip), %rax
	movq	$0, 64(%rsp)
	addq	$16, %rax
	movq	%rax, 48(%rsp)
	leaq	16(%rsp), %rax
	movq	%rax, 72(%rsp)
	movq	(%rdx), %rax
	call	*8(%rax)
.LEHE38:
	movzbl	16(%rsp), %ecx
	movzbl	17(%rsp), %edx
	jmp	.L313
.L324:
	call	__stack_chk_fail@PLT
.L317:
	endbr64
	movq	%rax, %rdi
	jmp	.L314
	.section	.gcc_except_table
.LLSDA2420:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE2420-.LLSDACSB2420
.LLSDACSB2420:
	.uleb128 .LEHB36-.LFB2420
	.uleb128 .LEHE36-.LEHB36
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB37-.LFB2420
	.uleb128 .LEHE37-.LEHB37
	.uleb128 .L317-.LFB2420
	.uleb128 0
	.uleb128 .LEHB38-.LFB2420
	.uleb128 .LEHE38-.LEHB38
	.uleb128 0
	.uleb128 0
.LLSDACSE2420:
	.text
	.cfi_endproc
	.section	.text.unlikely
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDAC2420
	.type	_ZN8opendnp322CommandResponseHandler25ProcessIndexPrefixOneByteERKNS_12HeaderRecordERKNS_11ICollectionINS_7IndexedINS_20AnalogOutputDouble64EEEEE.cold, @function
_ZN8opendnp322CommandResponseHandler25ProcessIndexPrefixOneByteERKNS_12HeaderRecordERKNS_11ICollectionINS_7IndexedINS_20AnalogOutputDouble64EEEEE.cold:
.LFSB2420:
.L314:
	.cfi_def_cfa_offset 144
	.cfi_offset 3, -32
	.cfi_offset 6, -24
	.cfi_offset 12, -16
	cmpb	$0, 77(%rsp)
	je	.L315
	movzbl	76(%rsp), %edx
	movq	88(%rsp), %rax
	movb	%dl, (%rax)
.L315:
.LEHB39:
	call	_Unwind_Resume@PLT
.LEHE39:
	.cfi_endproc
.LFE2420:
	.section	.gcc_except_table
.LLSDAC2420:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSEC2420-.LLSDACSBC2420
.LLSDACSBC2420:
	.uleb128 .LEHB39-.LCOLDB9
	.uleb128 .LEHE39-.LEHB39
	.uleb128 0
	.uleb128 0
.LLSDACSEC2420:
	.section	.text.unlikely
	.text
	.size	_ZN8opendnp322CommandResponseHandler25ProcessIndexPrefixOneByteERKNS_12HeaderRecordERKNS_11ICollectionINS_7IndexedINS_20AnalogOutputDouble64EEEEE, .-_ZN8opendnp322CommandResponseHandler25ProcessIndexPrefixOneByteERKNS_12HeaderRecordERKNS_11ICollectionINS_7IndexedINS_20AnalogOutputDouble64EEEEE
	.section	.text.unlikely
	.size	_ZN8opendnp322CommandResponseHandler25ProcessIndexPrefixOneByteERKNS_12HeaderRecordERKNS_11ICollectionINS_7IndexedINS_20AnalogOutputDouble64EEEEE.cold, .-_ZN8opendnp322CommandResponseHandler25ProcessIndexPrefixOneByteERKNS_12HeaderRecordERKNS_11ICollectionINS_7IndexedINS_20AnalogOutputDouble64EEEEE.cold
.LCOLDE9:
	.text
.LHOTE9:
	.align 2
	.p2align 4
	.globl	_ZN8opendnp322CommandResponseHandler13ProcessHeaderERKNS_12PrefixHeaderERKNS_11ICollectionINS_7IndexedINS_20AnalogOutputDouble64EEEEE
	.type	_ZN8opendnp322CommandResponseHandler13ProcessHeaderERKNS_12PrefixHeaderERKNS_11ICollectionINS_7IndexedINS_20AnalogOutputDouble64EEEEE, @function
_ZN8opendnp322CommandResponseHandler13ProcessHeaderERKNS_12PrefixHeaderERKNS_11ICollectionINS_7IndexedINS_20AnalogOutputDouble64EEEEE:
.LFB2410:
	.cfi_startproc
	endbr64
	pushq	%r13
	.cfi_def_cfa_offset 16
	.cfi_offset 13, -16
	movq	%rdx, %r13
	pushq	%r12
	.cfi_def_cfa_offset 24
	.cfi_offset 12, -24
	movq	%rdi, %r12
	movq	%rsi, %rdi
	pushq	%rbp
	.cfi_def_cfa_offset 32
	.cfi_offset 6, -32
	movq	%rsi, %rbp
	call	_ZNK8opendnp312HeaderRecord16GetQualifierCodeEv@PLT
	movq	%r13, %rdx
	movq	%rbp, %rsi
	movq	%r12, %rdi
	cmpb	$23, %al
	je	.L328
	popq	%rbp
	.cfi_remember_state
	.cfi_def_cfa_offset 24
	popq	%r12
	.cfi_def_cfa_offset 16
	popq	%r13
	.cfi_def_cfa_offset 8
	jmp	_ZN8opendnp322CommandResponseHandler25ProcessIndexPrefixTwoByteERKNS_12HeaderRecordERKNS_11ICollectionINS_7IndexedINS_20AnalogOutputDouble64EEEEE@PLT
	.p2align 4,,10
	.p2align 3
.L328:
	.cfi_restore_state
	popq	%rbp
	.cfi_def_cfa_offset 24
	popq	%r12
	.cfi_def_cfa_offset 16
	popq	%r13
	.cfi_def_cfa_offset 8
	jmp	_ZN8opendnp322CommandResponseHandler25ProcessIndexPrefixOneByteERKNS_12HeaderRecordERKNS_11ICollectionINS_7IndexedINS_20AnalogOutputDouble64EEEEE@PLT
	.cfi_endproc
.LFE2410:
	.size	_ZN8opendnp322CommandResponseHandler13ProcessHeaderERKNS_12PrefixHeaderERKNS_11ICollectionINS_7IndexedINS_20AnalogOutputDouble64EEEEE, .-_ZN8opendnp322CommandResponseHandler13ProcessHeaderERKNS_12PrefixHeaderERKNS_11ICollectionINS_7IndexedINS_20AnalogOutputDouble64EEEEE
	.weak	_ZTSN8opendnp322CommandResponseHandlerE
	.section	.rodata._ZTSN8opendnp322CommandResponseHandlerE,"aG",@progbits,_ZTSN8opendnp322CommandResponseHandlerE,comdat
	.align 32
	.type	_ZTSN8opendnp322CommandResponseHandlerE, @object
	.size	_ZTSN8opendnp322CommandResponseHandlerE, 36
_ZTSN8opendnp322CommandResponseHandlerE:
	.string	"N8opendnp322CommandResponseHandlerE"
	.weak	_ZTIN8opendnp322CommandResponseHandlerE
	.section	.data.rel.ro._ZTIN8opendnp322CommandResponseHandlerE,"awG",@progbits,_ZTIN8opendnp322CommandResponseHandlerE,comdat
	.align 8
	.type	_ZTIN8opendnp322CommandResponseHandlerE, @object
	.size	_ZTIN8opendnp322CommandResponseHandlerE, 24
_ZTIN8opendnp322CommandResponseHandlerE:
	.quad	_ZTVN10__cxxabiv120__si_class_type_infoE+16
	.quad	_ZTSN8opendnp322CommandResponseHandlerE
	.quad	_ZTIN8opendnp312IAPDUHandlerE
	.weak	_ZTSN8opendnp38IVisitorINS_7IndexedINS_23ControlRelayOutputBlockEEEEE
	.section	.rodata._ZTSN8opendnp38IVisitorINS_7IndexedINS_23ControlRelayOutputBlockEEEEE,"aG",@progbits,_ZTSN8opendnp38IVisitorINS_7IndexedINS_23ControlRelayOutputBlockEEEEE,comdat
	.align 32
	.type	_ZTSN8opendnp38IVisitorINS_7IndexedINS_23ControlRelayOutputBlockEEEEE, @object
	.size	_ZTSN8opendnp38IVisitorINS_7IndexedINS_23ControlRelayOutputBlockEEEEE, 66
_ZTSN8opendnp38IVisitorINS_7IndexedINS_23ControlRelayOutputBlockEEEEE:
	.string	"N8opendnp38IVisitorINS_7IndexedINS_23ControlRelayOutputBlockEEEEE"
	.weak	_ZTIN8opendnp38IVisitorINS_7IndexedINS_23ControlRelayOutputBlockEEEEE
	.section	.data.rel.ro._ZTIN8opendnp38IVisitorINS_7IndexedINS_23ControlRelayOutputBlockEEEEE,"awG",@progbits,_ZTIN8opendnp38IVisitorINS_7IndexedINS_23ControlRelayOutputBlockEEEEE,comdat
	.align 8
	.type	_ZTIN8opendnp38IVisitorINS_7IndexedINS_23ControlRelayOutputBlockEEEEE, @object
	.size	_ZTIN8opendnp38IVisitorINS_7IndexedINS_23ControlRelayOutputBlockEEEEE, 16
_ZTIN8opendnp38IVisitorINS_7IndexedINS_23ControlRelayOutputBlockEEEEE:
	.quad	_ZTVN10__cxxabiv117__class_type_infoE+16
	.quad	_ZTSN8opendnp38IVisitorINS_7IndexedINS_23ControlRelayOutputBlockEEEEE
	.weak	_ZTSN8opendnp314FunctorVisitorINS_7IndexedINS_23ControlRelayOutputBlockEEEZNS_22CommandResponseHandler27RespondToHeaderWithIteratorIS2_N7openpal7Bit16LEItEEEENS_8IINFieldENS_13QualifierCodeERKNS_14DNP3SerializerIT_EERKNS_11ICollectionINS1_ISC_EEEEPNS_21PrefixedWriteIteratorIT0_SC_EEEUlRKS3_E_EE
	.section	.rodata._ZTSN8opendnp314FunctorVisitorINS_7IndexedINS_23ControlRelayOutputBlockEEEZNS_22CommandResponseHandler27RespondToHeaderWithIteratorIS2_N7openpal7Bit16LEItEEEENS_8IINFieldENS_13QualifierCodeERKNS_14DNP3SerializerIT_EERKNS_11ICollectionINS1_ISC_EEEEPNS_21PrefixedWriteIteratorIT0_SC_EEEUlRKS3_E_EE,"aG",@progbits,_ZTSN8opendnp314FunctorVisitorINS_7IndexedINS_23ControlRelayOutputBlockEEEZNS_22CommandResponseHandler27RespondToHeaderWithIteratorIS2_N7openpal7Bit16LEItEEEENS_8IINFieldENS_13QualifierCodeERKNS_14DNP3SerializerIT_EERKNS_11ICollectionINS1_ISC_EEEEPNS_21PrefixedWriteIteratorIT0_SC_EEEUlRKS3_E_EE,comdat
	.align 32
	.type	_ZTSN8opendnp314FunctorVisitorINS_7IndexedINS_23ControlRelayOutputBlockEEEZNS_22CommandResponseHandler27RespondToHeaderWithIteratorIS2_N7openpal7Bit16LEItEEEENS_8IINFieldENS_13QualifierCodeERKNS_14DNP3SerializerIT_EERKNS_11ICollectionINS1_ISC_EEEEPNS_21PrefixedWriteIteratorIT0_SC_EEEUlRKS3_E_EE, @object
	.size	_ZTSN8opendnp314FunctorVisitorINS_7IndexedINS_23ControlRelayOutputBlockEEEZNS_22CommandResponseHandler27RespondToHeaderWithIteratorIS2_N7openpal7Bit16LEItEEEENS_8IINFieldENS_13QualifierCodeERKNS_14DNP3SerializerIT_EERKNS_11ICollectionINS1_ISC_EEEEPNS_21PrefixedWriteIteratorIT0_SC_EEEUlRKS3_E_EE, 292
_ZTSN8opendnp314FunctorVisitorINS_7IndexedINS_23ControlRelayOutputBlockEEEZNS_22CommandResponseHandler27RespondToHeaderWithIteratorIS2_N7openpal7Bit16LEItEEEENS_8IINFieldENS_13QualifierCodeERKNS_14DNP3SerializerIT_EERKNS_11ICollectionINS1_ISC_EEEEPNS_21PrefixedWriteIteratorIT0_SC_EEEUlRKS3_E_EE:
	.ascii	"N8opendnp314FunctorVisitorINS_7Inde"
	.string	"xedINS_23ControlRelayOutputBlockEEEZNS_22CommandResponseHandler27RespondToHeaderWithIteratorIS2_N7openpal7Bit16LEItEEEENS_8IINFieldENS_13QualifierCodeERKNS_14DNP3SerializerIT_EERKNS_11ICollectionINS1_ISC_EEEEPNS_21PrefixedWriteIteratorIT0_SC_EEEUlRKS3_E_EE"
	.weak	_ZTIN8opendnp314FunctorVisitorINS_7IndexedINS_23ControlRelayOutputBlockEEEZNS_22CommandResponseHandler27RespondToHeaderWithIteratorIS2_N7openpal7Bit16LEItEEEENS_8IINFieldENS_13QualifierCodeERKNS_14DNP3SerializerIT_EERKNS_11ICollectionINS1_ISC_EEEEPNS_21PrefixedWriteIteratorIT0_SC_EEEUlRKS3_E_EE
	.section	.data.rel.ro._ZTIN8opendnp314FunctorVisitorINS_7IndexedINS_23ControlRelayOutputBlockEEEZNS_22CommandResponseHandler27RespondToHeaderWithIteratorIS2_N7openpal7Bit16LEItEEEENS_8IINFieldENS_13QualifierCodeERKNS_14DNP3SerializerIT_EERKNS_11ICollectionINS1_ISC_EEEEPNS_21PrefixedWriteIteratorIT0_SC_EEEUlRKS3_E_EE,"awG",@progbits,_ZTIN8opendnp314FunctorVisitorINS_7IndexedINS_23ControlRelayOutputBlockEEEZNS_22CommandResponseHandler27RespondToHeaderWithIteratorIS2_N7openpal7Bit16LEItEEEENS_8IINFieldENS_13QualifierCodeERKNS_14DNP3SerializerIT_EERKNS_11ICollectionINS1_ISC_EEEEPNS_21PrefixedWriteIteratorIT0_SC_EEEUlRKS3_E_EE,comdat
	.align 8
	.type	_ZTIN8opendnp314FunctorVisitorINS_7IndexedINS_23ControlRelayOutputBlockEEEZNS_22CommandResponseHandler27RespondToHeaderWithIteratorIS2_N7openpal7Bit16LEItEEEENS_8IINFieldENS_13QualifierCodeERKNS_14DNP3SerializerIT_EERKNS_11ICollectionINS1_ISC_EEEEPNS_21PrefixedWriteIteratorIT0_SC_EEEUlRKS3_E_EE, @object
	.size	_ZTIN8opendnp314FunctorVisitorINS_7IndexedINS_23ControlRelayOutputBlockEEEZNS_22CommandResponseHandler27RespondToHeaderWithIteratorIS2_N7openpal7Bit16LEItEEEENS_8IINFieldENS_13QualifierCodeERKNS_14DNP3SerializerIT_EERKNS_11ICollectionINS1_ISC_EEEEPNS_21PrefixedWriteIteratorIT0_SC_EEEUlRKS3_E_EE, 24
_ZTIN8opendnp314FunctorVisitorINS_7IndexedINS_23ControlRelayOutputBlockEEEZNS_22CommandResponseHandler27RespondToHeaderWithIteratorIS2_N7openpal7Bit16LEItEEEENS_8IINFieldENS_13QualifierCodeERKNS_14DNP3SerializerIT_EERKNS_11ICollectionINS1_ISC_EEEEPNS_21PrefixedWriteIteratorIT0_SC_EEEUlRKS3_E_EE:
	.quad	_ZTVN10__cxxabiv120__si_class_type_infoE+16
	.quad	_ZTSN8opendnp314FunctorVisitorINS_7IndexedINS_23ControlRelayOutputBlockEEEZNS_22CommandResponseHandler27RespondToHeaderWithIteratorIS2_N7openpal7Bit16LEItEEEENS_8IINFieldENS_13QualifierCodeERKNS_14DNP3SerializerIT_EERKNS_11ICollectionINS1_ISC_EEEEPNS_21PrefixedWriteIteratorIT0_SC_EEEUlRKS3_E_EE
	.quad	_ZTIN8opendnp38IVisitorINS_7IndexedINS_23ControlRelayOutputBlockEEEEE
	.weak	_ZTSN8opendnp38IVisitorINS_7IndexedINS_17AnalogOutputInt16EEEEE
	.section	.rodata._ZTSN8opendnp38IVisitorINS_7IndexedINS_17AnalogOutputInt16EEEEE,"aG",@progbits,_ZTSN8opendnp38IVisitorINS_7IndexedINS_17AnalogOutputInt16EEEEE,comdat
	.align 32
	.type	_ZTSN8opendnp38IVisitorINS_7IndexedINS_17AnalogOutputInt16EEEEE, @object
	.size	_ZTSN8opendnp38IVisitorINS_7IndexedINS_17AnalogOutputInt16EEEEE, 60
_ZTSN8opendnp38IVisitorINS_7IndexedINS_17AnalogOutputInt16EEEEE:
	.string	"N8opendnp38IVisitorINS_7IndexedINS_17AnalogOutputInt16EEEEE"
	.weak	_ZTIN8opendnp38IVisitorINS_7IndexedINS_17AnalogOutputInt16EEEEE
	.section	.data.rel.ro._ZTIN8opendnp38IVisitorINS_7IndexedINS_17AnalogOutputInt16EEEEE,"awG",@progbits,_ZTIN8opendnp38IVisitorINS_7IndexedINS_17AnalogOutputInt16EEEEE,comdat
	.align 8
	.type	_ZTIN8opendnp38IVisitorINS_7IndexedINS_17AnalogOutputInt16EEEEE, @object
	.size	_ZTIN8opendnp38IVisitorINS_7IndexedINS_17AnalogOutputInt16EEEEE, 16
_ZTIN8opendnp38IVisitorINS_7IndexedINS_17AnalogOutputInt16EEEEE:
	.quad	_ZTVN10__cxxabiv117__class_type_infoE+16
	.quad	_ZTSN8opendnp38IVisitorINS_7IndexedINS_17AnalogOutputInt16EEEEE
	.weak	_ZTSN8opendnp314FunctorVisitorINS_7IndexedINS_17AnalogOutputInt16EEEZNS_22CommandResponseHandler27RespondToHeaderWithIteratorIS2_N7openpal7Bit16LEItEEEENS_8IINFieldENS_13QualifierCodeERKNS_14DNP3SerializerIT_EERKNS_11ICollectionINS1_ISC_EEEEPNS_21PrefixedWriteIteratorIT0_SC_EEEUlRKS3_E_EE
	.section	.rodata._ZTSN8opendnp314FunctorVisitorINS_7IndexedINS_17AnalogOutputInt16EEEZNS_22CommandResponseHandler27RespondToHeaderWithIteratorIS2_N7openpal7Bit16LEItEEEENS_8IINFieldENS_13QualifierCodeERKNS_14DNP3SerializerIT_EERKNS_11ICollectionINS1_ISC_EEEEPNS_21PrefixedWriteIteratorIT0_SC_EEEUlRKS3_E_EE,"aG",@progbits,_ZTSN8opendnp314FunctorVisitorINS_7IndexedINS_17AnalogOutputInt16EEEZNS_22CommandResponseHandler27RespondToHeaderWithIteratorIS2_N7openpal7Bit16LEItEEEENS_8IINFieldENS_13QualifierCodeERKNS_14DNP3SerializerIT_EERKNS_11ICollectionINS1_ISC_EEEEPNS_21PrefixedWriteIteratorIT0_SC_EEEUlRKS3_E_EE,comdat
	.align 32
	.type	_ZTSN8opendnp314FunctorVisitorINS_7IndexedINS_17AnalogOutputInt16EEEZNS_22CommandResponseHandler27RespondToHeaderWithIteratorIS2_N7openpal7Bit16LEItEEEENS_8IINFieldENS_13QualifierCodeERKNS_14DNP3SerializerIT_EERKNS_11ICollectionINS1_ISC_EEEEPNS_21PrefixedWriteIteratorIT0_SC_EEEUlRKS3_E_EE, @object
	.size	_ZTSN8opendnp314FunctorVisitorINS_7IndexedINS_17AnalogOutputInt16EEEZNS_22CommandResponseHandler27RespondToHeaderWithIteratorIS2_N7openpal7Bit16LEItEEEENS_8IINFieldENS_13QualifierCodeERKNS_14DNP3SerializerIT_EERKNS_11ICollectionINS1_ISC_EEEEPNS_21PrefixedWriteIteratorIT0_SC_EEEUlRKS3_E_EE, 286
_ZTSN8opendnp314FunctorVisitorINS_7IndexedINS_17AnalogOutputInt16EEEZNS_22CommandResponseHandler27RespondToHeaderWithIteratorIS2_N7openpal7Bit16LEItEEEENS_8IINFieldENS_13QualifierCodeERKNS_14DNP3SerializerIT_EERKNS_11ICollectionINS1_ISC_EEEEPNS_21PrefixedWriteIteratorIT0_SC_EEEUlRKS3_E_EE:
	.ascii	"N8opendnp314FunctorVisitorINS"
	.string	"_7IndexedINS_17AnalogOutputInt16EEEZNS_22CommandResponseHandler27RespondToHeaderWithIteratorIS2_N7openpal7Bit16LEItEEEENS_8IINFieldENS_13QualifierCodeERKNS_14DNP3SerializerIT_EERKNS_11ICollectionINS1_ISC_EEEEPNS_21PrefixedWriteIteratorIT0_SC_EEEUlRKS3_E_EE"
	.weak	_ZTIN8opendnp314FunctorVisitorINS_7IndexedINS_17AnalogOutputInt16EEEZNS_22CommandResponseHandler27RespondToHeaderWithIteratorIS2_N7openpal7Bit16LEItEEEENS_8IINFieldENS_13QualifierCodeERKNS_14DNP3SerializerIT_EERKNS_11ICollectionINS1_ISC_EEEEPNS_21PrefixedWriteIteratorIT0_SC_EEEUlRKS3_E_EE
	.section	.data.rel.ro._ZTIN8opendnp314FunctorVisitorINS_7IndexedINS_17AnalogOutputInt16EEEZNS_22CommandResponseHandler27RespondToHeaderWithIteratorIS2_N7openpal7Bit16LEItEEEENS_8IINFieldENS_13QualifierCodeERKNS_14DNP3SerializerIT_EERKNS_11ICollectionINS1_ISC_EEEEPNS_21PrefixedWriteIteratorIT0_SC_EEEUlRKS3_E_EE,"awG",@progbits,_ZTIN8opendnp314FunctorVisitorINS_7IndexedINS_17AnalogOutputInt16EEEZNS_22CommandResponseHandler27RespondToHeaderWithIteratorIS2_N7openpal7Bit16LEItEEEENS_8IINFieldENS_13QualifierCodeERKNS_14DNP3SerializerIT_EERKNS_11ICollectionINS1_ISC_EEEEPNS_21PrefixedWriteIteratorIT0_SC_EEEUlRKS3_E_EE,comdat
	.align 8
	.type	_ZTIN8opendnp314FunctorVisitorINS_7IndexedINS_17AnalogOutputInt16EEEZNS_22CommandResponseHandler27RespondToHeaderWithIteratorIS2_N7openpal7Bit16LEItEEEENS_8IINFieldENS_13QualifierCodeERKNS_14DNP3SerializerIT_EERKNS_11ICollectionINS1_ISC_EEEEPNS_21PrefixedWriteIteratorIT0_SC_EEEUlRKS3_E_EE, @object
	.size	_ZTIN8opendnp314FunctorVisitorINS_7IndexedINS_17AnalogOutputInt16EEEZNS_22CommandResponseHandler27RespondToHeaderWithIteratorIS2_N7openpal7Bit16LEItEEEENS_8IINFieldENS_13QualifierCodeERKNS_14DNP3SerializerIT_EERKNS_11ICollectionINS1_ISC_EEEEPNS_21PrefixedWriteIteratorIT0_SC_EEEUlRKS3_E_EE, 24
_ZTIN8opendnp314FunctorVisitorINS_7IndexedINS_17AnalogOutputInt16EEEZNS_22CommandResponseHandler27RespondToHeaderWithIteratorIS2_N7openpal7Bit16LEItEEEENS_8IINFieldENS_13QualifierCodeERKNS_14DNP3SerializerIT_EERKNS_11ICollectionINS1_ISC_EEEEPNS_21PrefixedWriteIteratorIT0_SC_EEEUlRKS3_E_EE:
	.quad	_ZTVN10__cxxabiv120__si_class_type_infoE+16
	.quad	_ZTSN8opendnp314FunctorVisitorINS_7IndexedINS_17AnalogOutputInt16EEEZNS_22CommandResponseHandler27RespondToHeaderWithIteratorIS2_N7openpal7Bit16LEItEEEENS_8IINFieldENS_13QualifierCodeERKNS_14DNP3SerializerIT_EERKNS_11ICollectionINS1_ISC_EEEEPNS_21PrefixedWriteIteratorIT0_SC_EEEUlRKS3_E_EE
	.quad	_ZTIN8opendnp38IVisitorINS_7IndexedINS_17AnalogOutputInt16EEEEE
	.weak	_ZTSN8opendnp38IVisitorINS_7IndexedINS_17AnalogOutputInt32EEEEE
	.section	.rodata._ZTSN8opendnp38IVisitorINS_7IndexedINS_17AnalogOutputInt32EEEEE,"aG",@progbits,_ZTSN8opendnp38IVisitorINS_7IndexedINS_17AnalogOutputInt32EEEEE,comdat
	.align 32
	.type	_ZTSN8opendnp38IVisitorINS_7IndexedINS_17AnalogOutputInt32EEEEE, @object
	.size	_ZTSN8opendnp38IVisitorINS_7IndexedINS_17AnalogOutputInt32EEEEE, 60
_ZTSN8opendnp38IVisitorINS_7IndexedINS_17AnalogOutputInt32EEEEE:
	.string	"N8opendnp38IVisitorINS_7IndexedINS_17AnalogOutputInt32EEEEE"
	.weak	_ZTIN8opendnp38IVisitorINS_7IndexedINS_17AnalogOutputInt32EEEEE
	.section	.data.rel.ro._ZTIN8opendnp38IVisitorINS_7IndexedINS_17AnalogOutputInt32EEEEE,"awG",@progbits,_ZTIN8opendnp38IVisitorINS_7IndexedINS_17AnalogOutputInt32EEEEE,comdat
	.align 8
	.type	_ZTIN8opendnp38IVisitorINS_7IndexedINS_17AnalogOutputInt32EEEEE, @object
	.size	_ZTIN8opendnp38IVisitorINS_7IndexedINS_17AnalogOutputInt32EEEEE, 16
_ZTIN8opendnp38IVisitorINS_7IndexedINS_17AnalogOutputInt32EEEEE:
	.quad	_ZTVN10__cxxabiv117__class_type_infoE+16
	.quad	_ZTSN8opendnp38IVisitorINS_7IndexedINS_17AnalogOutputInt32EEEEE
	.weak	_ZTSN8opendnp314FunctorVisitorINS_7IndexedINS_17AnalogOutputInt32EEEZNS_22CommandResponseHandler27RespondToHeaderWithIteratorIS2_N7openpal7Bit16LEItEEEENS_8IINFieldENS_13QualifierCodeERKNS_14DNP3SerializerIT_EERKNS_11ICollectionINS1_ISC_EEEEPNS_21PrefixedWriteIteratorIT0_SC_EEEUlRKS3_E_EE
	.section	.rodata._ZTSN8opendnp314FunctorVisitorINS_7IndexedINS_17AnalogOutputInt32EEEZNS_22CommandResponseHandler27RespondToHeaderWithIteratorIS2_N7openpal7Bit16LEItEEEENS_8IINFieldENS_13QualifierCodeERKNS_14DNP3SerializerIT_EERKNS_11ICollectionINS1_ISC_EEEEPNS_21PrefixedWriteIteratorIT0_SC_EEEUlRKS3_E_EE,"aG",@progbits,_ZTSN8opendnp314FunctorVisitorINS_7IndexedINS_17AnalogOutputInt32EEEZNS_22CommandResponseHandler27RespondToHeaderWithIteratorIS2_N7openpal7Bit16LEItEEEENS_8IINFieldENS_13QualifierCodeERKNS_14DNP3SerializerIT_EERKNS_11ICollectionINS1_ISC_EEEEPNS_21PrefixedWriteIteratorIT0_SC_EEEUlRKS3_E_EE,comdat
	.align 32
	.type	_ZTSN8opendnp314FunctorVisitorINS_7IndexedINS_17AnalogOutputInt32EEEZNS_22CommandResponseHandler27RespondToHeaderWithIteratorIS2_N7openpal7Bit16LEItEEEENS_8IINFieldENS_13QualifierCodeERKNS_14DNP3SerializerIT_EERKNS_11ICollectionINS1_ISC_EEEEPNS_21PrefixedWriteIteratorIT0_SC_EEEUlRKS3_E_EE, @object
	.size	_ZTSN8opendnp314FunctorVisitorINS_7IndexedINS_17AnalogOutputInt32EEEZNS_22CommandResponseHandler27RespondToHeaderWithIteratorIS2_N7openpal7Bit16LEItEEEENS_8IINFieldENS_13QualifierCodeERKNS_14DNP3SerializerIT_EERKNS_11ICollectionINS1_ISC_EEEEPNS_21PrefixedWriteIteratorIT0_SC_EEEUlRKS3_E_EE, 286
_ZTSN8opendnp314FunctorVisitorINS_7IndexedINS_17AnalogOutputInt32EEEZNS_22CommandResponseHandler27RespondToHeaderWithIteratorIS2_N7openpal7Bit16LEItEEEENS_8IINFieldENS_13QualifierCodeERKNS_14DNP3SerializerIT_EERKNS_11ICollectionINS1_ISC_EEEEPNS_21PrefixedWriteIteratorIT0_SC_EEEUlRKS3_E_EE:
	.ascii	"N8opendnp314FunctorVisitorINS"
	.string	"_7IndexedINS_17AnalogOutputInt32EEEZNS_22CommandResponseHandler27RespondToHeaderWithIteratorIS2_N7openpal7Bit16LEItEEEENS_8IINFieldENS_13QualifierCodeERKNS_14DNP3SerializerIT_EERKNS_11ICollectionINS1_ISC_EEEEPNS_21PrefixedWriteIteratorIT0_SC_EEEUlRKS3_E_EE"
	.weak	_ZTIN8opendnp314FunctorVisitorINS_7IndexedINS_17AnalogOutputInt32EEEZNS_22CommandResponseHandler27RespondToHeaderWithIteratorIS2_N7openpal7Bit16LEItEEEENS_8IINFieldENS_13QualifierCodeERKNS_14DNP3SerializerIT_EERKNS_11ICollectionINS1_ISC_EEEEPNS_21PrefixedWriteIteratorIT0_SC_EEEUlRKS3_E_EE
	.section	.data.rel.ro._ZTIN8opendnp314FunctorVisitorINS_7IndexedINS_17AnalogOutputInt32EEEZNS_22CommandResponseHandler27RespondToHeaderWithIteratorIS2_N7openpal7Bit16LEItEEEENS_8IINFieldENS_13QualifierCodeERKNS_14DNP3SerializerIT_EERKNS_11ICollectionINS1_ISC_EEEEPNS_21PrefixedWriteIteratorIT0_SC_EEEUlRKS3_E_EE,"awG",@progbits,_ZTIN8opendnp314FunctorVisitorINS_7IndexedINS_17AnalogOutputInt32EEEZNS_22CommandResponseHandler27RespondToHeaderWithIteratorIS2_N7openpal7Bit16LEItEEEENS_8IINFieldENS_13QualifierCodeERKNS_14DNP3SerializerIT_EERKNS_11ICollectionINS1_ISC_EEEEPNS_21PrefixedWriteIteratorIT0_SC_EEEUlRKS3_E_EE,comdat
	.align 8
	.type	_ZTIN8opendnp314FunctorVisitorINS_7IndexedINS_17AnalogOutputInt32EEEZNS_22CommandResponseHandler27RespondToHeaderWithIteratorIS2_N7openpal7Bit16LEItEEEENS_8IINFieldENS_13QualifierCodeERKNS_14DNP3SerializerIT_EERKNS_11ICollectionINS1_ISC_EEEEPNS_21PrefixedWriteIteratorIT0_SC_EEEUlRKS3_E_EE, @object
	.size	_ZTIN8opendnp314FunctorVisitorINS_7IndexedINS_17AnalogOutputInt32EEEZNS_22CommandResponseHandler27RespondToHeaderWithIteratorIS2_N7openpal7Bit16LEItEEEENS_8IINFieldENS_13QualifierCodeERKNS_14DNP3SerializerIT_EERKNS_11ICollectionINS1_ISC_EEEEPNS_21PrefixedWriteIteratorIT0_SC_EEEUlRKS3_E_EE, 24
_ZTIN8opendnp314FunctorVisitorINS_7IndexedINS_17AnalogOutputInt32EEEZNS_22CommandResponseHandler27RespondToHeaderWithIteratorIS2_N7openpal7Bit16LEItEEEENS_8IINFieldENS_13QualifierCodeERKNS_14DNP3SerializerIT_EERKNS_11ICollectionINS1_ISC_EEEEPNS_21PrefixedWriteIteratorIT0_SC_EEEUlRKS3_E_EE:
	.quad	_ZTVN10__cxxabiv120__si_class_type_infoE+16
	.quad	_ZTSN8opendnp314FunctorVisitorINS_7IndexedINS_17AnalogOutputInt32EEEZNS_22CommandResponseHandler27RespondToHeaderWithIteratorIS2_N7openpal7Bit16LEItEEEENS_8IINFieldENS_13QualifierCodeERKNS_14DNP3SerializerIT_EERKNS_11ICollectionINS1_ISC_EEEEPNS_21PrefixedWriteIteratorIT0_SC_EEEUlRKS3_E_EE
	.quad	_ZTIN8opendnp38IVisitorINS_7IndexedINS_17AnalogOutputInt32EEEEE
	.weak	_ZTSN8opendnp38IVisitorINS_7IndexedINS_19AnalogOutputFloat32EEEEE
	.section	.rodata._ZTSN8opendnp38IVisitorINS_7IndexedINS_19AnalogOutputFloat32EEEEE,"aG",@progbits,_ZTSN8opendnp38IVisitorINS_7IndexedINS_19AnalogOutputFloat32EEEEE,comdat
	.align 32
	.type	_ZTSN8opendnp38IVisitorINS_7IndexedINS_19AnalogOutputFloat32EEEEE, @object
	.size	_ZTSN8opendnp38IVisitorINS_7IndexedINS_19AnalogOutputFloat32EEEEE, 62
_ZTSN8opendnp38IVisitorINS_7IndexedINS_19AnalogOutputFloat32EEEEE:
	.string	"N8opendnp38IVisitorINS_7IndexedINS_19AnalogOutputFloat32EEEEE"
	.weak	_ZTIN8opendnp38IVisitorINS_7IndexedINS_19AnalogOutputFloat32EEEEE
	.section	.data.rel.ro._ZTIN8opendnp38IVisitorINS_7IndexedINS_19AnalogOutputFloat32EEEEE,"awG",@progbits,_ZTIN8opendnp38IVisitorINS_7IndexedINS_19AnalogOutputFloat32EEEEE,comdat
	.align 8
	.type	_ZTIN8opendnp38IVisitorINS_7IndexedINS_19AnalogOutputFloat32EEEEE, @object
	.size	_ZTIN8opendnp38IVisitorINS_7IndexedINS_19AnalogOutputFloat32EEEEE, 16
_ZTIN8opendnp38IVisitorINS_7IndexedINS_19AnalogOutputFloat32EEEEE:
	.quad	_ZTVN10__cxxabiv117__class_type_infoE+16
	.quad	_ZTSN8opendnp38IVisitorINS_7IndexedINS_19AnalogOutputFloat32EEEEE
	.weak	_ZTSN8opendnp314FunctorVisitorINS_7IndexedINS_19AnalogOutputFloat32EEEZNS_22CommandResponseHandler27RespondToHeaderWithIteratorIS2_N7openpal7Bit16LEItEEEENS_8IINFieldENS_13QualifierCodeERKNS_14DNP3SerializerIT_EERKNS_11ICollectionINS1_ISC_EEEEPNS_21PrefixedWriteIteratorIT0_SC_EEEUlRKS3_E_EE
	.section	.rodata._ZTSN8opendnp314FunctorVisitorINS_7IndexedINS_19AnalogOutputFloat32EEEZNS_22CommandResponseHandler27RespondToHeaderWithIteratorIS2_N7openpal7Bit16LEItEEEENS_8IINFieldENS_13QualifierCodeERKNS_14DNP3SerializerIT_EERKNS_11ICollectionINS1_ISC_EEEEPNS_21PrefixedWriteIteratorIT0_SC_EEEUlRKS3_E_EE,"aG",@progbits,_ZTSN8opendnp314FunctorVisitorINS_7IndexedINS_19AnalogOutputFloat32EEEZNS_22CommandResponseHandler27RespondToHeaderWithIteratorIS2_N7openpal7Bit16LEItEEEENS_8IINFieldENS_13QualifierCodeERKNS_14DNP3SerializerIT_EERKNS_11ICollectionINS1_ISC_EEEEPNS_21PrefixedWriteIteratorIT0_SC_EEEUlRKS3_E_EE,comdat
	.align 32
	.type	_ZTSN8opendnp314FunctorVisitorINS_7IndexedINS_19AnalogOutputFloat32EEEZNS_22CommandResponseHandler27RespondToHeaderWithIteratorIS2_N7openpal7Bit16LEItEEEENS_8IINFieldENS_13QualifierCodeERKNS_14DNP3SerializerIT_EERKNS_11ICollectionINS1_ISC_EEEEPNS_21PrefixedWriteIteratorIT0_SC_EEEUlRKS3_E_EE, @object
	.size	_ZTSN8opendnp314FunctorVisitorINS_7IndexedINS_19AnalogOutputFloat32EEEZNS_22CommandResponseHandler27RespondToHeaderWithIteratorIS2_N7openpal7Bit16LEItEEEENS_8IINFieldENS_13QualifierCodeERKNS_14DNP3SerializerIT_EERKNS_11ICollectionINS1_ISC_EEEEPNS_21PrefixedWriteIteratorIT0_SC_EEEUlRKS3_E_EE, 288
_ZTSN8opendnp314FunctorVisitorINS_7IndexedINS_19AnalogOutputFloat32EEEZNS_22CommandResponseHandler27RespondToHeaderWithIteratorIS2_N7openpal7Bit16LEItEEEENS_8IINFieldENS_13QualifierCodeERKNS_14DNP3SerializerIT_EERKNS_11ICollectionINS1_ISC_EEEEPNS_21PrefixedWriteIteratorIT0_SC_EEEUlRKS3_E_EE:
	.ascii	"N8opendnp314FunctorVisitorINS_7"
	.string	"IndexedINS_19AnalogOutputFloat32EEEZNS_22CommandResponseHandler27RespondToHeaderWithIteratorIS2_N7openpal7Bit16LEItEEEENS_8IINFieldENS_13QualifierCodeERKNS_14DNP3SerializerIT_EERKNS_11ICollectionINS1_ISC_EEEEPNS_21PrefixedWriteIteratorIT0_SC_EEEUlRKS3_E_EE"
	.weak	_ZTIN8opendnp314FunctorVisitorINS_7IndexedINS_19AnalogOutputFloat32EEEZNS_22CommandResponseHandler27RespondToHeaderWithIteratorIS2_N7openpal7Bit16LEItEEEENS_8IINFieldENS_13QualifierCodeERKNS_14DNP3SerializerIT_EERKNS_11ICollectionINS1_ISC_EEEEPNS_21PrefixedWriteIteratorIT0_SC_EEEUlRKS3_E_EE
	.section	.data.rel.ro._ZTIN8opendnp314FunctorVisitorINS_7IndexedINS_19AnalogOutputFloat32EEEZNS_22CommandResponseHandler27RespondToHeaderWithIteratorIS2_N7openpal7Bit16LEItEEEENS_8IINFieldENS_13QualifierCodeERKNS_14DNP3SerializerIT_EERKNS_11ICollectionINS1_ISC_EEEEPNS_21PrefixedWriteIteratorIT0_SC_EEEUlRKS3_E_EE,"awG",@progbits,_ZTIN8opendnp314FunctorVisitorINS_7IndexedINS_19AnalogOutputFloat32EEEZNS_22CommandResponseHandler27RespondToHeaderWithIteratorIS2_N7openpal7Bit16LEItEEEENS_8IINFieldENS_13QualifierCodeERKNS_14DNP3SerializerIT_EERKNS_11ICollectionINS1_ISC_EEEEPNS_21PrefixedWriteIteratorIT0_SC_EEEUlRKS3_E_EE,comdat
	.align 8
	.type	_ZTIN8opendnp314FunctorVisitorINS_7IndexedINS_19AnalogOutputFloat32EEEZNS_22CommandResponseHandler27RespondToHeaderWithIteratorIS2_N7openpal7Bit16LEItEEEENS_8IINFieldENS_13QualifierCodeERKNS_14DNP3SerializerIT_EERKNS_11ICollectionINS1_ISC_EEEEPNS_21PrefixedWriteIteratorIT0_SC_EEEUlRKS3_E_EE, @object
	.size	_ZTIN8opendnp314FunctorVisitorINS_7IndexedINS_19AnalogOutputFloat32EEEZNS_22CommandResponseHandler27RespondToHeaderWithIteratorIS2_N7openpal7Bit16LEItEEEENS_8IINFieldENS_13QualifierCodeERKNS_14DNP3SerializerIT_EERKNS_11ICollectionINS1_ISC_EEEEPNS_21PrefixedWriteIteratorIT0_SC_EEEUlRKS3_E_EE, 24
_ZTIN8opendnp314FunctorVisitorINS_7IndexedINS_19AnalogOutputFloat32EEEZNS_22CommandResponseHandler27RespondToHeaderWithIteratorIS2_N7openpal7Bit16LEItEEEENS_8IINFieldENS_13QualifierCodeERKNS_14DNP3SerializerIT_EERKNS_11ICollectionINS1_ISC_EEEEPNS_21PrefixedWriteIteratorIT0_SC_EEEUlRKS3_E_EE:
	.quad	_ZTVN10__cxxabiv120__si_class_type_infoE+16
	.quad	_ZTSN8opendnp314FunctorVisitorINS_7IndexedINS_19AnalogOutputFloat32EEEZNS_22CommandResponseHandler27RespondToHeaderWithIteratorIS2_N7openpal7Bit16LEItEEEENS_8IINFieldENS_13QualifierCodeERKNS_14DNP3SerializerIT_EERKNS_11ICollectionINS1_ISC_EEEEPNS_21PrefixedWriteIteratorIT0_SC_EEEUlRKS3_E_EE
	.quad	_ZTIN8opendnp38IVisitorINS_7IndexedINS_19AnalogOutputFloat32EEEEE
	.weak	_ZTSN8opendnp38IVisitorINS_7IndexedINS_20AnalogOutputDouble64EEEEE
	.section	.rodata._ZTSN8opendnp38IVisitorINS_7IndexedINS_20AnalogOutputDouble64EEEEE,"aG",@progbits,_ZTSN8opendnp38IVisitorINS_7IndexedINS_20AnalogOutputDouble64EEEEE,comdat
	.align 32
	.type	_ZTSN8opendnp38IVisitorINS_7IndexedINS_20AnalogOutputDouble64EEEEE, @object
	.size	_ZTSN8opendnp38IVisitorINS_7IndexedINS_20AnalogOutputDouble64EEEEE, 63
_ZTSN8opendnp38IVisitorINS_7IndexedINS_20AnalogOutputDouble64EEEEE:
	.string	"N8opendnp38IVisitorINS_7IndexedINS_20AnalogOutputDouble64EEEEE"
	.weak	_ZTIN8opendnp38IVisitorINS_7IndexedINS_20AnalogOutputDouble64EEEEE
	.section	.data.rel.ro._ZTIN8opendnp38IVisitorINS_7IndexedINS_20AnalogOutputDouble64EEEEE,"awG",@progbits,_ZTIN8opendnp38IVisitorINS_7IndexedINS_20AnalogOutputDouble64EEEEE,comdat
	.align 8
	.type	_ZTIN8opendnp38IVisitorINS_7IndexedINS_20AnalogOutputDouble64EEEEE, @object
	.size	_ZTIN8opendnp38IVisitorINS_7IndexedINS_20AnalogOutputDouble64EEEEE, 16
_ZTIN8opendnp38IVisitorINS_7IndexedINS_20AnalogOutputDouble64EEEEE:
	.quad	_ZTVN10__cxxabiv117__class_type_infoE+16
	.quad	_ZTSN8opendnp38IVisitorINS_7IndexedINS_20AnalogOutputDouble64EEEEE
	.weak	_ZTSN8opendnp314FunctorVisitorINS_7IndexedINS_20AnalogOutputDouble64EEEZNS_22CommandResponseHandler27RespondToHeaderWithIteratorIS2_N7openpal7Bit16LEItEEEENS_8IINFieldENS_13QualifierCodeERKNS_14DNP3SerializerIT_EERKNS_11ICollectionINS1_ISC_EEEEPNS_21PrefixedWriteIteratorIT0_SC_EEEUlRKS3_E_EE
	.section	.rodata._ZTSN8opendnp314FunctorVisitorINS_7IndexedINS_20AnalogOutputDouble64EEEZNS_22CommandResponseHandler27RespondToHeaderWithIteratorIS2_N7openpal7Bit16LEItEEEENS_8IINFieldENS_13QualifierCodeERKNS_14DNP3SerializerIT_EERKNS_11ICollectionINS1_ISC_EEEEPNS_21PrefixedWriteIteratorIT0_SC_EEEUlRKS3_E_EE,"aG",@progbits,_ZTSN8opendnp314FunctorVisitorINS_7IndexedINS_20AnalogOutputDouble64EEEZNS_22CommandResponseHandler27RespondToHeaderWithIteratorIS2_N7openpal7Bit16LEItEEEENS_8IINFieldENS_13QualifierCodeERKNS_14DNP3SerializerIT_EERKNS_11ICollectionINS1_ISC_EEEEPNS_21PrefixedWriteIteratorIT0_SC_EEEUlRKS3_E_EE,comdat
	.align 32
	.type	_ZTSN8opendnp314FunctorVisitorINS_7IndexedINS_20AnalogOutputDouble64EEEZNS_22CommandResponseHandler27RespondToHeaderWithIteratorIS2_N7openpal7Bit16LEItEEEENS_8IINFieldENS_13QualifierCodeERKNS_14DNP3SerializerIT_EERKNS_11ICollectionINS1_ISC_EEEEPNS_21PrefixedWriteIteratorIT0_SC_EEEUlRKS3_E_EE, @object
	.size	_ZTSN8opendnp314FunctorVisitorINS_7IndexedINS_20AnalogOutputDouble64EEEZNS_22CommandResponseHandler27RespondToHeaderWithIteratorIS2_N7openpal7Bit16LEItEEEENS_8IINFieldENS_13QualifierCodeERKNS_14DNP3SerializerIT_EERKNS_11ICollectionINS1_ISC_EEEEPNS_21PrefixedWriteIteratorIT0_SC_EEEUlRKS3_E_EE, 289
_ZTSN8opendnp314FunctorVisitorINS_7IndexedINS_20AnalogOutputDouble64EEEZNS_22CommandResponseHandler27RespondToHeaderWithIteratorIS2_N7openpal7Bit16LEItEEEENS_8IINFieldENS_13QualifierCodeERKNS_14DNP3SerializerIT_EERKNS_11ICollectionINS1_ISC_EEEEPNS_21PrefixedWriteIteratorIT0_SC_EEEUlRKS3_E_EE:
	.ascii	"N8opendnp314FunctorVisitorINS_7I"
	.string	"ndexedINS_20AnalogOutputDouble64EEEZNS_22CommandResponseHandler27RespondToHeaderWithIteratorIS2_N7openpal7Bit16LEItEEEENS_8IINFieldENS_13QualifierCodeERKNS_14DNP3SerializerIT_EERKNS_11ICollectionINS1_ISC_EEEEPNS_21PrefixedWriteIteratorIT0_SC_EEEUlRKS3_E_EE"
	.weak	_ZTIN8opendnp314FunctorVisitorINS_7IndexedINS_20AnalogOutputDouble64EEEZNS_22CommandResponseHandler27RespondToHeaderWithIteratorIS2_N7openpal7Bit16LEItEEEENS_8IINFieldENS_13QualifierCodeERKNS_14DNP3SerializerIT_EERKNS_11ICollectionINS1_ISC_EEEEPNS_21PrefixedWriteIteratorIT0_SC_EEEUlRKS3_E_EE
	.section	.data.rel.ro._ZTIN8opendnp314FunctorVisitorINS_7IndexedINS_20AnalogOutputDouble64EEEZNS_22CommandResponseHandler27RespondToHeaderWithIteratorIS2_N7openpal7Bit16LEItEEEENS_8IINFieldENS_13QualifierCodeERKNS_14DNP3SerializerIT_EERKNS_11ICollectionINS1_ISC_EEEEPNS_21PrefixedWriteIteratorIT0_SC_EEEUlRKS3_E_EE,"awG",@progbits,_ZTIN8opendnp314FunctorVisitorINS_7IndexedINS_20AnalogOutputDouble64EEEZNS_22CommandResponseHandler27RespondToHeaderWithIteratorIS2_N7openpal7Bit16LEItEEEENS_8IINFieldENS_13QualifierCodeERKNS_14DNP3SerializerIT_EERKNS_11ICollectionINS1_ISC_EEEEPNS_21PrefixedWriteIteratorIT0_SC_EEEUlRKS3_E_EE,comdat
	.align 8
	.type	_ZTIN8opendnp314FunctorVisitorINS_7IndexedINS_20AnalogOutputDouble64EEEZNS_22CommandResponseHandler27RespondToHeaderWithIteratorIS2_N7openpal7Bit16LEItEEEENS_8IINFieldENS_13QualifierCodeERKNS_14DNP3SerializerIT_EERKNS_11ICollectionINS1_ISC_EEEEPNS_21PrefixedWriteIteratorIT0_SC_EEEUlRKS3_E_EE, @object
	.size	_ZTIN8opendnp314FunctorVisitorINS_7IndexedINS_20AnalogOutputDouble64EEEZNS_22CommandResponseHandler27RespondToHeaderWithIteratorIS2_N7openpal7Bit16LEItEEEENS_8IINFieldENS_13QualifierCodeERKNS_14DNP3SerializerIT_EERKNS_11ICollectionINS1_ISC_EEEEPNS_21PrefixedWriteIteratorIT0_SC_EEEUlRKS3_E_EE, 24
_ZTIN8opendnp314FunctorVisitorINS_7IndexedINS_20AnalogOutputDouble64EEEZNS_22CommandResponseHandler27RespondToHeaderWithIteratorIS2_N7openpal7Bit16LEItEEEENS_8IINFieldENS_13QualifierCodeERKNS_14DNP3SerializerIT_EERKNS_11ICollectionINS1_ISC_EEEEPNS_21PrefixedWriteIteratorIT0_SC_EEEUlRKS3_E_EE:
	.quad	_ZTVN10__cxxabiv120__si_class_type_infoE+16
	.quad	_ZTSN8opendnp314FunctorVisitorINS_7IndexedINS_20AnalogOutputDouble64EEEZNS_22CommandResponseHandler27RespondToHeaderWithIteratorIS2_N7openpal7Bit16LEItEEEENS_8IINFieldENS_13QualifierCodeERKNS_14DNP3SerializerIT_EERKNS_11ICollectionINS1_ISC_EEEEPNS_21PrefixedWriteIteratorIT0_SC_EEEUlRKS3_E_EE
	.quad	_ZTIN8opendnp38IVisitorINS_7IndexedINS_20AnalogOutputDouble64EEEEE
	.weak	_ZTSN8opendnp314FunctorVisitorINS_7IndexedINS_23ControlRelayOutputBlockEEEZNS_22CommandResponseHandler27RespondToHeaderWithIteratorIS2_N7openpal11UInt8SimpleEEENS_8IINFieldENS_13QualifierCodeERKNS_14DNP3SerializerIT_EERKNS_11ICollectionINS1_ISB_EEEEPNS_21PrefixedWriteIteratorIT0_SB_EEEUlRKS3_E_EE
	.section	.rodata._ZTSN8opendnp314FunctorVisitorINS_7IndexedINS_23ControlRelayOutputBlockEEEZNS_22CommandResponseHandler27RespondToHeaderWithIteratorIS2_N7openpal11UInt8SimpleEEENS_8IINFieldENS_13QualifierCodeERKNS_14DNP3SerializerIT_EERKNS_11ICollectionINS1_ISB_EEEEPNS_21PrefixedWriteIteratorIT0_SB_EEEUlRKS3_E_EE,"aG",@progbits,_ZTSN8opendnp314FunctorVisitorINS_7IndexedINS_23ControlRelayOutputBlockEEEZNS_22CommandResponseHandler27RespondToHeaderWithIteratorIS2_N7openpal11UInt8SimpleEEENS_8IINFieldENS_13QualifierCodeERKNS_14DNP3SerializerIT_EERKNS_11ICollectionINS1_ISB_EEEEPNS_21PrefixedWriteIteratorIT0_SB_EEEUlRKS3_E_EE,comdat
	.align 32
	.type	_ZTSN8opendnp314FunctorVisitorINS_7IndexedINS_23ControlRelayOutputBlockEEEZNS_22CommandResponseHandler27RespondToHeaderWithIteratorIS2_N7openpal11UInt8SimpleEEENS_8IINFieldENS_13QualifierCodeERKNS_14DNP3SerializerIT_EERKNS_11ICollectionINS1_ISB_EEEEPNS_21PrefixedWriteIteratorIT0_SB_EEEUlRKS3_E_EE, @object
	.size	_ZTSN8opendnp314FunctorVisitorINS_7IndexedINS_23ControlRelayOutputBlockEEEZNS_22CommandResponseHandler27RespondToHeaderWithIteratorIS2_N7openpal11UInt8SimpleEEENS_8IINFieldENS_13QualifierCodeERKNS_14DNP3SerializerIT_EERKNS_11ICollectionINS1_ISB_EEEEPNS_21PrefixedWriteIteratorIT0_SB_EEEUlRKS3_E_EE, 294
_ZTSN8opendnp314FunctorVisitorINS_7IndexedINS_23ControlRelayOutputBlockEEEZNS_22CommandResponseHandler27RespondToHeaderWithIteratorIS2_N7openpal11UInt8SimpleEEENS_8IINFieldENS_13QualifierCodeERKNS_14DNP3SerializerIT_EERKNS_11ICollectionINS1_ISB_EEEEPNS_21PrefixedWriteIteratorIT0_SB_EEEUlRKS3_E_EE:
	.ascii	"N8opendnp314FunctorVisitorINS_7Indexe"
	.string	"dINS_23ControlRelayOutputBlockEEEZNS_22CommandResponseHandler27RespondToHeaderWithIteratorIS2_N7openpal11UInt8SimpleEEENS_8IINFieldENS_13QualifierCodeERKNS_14DNP3SerializerIT_EERKNS_11ICollectionINS1_ISB_EEEEPNS_21PrefixedWriteIteratorIT0_SB_EEEUlRKS3_E_EE"
	.weak	_ZTIN8opendnp314FunctorVisitorINS_7IndexedINS_23ControlRelayOutputBlockEEEZNS_22CommandResponseHandler27RespondToHeaderWithIteratorIS2_N7openpal11UInt8SimpleEEENS_8IINFieldENS_13QualifierCodeERKNS_14DNP3SerializerIT_EERKNS_11ICollectionINS1_ISB_EEEEPNS_21PrefixedWriteIteratorIT0_SB_EEEUlRKS3_E_EE
	.section	.data.rel.ro._ZTIN8opendnp314FunctorVisitorINS_7IndexedINS_23ControlRelayOutputBlockEEEZNS_22CommandResponseHandler27RespondToHeaderWithIteratorIS2_N7openpal11UInt8SimpleEEENS_8IINFieldENS_13QualifierCodeERKNS_14DNP3SerializerIT_EERKNS_11ICollectionINS1_ISB_EEEEPNS_21PrefixedWriteIteratorIT0_SB_EEEUlRKS3_E_EE,"awG",@progbits,_ZTIN8opendnp314FunctorVisitorINS_7IndexedINS_23ControlRelayOutputBlockEEEZNS_22CommandResponseHandler27RespondToHeaderWithIteratorIS2_N7openpal11UInt8SimpleEEENS_8IINFieldENS_13QualifierCodeERKNS_14DNP3SerializerIT_EERKNS_11ICollectionINS1_ISB_EEEEPNS_21PrefixedWriteIteratorIT0_SB_EEEUlRKS3_E_EE,comdat
	.align 8
	.type	_ZTIN8opendnp314FunctorVisitorINS_7IndexedINS_23ControlRelayOutputBlockEEEZNS_22CommandResponseHandler27RespondToHeaderWithIteratorIS2_N7openpal11UInt8SimpleEEENS_8IINFieldENS_13QualifierCodeERKNS_14DNP3SerializerIT_EERKNS_11ICollectionINS1_ISB_EEEEPNS_21PrefixedWriteIteratorIT0_SB_EEEUlRKS3_E_EE, @object
	.size	_ZTIN8opendnp314FunctorVisitorINS_7IndexedINS_23ControlRelayOutputBlockEEEZNS_22CommandResponseHandler27RespondToHeaderWithIteratorIS2_N7openpal11UInt8SimpleEEENS_8IINFieldENS_13QualifierCodeERKNS_14DNP3SerializerIT_EERKNS_11ICollectionINS1_ISB_EEEEPNS_21PrefixedWriteIteratorIT0_SB_EEEUlRKS3_E_EE, 24
_ZTIN8opendnp314FunctorVisitorINS_7IndexedINS_23ControlRelayOutputBlockEEEZNS_22CommandResponseHandler27RespondToHeaderWithIteratorIS2_N7openpal11UInt8SimpleEEENS_8IINFieldENS_13QualifierCodeERKNS_14DNP3SerializerIT_EERKNS_11ICollectionINS1_ISB_EEEEPNS_21PrefixedWriteIteratorIT0_SB_EEEUlRKS3_E_EE:
	.quad	_ZTVN10__cxxabiv120__si_class_type_infoE+16
	.quad	_ZTSN8opendnp314FunctorVisitorINS_7IndexedINS_23ControlRelayOutputBlockEEEZNS_22CommandResponseHandler27RespondToHeaderWithIteratorIS2_N7openpal11UInt8SimpleEEENS_8IINFieldENS_13QualifierCodeERKNS_14DNP3SerializerIT_EERKNS_11ICollectionINS1_ISB_EEEEPNS_21PrefixedWriteIteratorIT0_SB_EEEUlRKS3_E_EE
	.quad	_ZTIN8opendnp38IVisitorINS_7IndexedINS_23ControlRelayOutputBlockEEEEE
	.weak	_ZTSN8opendnp314FunctorVisitorINS_7IndexedINS_17AnalogOutputInt16EEEZNS_22CommandResponseHandler27RespondToHeaderWithIteratorIS2_N7openpal11UInt8SimpleEEENS_8IINFieldENS_13QualifierCodeERKNS_14DNP3SerializerIT_EERKNS_11ICollectionINS1_ISB_EEEEPNS_21PrefixedWriteIteratorIT0_SB_EEEUlRKS3_E_EE
	.section	.rodata._ZTSN8opendnp314FunctorVisitorINS_7IndexedINS_17AnalogOutputInt16EEEZNS_22CommandResponseHandler27RespondToHeaderWithIteratorIS2_N7openpal11UInt8SimpleEEENS_8IINFieldENS_13QualifierCodeERKNS_14DNP3SerializerIT_EERKNS_11ICollectionINS1_ISB_EEEEPNS_21PrefixedWriteIteratorIT0_SB_EEEUlRKS3_E_EE,"aG",@progbits,_ZTSN8opendnp314FunctorVisitorINS_7IndexedINS_17AnalogOutputInt16EEEZNS_22CommandResponseHandler27RespondToHeaderWithIteratorIS2_N7openpal11UInt8SimpleEEENS_8IINFieldENS_13QualifierCodeERKNS_14DNP3SerializerIT_EERKNS_11ICollectionINS1_ISB_EEEEPNS_21PrefixedWriteIteratorIT0_SB_EEEUlRKS3_E_EE,comdat
	.align 32
	.type	_ZTSN8opendnp314FunctorVisitorINS_7IndexedINS_17AnalogOutputInt16EEEZNS_22CommandResponseHandler27RespondToHeaderWithIteratorIS2_N7openpal11UInt8SimpleEEENS_8IINFieldENS_13QualifierCodeERKNS_14DNP3SerializerIT_EERKNS_11ICollectionINS1_ISB_EEEEPNS_21PrefixedWriteIteratorIT0_SB_EEEUlRKS3_E_EE, @object
	.size	_ZTSN8opendnp314FunctorVisitorINS_7IndexedINS_17AnalogOutputInt16EEEZNS_22CommandResponseHandler27RespondToHeaderWithIteratorIS2_N7openpal11UInt8SimpleEEENS_8IINFieldENS_13QualifierCodeERKNS_14DNP3SerializerIT_EERKNS_11ICollectionINS1_ISB_EEEEPNS_21PrefixedWriteIteratorIT0_SB_EEEUlRKS3_E_EE, 288
_ZTSN8opendnp314FunctorVisitorINS_7IndexedINS_17AnalogOutputInt16EEEZNS_22CommandResponseHandler27RespondToHeaderWithIteratorIS2_N7openpal11UInt8SimpleEEENS_8IINFieldENS_13QualifierCodeERKNS_14DNP3SerializerIT_EERKNS_11ICollectionINS1_ISB_EEEEPNS_21PrefixedWriteIteratorIT0_SB_EEEUlRKS3_E_EE:
	.ascii	"N8opendnp314FunctorVisitorINS_7"
	.string	"IndexedINS_17AnalogOutputInt16EEEZNS_22CommandResponseHandler27RespondToHeaderWithIteratorIS2_N7openpal11UInt8SimpleEEENS_8IINFieldENS_13QualifierCodeERKNS_14DNP3SerializerIT_EERKNS_11ICollectionINS1_ISB_EEEEPNS_21PrefixedWriteIteratorIT0_SB_EEEUlRKS3_E_EE"
	.weak	_ZTIN8opendnp314FunctorVisitorINS_7IndexedINS_17AnalogOutputInt16EEEZNS_22CommandResponseHandler27RespondToHeaderWithIteratorIS2_N7openpal11UInt8SimpleEEENS_8IINFieldENS_13QualifierCodeERKNS_14DNP3SerializerIT_EERKNS_11ICollectionINS1_ISB_EEEEPNS_21PrefixedWriteIteratorIT0_SB_EEEUlRKS3_E_EE
	.section	.data.rel.ro._ZTIN8opendnp314FunctorVisitorINS_7IndexedINS_17AnalogOutputInt16EEEZNS_22CommandResponseHandler27RespondToHeaderWithIteratorIS2_N7openpal11UInt8SimpleEEENS_8IINFieldENS_13QualifierCodeERKNS_14DNP3SerializerIT_EERKNS_11ICollectionINS1_ISB_EEEEPNS_21PrefixedWriteIteratorIT0_SB_EEEUlRKS3_E_EE,"awG",@progbits,_ZTIN8opendnp314FunctorVisitorINS_7IndexedINS_17AnalogOutputInt16EEEZNS_22CommandResponseHandler27RespondToHeaderWithIteratorIS2_N7openpal11UInt8SimpleEEENS_8IINFieldENS_13QualifierCodeERKNS_14DNP3SerializerIT_EERKNS_11ICollectionINS1_ISB_EEEEPNS_21PrefixedWriteIteratorIT0_SB_EEEUlRKS3_E_EE,comdat
	.align 8
	.type	_ZTIN8opendnp314FunctorVisitorINS_7IndexedINS_17AnalogOutputInt16EEEZNS_22CommandResponseHandler27RespondToHeaderWithIteratorIS2_N7openpal11UInt8SimpleEEENS_8IINFieldENS_13QualifierCodeERKNS_14DNP3SerializerIT_EERKNS_11ICollectionINS1_ISB_EEEEPNS_21PrefixedWriteIteratorIT0_SB_EEEUlRKS3_E_EE, @object
	.size	_ZTIN8opendnp314FunctorVisitorINS_7IndexedINS_17AnalogOutputInt16EEEZNS_22CommandResponseHandler27RespondToHeaderWithIteratorIS2_N7openpal11UInt8SimpleEEENS_8IINFieldENS_13QualifierCodeERKNS_14DNP3SerializerIT_EERKNS_11ICollectionINS1_ISB_EEEEPNS_21PrefixedWriteIteratorIT0_SB_EEEUlRKS3_E_EE, 24
_ZTIN8opendnp314FunctorVisitorINS_7IndexedINS_17AnalogOutputInt16EEEZNS_22CommandResponseHandler27RespondToHeaderWithIteratorIS2_N7openpal11UInt8SimpleEEENS_8IINFieldENS_13QualifierCodeERKNS_14DNP3SerializerIT_EERKNS_11ICollectionINS1_ISB_EEEEPNS_21PrefixedWriteIteratorIT0_SB_EEEUlRKS3_E_EE:
	.quad	_ZTVN10__cxxabiv120__si_class_type_infoE+16
	.quad	_ZTSN8opendnp314FunctorVisitorINS_7IndexedINS_17AnalogOutputInt16EEEZNS_22CommandResponseHandler27RespondToHeaderWithIteratorIS2_N7openpal11UInt8SimpleEEENS_8IINFieldENS_13QualifierCodeERKNS_14DNP3SerializerIT_EERKNS_11ICollectionINS1_ISB_EEEEPNS_21PrefixedWriteIteratorIT0_SB_EEEUlRKS3_E_EE
	.quad	_ZTIN8opendnp38IVisitorINS_7IndexedINS_17AnalogOutputInt16EEEEE
	.weak	_ZTSN8opendnp314FunctorVisitorINS_7IndexedINS_17AnalogOutputInt32EEEZNS_22CommandResponseHandler27RespondToHeaderWithIteratorIS2_N7openpal11UInt8SimpleEEENS_8IINFieldENS_13QualifierCodeERKNS_14DNP3SerializerIT_EERKNS_11ICollectionINS1_ISB_EEEEPNS_21PrefixedWriteIteratorIT0_SB_EEEUlRKS3_E_EE
	.section	.rodata._ZTSN8opendnp314FunctorVisitorINS_7IndexedINS_17AnalogOutputInt32EEEZNS_22CommandResponseHandler27RespondToHeaderWithIteratorIS2_N7openpal11UInt8SimpleEEENS_8IINFieldENS_13QualifierCodeERKNS_14DNP3SerializerIT_EERKNS_11ICollectionINS1_ISB_EEEEPNS_21PrefixedWriteIteratorIT0_SB_EEEUlRKS3_E_EE,"aG",@progbits,_ZTSN8opendnp314FunctorVisitorINS_7IndexedINS_17AnalogOutputInt32EEEZNS_22CommandResponseHandler27RespondToHeaderWithIteratorIS2_N7openpal11UInt8SimpleEEENS_8IINFieldENS_13QualifierCodeERKNS_14DNP3SerializerIT_EERKNS_11ICollectionINS1_ISB_EEEEPNS_21PrefixedWriteIteratorIT0_SB_EEEUlRKS3_E_EE,comdat
	.align 32
	.type	_ZTSN8opendnp314FunctorVisitorINS_7IndexedINS_17AnalogOutputInt32EEEZNS_22CommandResponseHandler27RespondToHeaderWithIteratorIS2_N7openpal11UInt8SimpleEEENS_8IINFieldENS_13QualifierCodeERKNS_14DNP3SerializerIT_EERKNS_11ICollectionINS1_ISB_EEEEPNS_21PrefixedWriteIteratorIT0_SB_EEEUlRKS3_E_EE, @object
	.size	_ZTSN8opendnp314FunctorVisitorINS_7IndexedINS_17AnalogOutputInt32EEEZNS_22CommandResponseHandler27RespondToHeaderWithIteratorIS2_N7openpal11UInt8SimpleEEENS_8IINFieldENS_13QualifierCodeERKNS_14DNP3SerializerIT_EERKNS_11ICollectionINS1_ISB_EEEEPNS_21PrefixedWriteIteratorIT0_SB_EEEUlRKS3_E_EE, 288
_ZTSN8opendnp314FunctorVisitorINS_7IndexedINS_17AnalogOutputInt32EEEZNS_22CommandResponseHandler27RespondToHeaderWithIteratorIS2_N7openpal11UInt8SimpleEEENS_8IINFieldENS_13QualifierCodeERKNS_14DNP3SerializerIT_EERKNS_11ICollectionINS1_ISB_EEEEPNS_21PrefixedWriteIteratorIT0_SB_EEEUlRKS3_E_EE:
	.ascii	"N8opendnp314FunctorVisitorINS_7"
	.string	"IndexedINS_17AnalogOutputInt32EEEZNS_22CommandResponseHandler27RespondToHeaderWithIteratorIS2_N7openpal11UInt8SimpleEEENS_8IINFieldENS_13QualifierCodeERKNS_14DNP3SerializerIT_EERKNS_11ICollectionINS1_ISB_EEEEPNS_21PrefixedWriteIteratorIT0_SB_EEEUlRKS3_E_EE"
	.weak	_ZTIN8opendnp314FunctorVisitorINS_7IndexedINS_17AnalogOutputInt32EEEZNS_22CommandResponseHandler27RespondToHeaderWithIteratorIS2_N7openpal11UInt8SimpleEEENS_8IINFieldENS_13QualifierCodeERKNS_14DNP3SerializerIT_EERKNS_11ICollectionINS1_ISB_EEEEPNS_21PrefixedWriteIteratorIT0_SB_EEEUlRKS3_E_EE
	.section	.data.rel.ro._ZTIN8opendnp314FunctorVisitorINS_7IndexedINS_17AnalogOutputInt32EEEZNS_22CommandResponseHandler27RespondToHeaderWithIteratorIS2_N7openpal11UInt8SimpleEEENS_8IINFieldENS_13QualifierCodeERKNS_14DNP3SerializerIT_EERKNS_11ICollectionINS1_ISB_EEEEPNS_21PrefixedWriteIteratorIT0_SB_EEEUlRKS3_E_EE,"awG",@progbits,_ZTIN8opendnp314FunctorVisitorINS_7IndexedINS_17AnalogOutputInt32EEEZNS_22CommandResponseHandler27RespondToHeaderWithIteratorIS2_N7openpal11UInt8SimpleEEENS_8IINFieldENS_13QualifierCodeERKNS_14DNP3SerializerIT_EERKNS_11ICollectionINS1_ISB_EEEEPNS_21PrefixedWriteIteratorIT0_SB_EEEUlRKS3_E_EE,comdat
	.align 8
	.type	_ZTIN8opendnp314FunctorVisitorINS_7IndexedINS_17AnalogOutputInt32EEEZNS_22CommandResponseHandler27RespondToHeaderWithIteratorIS2_N7openpal11UInt8SimpleEEENS_8IINFieldENS_13QualifierCodeERKNS_14DNP3SerializerIT_EERKNS_11ICollectionINS1_ISB_EEEEPNS_21PrefixedWriteIteratorIT0_SB_EEEUlRKS3_E_EE, @object
	.size	_ZTIN8opendnp314FunctorVisitorINS_7IndexedINS_17AnalogOutputInt32EEEZNS_22CommandResponseHandler27RespondToHeaderWithIteratorIS2_N7openpal11UInt8SimpleEEENS_8IINFieldENS_13QualifierCodeERKNS_14DNP3SerializerIT_EERKNS_11ICollectionINS1_ISB_EEEEPNS_21PrefixedWriteIteratorIT0_SB_EEEUlRKS3_E_EE, 24
_ZTIN8opendnp314FunctorVisitorINS_7IndexedINS_17AnalogOutputInt32EEEZNS_22CommandResponseHandler27RespondToHeaderWithIteratorIS2_N7openpal11UInt8SimpleEEENS_8IINFieldENS_13QualifierCodeERKNS_14DNP3SerializerIT_EERKNS_11ICollectionINS1_ISB_EEEEPNS_21PrefixedWriteIteratorIT0_SB_EEEUlRKS3_E_EE:
	.quad	_ZTVN10__cxxabiv120__si_class_type_infoE+16
	.quad	_ZTSN8opendnp314FunctorVisitorINS_7IndexedINS_17AnalogOutputInt32EEEZNS_22CommandResponseHandler27RespondToHeaderWithIteratorIS2_N7openpal11UInt8SimpleEEENS_8IINFieldENS_13QualifierCodeERKNS_14DNP3SerializerIT_EERKNS_11ICollectionINS1_ISB_EEEEPNS_21PrefixedWriteIteratorIT0_SB_EEEUlRKS3_E_EE
	.quad	_ZTIN8opendnp38IVisitorINS_7IndexedINS_17AnalogOutputInt32EEEEE
	.weak	_ZTSN8opendnp314FunctorVisitorINS_7IndexedINS_19AnalogOutputFloat32EEEZNS_22CommandResponseHandler27RespondToHeaderWithIteratorIS2_N7openpal11UInt8SimpleEEENS_8IINFieldENS_13QualifierCodeERKNS_14DNP3SerializerIT_EERKNS_11ICollectionINS1_ISB_EEEEPNS_21PrefixedWriteIteratorIT0_SB_EEEUlRKS3_E_EE
	.section	.rodata._ZTSN8opendnp314FunctorVisitorINS_7IndexedINS_19AnalogOutputFloat32EEEZNS_22CommandResponseHandler27RespondToHeaderWithIteratorIS2_N7openpal11UInt8SimpleEEENS_8IINFieldENS_13QualifierCodeERKNS_14DNP3SerializerIT_EERKNS_11ICollectionINS1_ISB_EEEEPNS_21PrefixedWriteIteratorIT0_SB_EEEUlRKS3_E_EE,"aG",@progbits,_ZTSN8opendnp314FunctorVisitorINS_7IndexedINS_19AnalogOutputFloat32EEEZNS_22CommandResponseHandler27RespondToHeaderWithIteratorIS2_N7openpal11UInt8SimpleEEENS_8IINFieldENS_13QualifierCodeERKNS_14DNP3SerializerIT_EERKNS_11ICollectionINS1_ISB_EEEEPNS_21PrefixedWriteIteratorIT0_SB_EEEUlRKS3_E_EE,comdat
	.align 32
	.type	_ZTSN8opendnp314FunctorVisitorINS_7IndexedINS_19AnalogOutputFloat32EEEZNS_22CommandResponseHandler27RespondToHeaderWithIteratorIS2_N7openpal11UInt8SimpleEEENS_8IINFieldENS_13QualifierCodeERKNS_14DNP3SerializerIT_EERKNS_11ICollectionINS1_ISB_EEEEPNS_21PrefixedWriteIteratorIT0_SB_EEEUlRKS3_E_EE, @object
	.size	_ZTSN8opendnp314FunctorVisitorINS_7IndexedINS_19AnalogOutputFloat32EEEZNS_22CommandResponseHandler27RespondToHeaderWithIteratorIS2_N7openpal11UInt8SimpleEEENS_8IINFieldENS_13QualifierCodeERKNS_14DNP3SerializerIT_EERKNS_11ICollectionINS1_ISB_EEEEPNS_21PrefixedWriteIteratorIT0_SB_EEEUlRKS3_E_EE, 290
_ZTSN8opendnp314FunctorVisitorINS_7IndexedINS_19AnalogOutputFloat32EEEZNS_22CommandResponseHandler27RespondToHeaderWithIteratorIS2_N7openpal11UInt8SimpleEEENS_8IINFieldENS_13QualifierCodeERKNS_14DNP3SerializerIT_EERKNS_11ICollectionINS1_ISB_EEEEPNS_21PrefixedWriteIteratorIT0_SB_EEEUlRKS3_E_EE:
	.ascii	"N8opendnp314FunctorVisitorINS_7In"
	.string	"dexedINS_19AnalogOutputFloat32EEEZNS_22CommandResponseHandler27RespondToHeaderWithIteratorIS2_N7openpal11UInt8SimpleEEENS_8IINFieldENS_13QualifierCodeERKNS_14DNP3SerializerIT_EERKNS_11ICollectionINS1_ISB_EEEEPNS_21PrefixedWriteIteratorIT0_SB_EEEUlRKS3_E_EE"
	.weak	_ZTIN8opendnp314FunctorVisitorINS_7IndexedINS_19AnalogOutputFloat32EEEZNS_22CommandResponseHandler27RespondToHeaderWithIteratorIS2_N7openpal11UInt8SimpleEEENS_8IINFieldENS_13QualifierCodeERKNS_14DNP3SerializerIT_EERKNS_11ICollectionINS1_ISB_EEEEPNS_21PrefixedWriteIteratorIT0_SB_EEEUlRKS3_E_EE
	.section	.data.rel.ro._ZTIN8opendnp314FunctorVisitorINS_7IndexedINS_19AnalogOutputFloat32EEEZNS_22CommandResponseHandler27RespondToHeaderWithIteratorIS2_N7openpal11UInt8SimpleEEENS_8IINFieldENS_13QualifierCodeERKNS_14DNP3SerializerIT_EERKNS_11ICollectionINS1_ISB_EEEEPNS_21PrefixedWriteIteratorIT0_SB_EEEUlRKS3_E_EE,"awG",@progbits,_ZTIN8opendnp314FunctorVisitorINS_7IndexedINS_19AnalogOutputFloat32EEEZNS_22CommandResponseHandler27RespondToHeaderWithIteratorIS2_N7openpal11UInt8SimpleEEENS_8IINFieldENS_13QualifierCodeERKNS_14DNP3SerializerIT_EERKNS_11ICollectionINS1_ISB_EEEEPNS_21PrefixedWriteIteratorIT0_SB_EEEUlRKS3_E_EE,comdat
	.align 8
	.type	_ZTIN8opendnp314FunctorVisitorINS_7IndexedINS_19AnalogOutputFloat32EEEZNS_22CommandResponseHandler27RespondToHeaderWithIteratorIS2_N7openpal11UInt8SimpleEEENS_8IINFieldENS_13QualifierCodeERKNS_14DNP3SerializerIT_EERKNS_11ICollectionINS1_ISB_EEEEPNS_21PrefixedWriteIteratorIT0_SB_EEEUlRKS3_E_EE, @object
	.size	_ZTIN8opendnp314FunctorVisitorINS_7IndexedINS_19AnalogOutputFloat32EEEZNS_22CommandResponseHandler27RespondToHeaderWithIteratorIS2_N7openpal11UInt8SimpleEEENS_8IINFieldENS_13QualifierCodeERKNS_14DNP3SerializerIT_EERKNS_11ICollectionINS1_ISB_EEEEPNS_21PrefixedWriteIteratorIT0_SB_EEEUlRKS3_E_EE, 24
_ZTIN8opendnp314FunctorVisitorINS_7IndexedINS_19AnalogOutputFloat32EEEZNS_22CommandResponseHandler27RespondToHeaderWithIteratorIS2_N7openpal11UInt8SimpleEEENS_8IINFieldENS_13QualifierCodeERKNS_14DNP3SerializerIT_EERKNS_11ICollectionINS1_ISB_EEEEPNS_21PrefixedWriteIteratorIT0_SB_EEEUlRKS3_E_EE:
	.quad	_ZTVN10__cxxabiv120__si_class_type_infoE+16
	.quad	_ZTSN8opendnp314FunctorVisitorINS_7IndexedINS_19AnalogOutputFloat32EEEZNS_22CommandResponseHandler27RespondToHeaderWithIteratorIS2_N7openpal11UInt8SimpleEEENS_8IINFieldENS_13QualifierCodeERKNS_14DNP3SerializerIT_EERKNS_11ICollectionINS1_ISB_EEEEPNS_21PrefixedWriteIteratorIT0_SB_EEEUlRKS3_E_EE
	.quad	_ZTIN8opendnp38IVisitorINS_7IndexedINS_19AnalogOutputFloat32EEEEE
	.weak	_ZTSN8opendnp314FunctorVisitorINS_7IndexedINS_20AnalogOutputDouble64EEEZNS_22CommandResponseHandler27RespondToHeaderWithIteratorIS2_N7openpal11UInt8SimpleEEENS_8IINFieldENS_13QualifierCodeERKNS_14DNP3SerializerIT_EERKNS_11ICollectionINS1_ISB_EEEEPNS_21PrefixedWriteIteratorIT0_SB_EEEUlRKS3_E_EE
	.section	.rodata._ZTSN8opendnp314FunctorVisitorINS_7IndexedINS_20AnalogOutputDouble64EEEZNS_22CommandResponseHandler27RespondToHeaderWithIteratorIS2_N7openpal11UInt8SimpleEEENS_8IINFieldENS_13QualifierCodeERKNS_14DNP3SerializerIT_EERKNS_11ICollectionINS1_ISB_EEEEPNS_21PrefixedWriteIteratorIT0_SB_EEEUlRKS3_E_EE,"aG",@progbits,_ZTSN8opendnp314FunctorVisitorINS_7IndexedINS_20AnalogOutputDouble64EEEZNS_22CommandResponseHandler27RespondToHeaderWithIteratorIS2_N7openpal11UInt8SimpleEEENS_8IINFieldENS_13QualifierCodeERKNS_14DNP3SerializerIT_EERKNS_11ICollectionINS1_ISB_EEEEPNS_21PrefixedWriteIteratorIT0_SB_EEEUlRKS3_E_EE,comdat
	.align 32
	.type	_ZTSN8opendnp314FunctorVisitorINS_7IndexedINS_20AnalogOutputDouble64EEEZNS_22CommandResponseHandler27RespondToHeaderWithIteratorIS2_N7openpal11UInt8SimpleEEENS_8IINFieldENS_13QualifierCodeERKNS_14DNP3SerializerIT_EERKNS_11ICollectionINS1_ISB_EEEEPNS_21PrefixedWriteIteratorIT0_SB_EEEUlRKS3_E_EE, @object
	.size	_ZTSN8opendnp314FunctorVisitorINS_7IndexedINS_20AnalogOutputDouble64EEEZNS_22CommandResponseHandler27RespondToHeaderWithIteratorIS2_N7openpal11UInt8SimpleEEENS_8IINFieldENS_13QualifierCodeERKNS_14DNP3SerializerIT_EERKNS_11ICollectionINS1_ISB_EEEEPNS_21PrefixedWriteIteratorIT0_SB_EEEUlRKS3_E_EE, 291
_ZTSN8opendnp314FunctorVisitorINS_7IndexedINS_20AnalogOutputDouble64EEEZNS_22CommandResponseHandler27RespondToHeaderWithIteratorIS2_N7openpal11UInt8SimpleEEENS_8IINFieldENS_13QualifierCodeERKNS_14DNP3SerializerIT_EERKNS_11ICollectionINS1_ISB_EEEEPNS_21PrefixedWriteIteratorIT0_SB_EEEUlRKS3_E_EE:
	.ascii	"N8opendnp314FunctorVisitorINS_7Ind"
	.string	"exedINS_20AnalogOutputDouble64EEEZNS_22CommandResponseHandler27RespondToHeaderWithIteratorIS2_N7openpal11UInt8SimpleEEENS_8IINFieldENS_13QualifierCodeERKNS_14DNP3SerializerIT_EERKNS_11ICollectionINS1_ISB_EEEEPNS_21PrefixedWriteIteratorIT0_SB_EEEUlRKS3_E_EE"
	.weak	_ZTIN8opendnp314FunctorVisitorINS_7IndexedINS_20AnalogOutputDouble64EEEZNS_22CommandResponseHandler27RespondToHeaderWithIteratorIS2_N7openpal11UInt8SimpleEEENS_8IINFieldENS_13QualifierCodeERKNS_14DNP3SerializerIT_EERKNS_11ICollectionINS1_ISB_EEEEPNS_21PrefixedWriteIteratorIT0_SB_EEEUlRKS3_E_EE
	.section	.data.rel.ro._ZTIN8opendnp314FunctorVisitorINS_7IndexedINS_20AnalogOutputDouble64EEEZNS_22CommandResponseHandler27RespondToHeaderWithIteratorIS2_N7openpal11UInt8SimpleEEENS_8IINFieldENS_13QualifierCodeERKNS_14DNP3SerializerIT_EERKNS_11ICollectionINS1_ISB_EEEEPNS_21PrefixedWriteIteratorIT0_SB_EEEUlRKS3_E_EE,"awG",@progbits,_ZTIN8opendnp314FunctorVisitorINS_7IndexedINS_20AnalogOutputDouble64EEEZNS_22CommandResponseHandler27RespondToHeaderWithIteratorIS2_N7openpal11UInt8SimpleEEENS_8IINFieldENS_13QualifierCodeERKNS_14DNP3SerializerIT_EERKNS_11ICollectionINS1_ISB_EEEEPNS_21PrefixedWriteIteratorIT0_SB_EEEUlRKS3_E_EE,comdat
	.align 8
	.type	_ZTIN8opendnp314FunctorVisitorINS_7IndexedINS_20AnalogOutputDouble64EEEZNS_22CommandResponseHandler27RespondToHeaderWithIteratorIS2_N7openpal11UInt8SimpleEEENS_8IINFieldENS_13QualifierCodeERKNS_14DNP3SerializerIT_EERKNS_11ICollectionINS1_ISB_EEEEPNS_21PrefixedWriteIteratorIT0_SB_EEEUlRKS3_E_EE, @object
	.size	_ZTIN8opendnp314FunctorVisitorINS_7IndexedINS_20AnalogOutputDouble64EEEZNS_22CommandResponseHandler27RespondToHeaderWithIteratorIS2_N7openpal11UInt8SimpleEEENS_8IINFieldENS_13QualifierCodeERKNS_14DNP3SerializerIT_EERKNS_11ICollectionINS1_ISB_EEEEPNS_21PrefixedWriteIteratorIT0_SB_EEEUlRKS3_E_EE, 24
_ZTIN8opendnp314FunctorVisitorINS_7IndexedINS_20AnalogOutputDouble64EEEZNS_22CommandResponseHandler27RespondToHeaderWithIteratorIS2_N7openpal11UInt8SimpleEEENS_8IINFieldENS_13QualifierCodeERKNS_14DNP3SerializerIT_EERKNS_11ICollectionINS1_ISB_EEEEPNS_21PrefixedWriteIteratorIT0_SB_EEEUlRKS3_E_EE:
	.quad	_ZTVN10__cxxabiv120__si_class_type_infoE+16
	.quad	_ZTSN8opendnp314FunctorVisitorINS_7IndexedINS_20AnalogOutputDouble64EEEZNS_22CommandResponseHandler27RespondToHeaderWithIteratorIS2_N7openpal11UInt8SimpleEEENS_8IINFieldENS_13QualifierCodeERKNS_14DNP3SerializerIT_EERKNS_11ICollectionINS1_ISB_EEEEPNS_21PrefixedWriteIteratorIT0_SB_EEEUlRKS3_E_EE
	.quad	_ZTIN8opendnp38IVisitorINS_7IndexedINS_20AnalogOutputDouble64EEEEE
	.weak	_ZTVN8opendnp322CommandResponseHandlerE
	.section	.data.rel.ro._ZTVN8opendnp322CommandResponseHandlerE,"awG",@progbits,_ZTVN8opendnp322CommandResponseHandlerE,comdat
	.align 8
	.type	_ZTVN8opendnp322CommandResponseHandlerE, @object
	.size	_ZTVN8opendnp322CommandResponseHandlerE, 448
_ZTVN8opendnp322CommandResponseHandlerE:
	.quad	0
	.quad	_ZTIN8opendnp322CommandResponseHandlerE
	.quad	_ZN8opendnp322CommandResponseHandler9IsAllowedEjNS_14GroupVariationENS_13QualifierCodeE
	.quad	_ZN8opendnp312IAPDUHandler13ProcessHeaderERKNS_16AllObjectsHeaderE
	.quad	_ZN8opendnp312IAPDUHandler13ProcessHeaderERKNS_11RangeHeaderE
	.quad	_ZN8opendnp312IAPDUHandler13ProcessHeaderERKNS_11CountHeaderE
	.quad	_ZN8opendnp312IAPDUHandler13ProcessHeaderERKNS_16FreeFormatHeaderERKNS_12Group120Var1ERKN7openpal6RSliceE
	.quad	_ZN8opendnp312IAPDUHandler13ProcessHeaderERKNS_16FreeFormatHeaderERKNS_12Group120Var2ERKN7openpal6RSliceE
	.quad	_ZN8opendnp312IAPDUHandler13ProcessHeaderERKNS_16FreeFormatHeaderERKNS_12Group120Var5ERKN7openpal6RSliceE
	.quad	_ZN8opendnp312IAPDUHandler13ProcessHeaderERKNS_16FreeFormatHeaderERKNS_12Group120Var6ERKN7openpal6RSliceE
	.quad	_ZN8opendnp312IAPDUHandler13ProcessHeaderERKNS_16FreeFormatHeaderERKNS_12Group120Var8ERKN7openpal6RSliceE
	.quad	_ZN8opendnp312IAPDUHandler13ProcessHeaderERKNS_16FreeFormatHeaderERKNS_12Group120Var7ERKN7openpal6RSliceE
	.quad	_ZN8opendnp312IAPDUHandler13ProcessHeaderERKNS_16FreeFormatHeaderERKNS_12Group120Var9ERKN7openpal6RSliceE
	.quad	_ZN8opendnp312IAPDUHandler13ProcessHeaderERKNS_16FreeFormatHeaderERKNS_13Group120Var10ERKN7openpal6RSliceE
	.quad	_ZN8opendnp312IAPDUHandler13ProcessHeaderERKNS_16FreeFormatHeaderERKNS_13Group120Var11ERKN7openpal6RSliceE
	.quad	_ZN8opendnp312IAPDUHandler13ProcessHeaderERKNS_16FreeFormatHeaderERKNS_13Group120Var12ERKN7openpal6RSliceE
	.quad	_ZN8opendnp312IAPDUHandler13ProcessHeaderERKNS_16FreeFormatHeaderERKNS_13Group120Var13ERKN7openpal6RSliceE
	.quad	_ZN8opendnp312IAPDUHandler13ProcessHeaderERKNS_16FreeFormatHeaderERKNS_13Group120Var14ERKN7openpal6RSliceE
	.quad	_ZN8opendnp312IAPDUHandler13ProcessHeaderERKNS_16FreeFormatHeaderERKNS_13Group120Var15ERKN7openpal6RSliceE
	.quad	_ZN8opendnp312IAPDUHandler13ProcessHeaderERKNS_11CountHeaderERKNS_11ICollectionINS_11Group50Var1EEE
	.quad	_ZN8opendnp312IAPDUHandler13ProcessHeaderERKNS_11CountHeaderERKNS_11ICollectionINS_11Group51Var1EEE
	.quad	_ZN8opendnp312IAPDUHandler13ProcessHeaderERKNS_11CountHeaderERKNS_11ICollectionINS_11Group51Var2EEE
	.quad	_ZN8opendnp312IAPDUHandler13ProcessHeaderERKNS_11CountHeaderERKNS_11ICollectionINS_11Group52Var1EEE
	.quad	_ZN8opendnp312IAPDUHandler13ProcessHeaderERKNS_11CountHeaderERKNS_11ICollectionINS_11Group52Var2EEE
	.quad	_ZN8opendnp312IAPDUHandler13ProcessHeaderERKNS_11CountHeaderERKNS_11ICollectionINS_12Group120Var3EEE
	.quad	_ZN8opendnp312IAPDUHandler13ProcessHeaderERKNS_11CountHeaderERKNS_11ICollectionINS_12Group120Var4EEE
	.quad	_ZN8opendnp312IAPDUHandler13ProcessHeaderERKNS_11RangeHeaderERKNS_11ICollectionINS_7IndexedINS_8IINValueEEEEE
	.quad	_ZN8opendnp312IAPDUHandler13ProcessHeaderERKNS_11RangeHeaderERKNS_11ICollectionINS_7IndexedINS_6BinaryEEEEE
	.quad	_ZN8opendnp312IAPDUHandler13ProcessHeaderERKNS_11RangeHeaderERKNS_11ICollectionINS_7IndexedINS_15DoubleBitBinaryEEEEE
	.quad	_ZN8opendnp312IAPDUHandler13ProcessHeaderERKNS_11RangeHeaderERKNS_11ICollectionINS_7IndexedINS_18BinaryOutputStatusEEEEE
	.quad	_ZN8opendnp312IAPDUHandler13ProcessHeaderERKNS_11RangeHeaderERKNS_11ICollectionINS_7IndexedINS_7CounterEEEEE
	.quad	_ZN8opendnp312IAPDUHandler13ProcessHeaderERKNS_11RangeHeaderERKNS_11ICollectionINS_7IndexedINS_13FrozenCounterEEEEE
	.quad	_ZN8opendnp312IAPDUHandler13ProcessHeaderERKNS_11RangeHeaderERKNS_11ICollectionINS_7IndexedINS_6AnalogEEEEE
	.quad	_ZN8opendnp312IAPDUHandler13ProcessHeaderERKNS_11RangeHeaderERKNS_11ICollectionINS_7IndexedINS_18AnalogOutputStatusEEEEE
	.quad	_ZN8opendnp312IAPDUHandler13ProcessHeaderERKNS_11RangeHeaderERKNS_11ICollectionINS_7IndexedINS_11OctetStringEEEEE
	.quad	_ZN8opendnp312IAPDUHandler13ProcessHeaderERKNS_11RangeHeaderERKNS_11ICollectionINS_7IndexedINS_15TimeAndIntervalEEEEE
	.quad	_ZN8opendnp312IAPDUHandler13ProcessHeaderERKNS_11RangeHeaderERKNS_11ICollectionINS_7IndexedINS_12Group121Var1EEEEE
	.quad	_ZN8opendnp312IAPDUHandler13ProcessHeaderERKNS_12PrefixHeaderERKNS_11ICollectionINS_7IndexedINS_6BinaryEEEEE
	.quad	_ZN8opendnp312IAPDUHandler13ProcessHeaderERKNS_12PrefixHeaderERKNS_11ICollectionINS_7IndexedINS_18BinaryOutputStatusEEEEE
	.quad	_ZN8opendnp312IAPDUHandler13ProcessHeaderERKNS_12PrefixHeaderERKNS_11ICollectionINS_7IndexedINS_15DoubleBitBinaryEEEEE
	.quad	_ZN8opendnp312IAPDUHandler13ProcessHeaderERKNS_12PrefixHeaderERKNS_11ICollectionINS_7IndexedINS_7CounterEEEEE
	.quad	_ZN8opendnp312IAPDUHandler13ProcessHeaderERKNS_12PrefixHeaderERKNS_11ICollectionINS_7IndexedINS_13FrozenCounterEEEEE
	.quad	_ZN8opendnp312IAPDUHandler13ProcessHeaderERKNS_12PrefixHeaderERKNS_11ICollectionINS_7IndexedINS_6AnalogEEEEE
	.quad	_ZN8opendnp312IAPDUHandler13ProcessHeaderERKNS_12PrefixHeaderERKNS_11ICollectionINS_7IndexedINS_18AnalogOutputStatusEEEEE
	.quad	_ZN8opendnp312IAPDUHandler13ProcessHeaderERKNS_12PrefixHeaderERKNS_11ICollectionINS_7IndexedINS_11OctetStringEEEEE
	.quad	_ZN8opendnp312IAPDUHandler13ProcessHeaderERKNS_12PrefixHeaderERKNS_11ICollectionINS_7IndexedINS_15TimeAndIntervalEEEEE
	.quad	_ZN8opendnp312IAPDUHandler13ProcessHeaderERKNS_12PrefixHeaderERKNS_11ICollectionINS_7IndexedINS_18BinaryCommandEventEEEEE
	.quad	_ZN8opendnp312IAPDUHandler13ProcessHeaderERKNS_12PrefixHeaderERKNS_11ICollectionINS_7IndexedINS_18AnalogCommandEventEEEEE
	.quad	_ZN8opendnp312IAPDUHandler13ProcessHeaderERKNS_12PrefixHeaderERKNS_11ICollectionINS_7IndexedINS_12Group122Var1EEEEE
	.quad	_ZN8opendnp312IAPDUHandler13ProcessHeaderERKNS_12PrefixHeaderERKNS_11ICollectionINS_7IndexedINS_12Group122Var2EEEEE
	.quad	_ZN8opendnp322CommandResponseHandler13ProcessHeaderERKNS_12PrefixHeaderERKNS_11ICollectionINS_7IndexedINS_23ControlRelayOutputBlockEEEEE
	.quad	_ZN8opendnp322CommandResponseHandler13ProcessHeaderERKNS_12PrefixHeaderERKNS_11ICollectionINS_7IndexedINS_17AnalogOutputInt16EEEEE
	.quad	_ZN8opendnp322CommandResponseHandler13ProcessHeaderERKNS_12PrefixHeaderERKNS_11ICollectionINS_7IndexedINS_17AnalogOutputInt32EEEEE
	.quad	_ZN8opendnp322CommandResponseHandler13ProcessHeaderERKNS_12PrefixHeaderERKNS_11ICollectionINS_7IndexedINS_19AnalogOutputFloat32EEEEE
	.quad	_ZN8opendnp322CommandResponseHandler13ProcessHeaderERKNS_12PrefixHeaderERKNS_11ICollectionINS_7IndexedINS_20AnalogOutputDouble64EEEEE
	.quad	_ZN8opendnp312IAPDUHandler14OnHeaderResultERKNS_12HeaderRecordERKNS_8IINFieldE
	.weak	_ZTVN8opendnp314FunctorVisitorINS_7IndexedINS_23ControlRelayOutputBlockEEEZNS_22CommandResponseHandler27RespondToHeaderWithIteratorIS2_N7openpal7Bit16LEItEEEENS_8IINFieldENS_13QualifierCodeERKNS_14DNP3SerializerIT_EERKNS_11ICollectionINS1_ISC_EEEEPNS_21PrefixedWriteIteratorIT0_SC_EEEUlRKS3_E_EE
	.section	.data.rel.ro._ZTVN8opendnp314FunctorVisitorINS_7IndexedINS_23ControlRelayOutputBlockEEEZNS_22CommandResponseHandler27RespondToHeaderWithIteratorIS2_N7openpal7Bit16LEItEEEENS_8IINFieldENS_13QualifierCodeERKNS_14DNP3SerializerIT_EERKNS_11ICollectionINS1_ISC_EEEEPNS_21PrefixedWriteIteratorIT0_SC_EEEUlRKS3_E_EE,"awG",@progbits,_ZTVN8opendnp314FunctorVisitorINS_7IndexedINS_23ControlRelayOutputBlockEEEZNS_22CommandResponseHandler27RespondToHeaderWithIteratorIS2_N7openpal7Bit16LEItEEEENS_8IINFieldENS_13QualifierCodeERKNS_14DNP3SerializerIT_EERKNS_11ICollectionINS1_ISC_EEEEPNS_21PrefixedWriteIteratorIT0_SC_EEEUlRKS3_E_EE,comdat
	.align 8
	.type	_ZTVN8opendnp314FunctorVisitorINS_7IndexedINS_23ControlRelayOutputBlockEEEZNS_22CommandResponseHandler27RespondToHeaderWithIteratorIS2_N7openpal7Bit16LEItEEEENS_8IINFieldENS_13QualifierCodeERKNS_14DNP3SerializerIT_EERKNS_11ICollectionINS1_ISC_EEEEPNS_21PrefixedWriteIteratorIT0_SC_EEEUlRKS3_E_EE, @object
	.size	_ZTVN8opendnp314FunctorVisitorINS_7IndexedINS_23ControlRelayOutputBlockEEEZNS_22CommandResponseHandler27RespondToHeaderWithIteratorIS2_N7openpal7Bit16LEItEEEENS_8IINFieldENS_13QualifierCodeERKNS_14DNP3SerializerIT_EERKNS_11ICollectionINS1_ISC_EEEEPNS_21PrefixedWriteIteratorIT0_SC_EEEUlRKS3_E_EE, 24
_ZTVN8opendnp314FunctorVisitorINS_7IndexedINS_23ControlRelayOutputBlockEEEZNS_22CommandResponseHandler27RespondToHeaderWithIteratorIS2_N7openpal7Bit16LEItEEEENS_8IINFieldENS_13QualifierCodeERKNS_14DNP3SerializerIT_EERKNS_11ICollectionINS1_ISC_EEEEPNS_21PrefixedWriteIteratorIT0_SC_EEEUlRKS3_E_EE:
	.quad	0
	.quad	_ZTIN8opendnp314FunctorVisitorINS_7IndexedINS_23ControlRelayOutputBlockEEEZNS_22CommandResponseHandler27RespondToHeaderWithIteratorIS2_N7openpal7Bit16LEItEEEENS_8IINFieldENS_13QualifierCodeERKNS_14DNP3SerializerIT_EERKNS_11ICollectionINS1_ISC_EEEEPNS_21PrefixedWriteIteratorIT0_SC_EEEUlRKS3_E_EE
	.quad	_ZN8opendnp314FunctorVisitorINS_7IndexedINS_23ControlRelayOutputBlockEEEZNS_22CommandResponseHandler27RespondToHeaderWithIteratorIS2_N7openpal7Bit16LEItEEEENS_8IINFieldENS_13QualifierCodeERKNS_14DNP3SerializerIT_EERKNS_11ICollectionINS1_ISC_EEEEPNS_21PrefixedWriteIteratorIT0_SC_EEEUlRKS3_E_E7OnValueESQ_
	.weak	_ZTVN8opendnp314FunctorVisitorINS_7IndexedINS_17AnalogOutputInt16EEEZNS_22CommandResponseHandler27RespondToHeaderWithIteratorIS2_N7openpal7Bit16LEItEEEENS_8IINFieldENS_13QualifierCodeERKNS_14DNP3SerializerIT_EERKNS_11ICollectionINS1_ISC_EEEEPNS_21PrefixedWriteIteratorIT0_SC_EEEUlRKS3_E_EE
	.section	.data.rel.ro._ZTVN8opendnp314FunctorVisitorINS_7IndexedINS_17AnalogOutputInt16EEEZNS_22CommandResponseHandler27RespondToHeaderWithIteratorIS2_N7openpal7Bit16LEItEEEENS_8IINFieldENS_13QualifierCodeERKNS_14DNP3SerializerIT_EERKNS_11ICollectionINS1_ISC_EEEEPNS_21PrefixedWriteIteratorIT0_SC_EEEUlRKS3_E_EE,"awG",@progbits,_ZTVN8opendnp314FunctorVisitorINS_7IndexedINS_17AnalogOutputInt16EEEZNS_22CommandResponseHandler27RespondToHeaderWithIteratorIS2_N7openpal7Bit16LEItEEEENS_8IINFieldENS_13QualifierCodeERKNS_14DNP3SerializerIT_EERKNS_11ICollectionINS1_ISC_EEEEPNS_21PrefixedWriteIteratorIT0_SC_EEEUlRKS3_E_EE,comdat
	.align 8
	.type	_ZTVN8opendnp314FunctorVisitorINS_7IndexedINS_17AnalogOutputInt16EEEZNS_22CommandResponseHandler27RespondToHeaderWithIteratorIS2_N7openpal7Bit16LEItEEEENS_8IINFieldENS_13QualifierCodeERKNS_14DNP3SerializerIT_EERKNS_11ICollectionINS1_ISC_EEEEPNS_21PrefixedWriteIteratorIT0_SC_EEEUlRKS3_E_EE, @object
	.size	_ZTVN8opendnp314FunctorVisitorINS_7IndexedINS_17AnalogOutputInt16EEEZNS_22CommandResponseHandler27RespondToHeaderWithIteratorIS2_N7openpal7Bit16LEItEEEENS_8IINFieldENS_13QualifierCodeERKNS_14DNP3SerializerIT_EERKNS_11ICollectionINS1_ISC_EEEEPNS_21PrefixedWriteIteratorIT0_SC_EEEUlRKS3_E_EE, 24
_ZTVN8opendnp314FunctorVisitorINS_7IndexedINS_17AnalogOutputInt16EEEZNS_22CommandResponseHandler27RespondToHeaderWithIteratorIS2_N7openpal7Bit16LEItEEEENS_8IINFieldENS_13QualifierCodeERKNS_14DNP3SerializerIT_EERKNS_11ICollectionINS1_ISC_EEEEPNS_21PrefixedWriteIteratorIT0_SC_EEEUlRKS3_E_EE:
	.quad	0
	.quad	_ZTIN8opendnp314FunctorVisitorINS_7IndexedINS_17AnalogOutputInt16EEEZNS_22CommandResponseHandler27RespondToHeaderWithIteratorIS2_N7openpal7Bit16LEItEEEENS_8IINFieldENS_13QualifierCodeERKNS_14DNP3SerializerIT_EERKNS_11ICollectionINS1_ISC_EEEEPNS_21PrefixedWriteIteratorIT0_SC_EEEUlRKS3_E_EE
	.quad	_ZN8opendnp314FunctorVisitorINS_7IndexedINS_17AnalogOutputInt16EEEZNS_22CommandResponseHandler27RespondToHeaderWithIteratorIS2_N7openpal7Bit16LEItEEEENS_8IINFieldENS_13QualifierCodeERKNS_14DNP3SerializerIT_EERKNS_11ICollectionINS1_ISC_EEEEPNS_21PrefixedWriteIteratorIT0_SC_EEEUlRKS3_E_E7OnValueESQ_
	.weak	_ZTVN8opendnp314FunctorVisitorINS_7IndexedINS_17AnalogOutputInt32EEEZNS_22CommandResponseHandler27RespondToHeaderWithIteratorIS2_N7openpal7Bit16LEItEEEENS_8IINFieldENS_13QualifierCodeERKNS_14DNP3SerializerIT_EERKNS_11ICollectionINS1_ISC_EEEEPNS_21PrefixedWriteIteratorIT0_SC_EEEUlRKS3_E_EE
	.section	.data.rel.ro._ZTVN8opendnp314FunctorVisitorINS_7IndexedINS_17AnalogOutputInt32EEEZNS_22CommandResponseHandler27RespondToHeaderWithIteratorIS2_N7openpal7Bit16LEItEEEENS_8IINFieldENS_13QualifierCodeERKNS_14DNP3SerializerIT_EERKNS_11ICollectionINS1_ISC_EEEEPNS_21PrefixedWriteIteratorIT0_SC_EEEUlRKS3_E_EE,"awG",@progbits,_ZTVN8opendnp314FunctorVisitorINS_7IndexedINS_17AnalogOutputInt32EEEZNS_22CommandResponseHandler27RespondToHeaderWithIteratorIS2_N7openpal7Bit16LEItEEEENS_8IINFieldENS_13QualifierCodeERKNS_14DNP3SerializerIT_EERKNS_11ICollectionINS1_ISC_EEEEPNS_21PrefixedWriteIteratorIT0_SC_EEEUlRKS3_E_EE,comdat
	.align 8
	.type	_ZTVN8opendnp314FunctorVisitorINS_7IndexedINS_17AnalogOutputInt32EEEZNS_22CommandResponseHandler27RespondToHeaderWithIteratorIS2_N7openpal7Bit16LEItEEEENS_8IINFieldENS_13QualifierCodeERKNS_14DNP3SerializerIT_EERKNS_11ICollectionINS1_ISC_EEEEPNS_21PrefixedWriteIteratorIT0_SC_EEEUlRKS3_E_EE, @object
	.size	_ZTVN8opendnp314FunctorVisitorINS_7IndexedINS_17AnalogOutputInt32EEEZNS_22CommandResponseHandler27RespondToHeaderWithIteratorIS2_N7openpal7Bit16LEItEEEENS_8IINFieldENS_13QualifierCodeERKNS_14DNP3SerializerIT_EERKNS_11ICollectionINS1_ISC_EEEEPNS_21PrefixedWriteIteratorIT0_SC_EEEUlRKS3_E_EE, 24
_ZTVN8opendnp314FunctorVisitorINS_7IndexedINS_17AnalogOutputInt32EEEZNS_22CommandResponseHandler27RespondToHeaderWithIteratorIS2_N7openpal7Bit16LEItEEEENS_8IINFieldENS_13QualifierCodeERKNS_14DNP3SerializerIT_EERKNS_11ICollectionINS1_ISC_EEEEPNS_21PrefixedWriteIteratorIT0_SC_EEEUlRKS3_E_EE:
	.quad	0
	.quad	_ZTIN8opendnp314FunctorVisitorINS_7IndexedINS_17AnalogOutputInt32EEEZNS_22CommandResponseHandler27RespondToHeaderWithIteratorIS2_N7openpal7Bit16LEItEEEENS_8IINFieldENS_13QualifierCodeERKNS_14DNP3SerializerIT_EERKNS_11ICollectionINS1_ISC_EEEEPNS_21PrefixedWriteIteratorIT0_SC_EEEUlRKS3_E_EE
	.quad	_ZN8opendnp314FunctorVisitorINS_7IndexedINS_17AnalogOutputInt32EEEZNS_22CommandResponseHandler27RespondToHeaderWithIteratorIS2_N7openpal7Bit16LEItEEEENS_8IINFieldENS_13QualifierCodeERKNS_14DNP3SerializerIT_EERKNS_11ICollectionINS1_ISC_EEEEPNS_21PrefixedWriteIteratorIT0_SC_EEEUlRKS3_E_E7OnValueESQ_
	.weak	_ZTVN8opendnp314FunctorVisitorINS_7IndexedINS_19AnalogOutputFloat32EEEZNS_22CommandResponseHandler27RespondToHeaderWithIteratorIS2_N7openpal7Bit16LEItEEEENS_8IINFieldENS_13QualifierCodeERKNS_14DNP3SerializerIT_EERKNS_11ICollectionINS1_ISC_EEEEPNS_21PrefixedWriteIteratorIT0_SC_EEEUlRKS3_E_EE
	.section	.data.rel.ro._ZTVN8opendnp314FunctorVisitorINS_7IndexedINS_19AnalogOutputFloat32EEEZNS_22CommandResponseHandler27RespondToHeaderWithIteratorIS2_N7openpal7Bit16LEItEEEENS_8IINFieldENS_13QualifierCodeERKNS_14DNP3SerializerIT_EERKNS_11ICollectionINS1_ISC_EEEEPNS_21PrefixedWriteIteratorIT0_SC_EEEUlRKS3_E_EE,"awG",@progbits,_ZTVN8opendnp314FunctorVisitorINS_7IndexedINS_19AnalogOutputFloat32EEEZNS_22CommandResponseHandler27RespondToHeaderWithIteratorIS2_N7openpal7Bit16LEItEEEENS_8IINFieldENS_13QualifierCodeERKNS_14DNP3SerializerIT_EERKNS_11ICollectionINS1_ISC_EEEEPNS_21PrefixedWriteIteratorIT0_SC_EEEUlRKS3_E_EE,comdat
	.align 8
	.type	_ZTVN8opendnp314FunctorVisitorINS_7IndexedINS_19AnalogOutputFloat32EEEZNS_22CommandResponseHandler27RespondToHeaderWithIteratorIS2_N7openpal7Bit16LEItEEEENS_8IINFieldENS_13QualifierCodeERKNS_14DNP3SerializerIT_EERKNS_11ICollectionINS1_ISC_EEEEPNS_21PrefixedWriteIteratorIT0_SC_EEEUlRKS3_E_EE, @object
	.size	_ZTVN8opendnp314FunctorVisitorINS_7IndexedINS_19AnalogOutputFloat32EEEZNS_22CommandResponseHandler27RespondToHeaderWithIteratorIS2_N7openpal7Bit16LEItEEEENS_8IINFieldENS_13QualifierCodeERKNS_14DNP3SerializerIT_EERKNS_11ICollectionINS1_ISC_EEEEPNS_21PrefixedWriteIteratorIT0_SC_EEEUlRKS3_E_EE, 24
_ZTVN8opendnp314FunctorVisitorINS_7IndexedINS_19AnalogOutputFloat32EEEZNS_22CommandResponseHandler27RespondToHeaderWithIteratorIS2_N7openpal7Bit16LEItEEEENS_8IINFieldENS_13QualifierCodeERKNS_14DNP3SerializerIT_EERKNS_11ICollectionINS1_ISC_EEEEPNS_21PrefixedWriteIteratorIT0_SC_EEEUlRKS3_E_EE:
	.quad	0
	.quad	_ZTIN8opendnp314FunctorVisitorINS_7IndexedINS_19AnalogOutputFloat32EEEZNS_22CommandResponseHandler27RespondToHeaderWithIteratorIS2_N7openpal7Bit16LEItEEEENS_8IINFieldENS_13QualifierCodeERKNS_14DNP3SerializerIT_EERKNS_11ICollectionINS1_ISC_EEEEPNS_21PrefixedWriteIteratorIT0_SC_EEEUlRKS3_E_EE
	.quad	_ZN8opendnp314FunctorVisitorINS_7IndexedINS_19AnalogOutputFloat32EEEZNS_22CommandResponseHandler27RespondToHeaderWithIteratorIS2_N7openpal7Bit16LEItEEEENS_8IINFieldENS_13QualifierCodeERKNS_14DNP3SerializerIT_EERKNS_11ICollectionINS1_ISC_EEEEPNS_21PrefixedWriteIteratorIT0_SC_EEEUlRKS3_E_E7OnValueESQ_
	.weak	_ZTVN8opendnp314FunctorVisitorINS_7IndexedINS_20AnalogOutputDouble64EEEZNS_22CommandResponseHandler27RespondToHeaderWithIteratorIS2_N7openpal7Bit16LEItEEEENS_8IINFieldENS_13QualifierCodeERKNS_14DNP3SerializerIT_EERKNS_11ICollectionINS1_ISC_EEEEPNS_21PrefixedWriteIteratorIT0_SC_EEEUlRKS3_E_EE
	.section	.data.rel.ro._ZTVN8opendnp314FunctorVisitorINS_7IndexedINS_20AnalogOutputDouble64EEEZNS_22CommandResponseHandler27RespondToHeaderWithIteratorIS2_N7openpal7Bit16LEItEEEENS_8IINFieldENS_13QualifierCodeERKNS_14DNP3SerializerIT_EERKNS_11ICollectionINS1_ISC_EEEEPNS_21PrefixedWriteIteratorIT0_SC_EEEUlRKS3_E_EE,"awG",@progbits,_ZTVN8opendnp314FunctorVisitorINS_7IndexedINS_20AnalogOutputDouble64EEEZNS_22CommandResponseHandler27RespondToHeaderWithIteratorIS2_N7openpal7Bit16LEItEEEENS_8IINFieldENS_13QualifierCodeERKNS_14DNP3SerializerIT_EERKNS_11ICollectionINS1_ISC_EEEEPNS_21PrefixedWriteIteratorIT0_SC_EEEUlRKS3_E_EE,comdat
	.align 8
	.type	_ZTVN8opendnp314FunctorVisitorINS_7IndexedINS_20AnalogOutputDouble64EEEZNS_22CommandResponseHandler27RespondToHeaderWithIteratorIS2_N7openpal7Bit16LEItEEEENS_8IINFieldENS_13QualifierCodeERKNS_14DNP3SerializerIT_EERKNS_11ICollectionINS1_ISC_EEEEPNS_21PrefixedWriteIteratorIT0_SC_EEEUlRKS3_E_EE, @object
	.size	_ZTVN8opendnp314FunctorVisitorINS_7IndexedINS_20AnalogOutputDouble64EEEZNS_22CommandResponseHandler27RespondToHeaderWithIteratorIS2_N7openpal7Bit16LEItEEEENS_8IINFieldENS_13QualifierCodeERKNS_14DNP3SerializerIT_EERKNS_11ICollectionINS1_ISC_EEEEPNS_21PrefixedWriteIteratorIT0_SC_EEEUlRKS3_E_EE, 24
_ZTVN8opendnp314FunctorVisitorINS_7IndexedINS_20AnalogOutputDouble64EEEZNS_22CommandResponseHandler27RespondToHeaderWithIteratorIS2_N7openpal7Bit16LEItEEEENS_8IINFieldENS_13QualifierCodeERKNS_14DNP3SerializerIT_EERKNS_11ICollectionINS1_ISC_EEEEPNS_21PrefixedWriteIteratorIT0_SC_EEEUlRKS3_E_EE:
	.quad	0
	.quad	_ZTIN8opendnp314FunctorVisitorINS_7IndexedINS_20AnalogOutputDouble64EEEZNS_22CommandResponseHandler27RespondToHeaderWithIteratorIS2_N7openpal7Bit16LEItEEEENS_8IINFieldENS_13QualifierCodeERKNS_14DNP3SerializerIT_EERKNS_11ICollectionINS1_ISC_EEEEPNS_21PrefixedWriteIteratorIT0_SC_EEEUlRKS3_E_EE
	.quad	_ZN8opendnp314FunctorVisitorINS_7IndexedINS_20AnalogOutputDouble64EEEZNS_22CommandResponseHandler27RespondToHeaderWithIteratorIS2_N7openpal7Bit16LEItEEEENS_8IINFieldENS_13QualifierCodeERKNS_14DNP3SerializerIT_EERKNS_11ICollectionINS1_ISC_EEEEPNS_21PrefixedWriteIteratorIT0_SC_EEEUlRKS3_E_E7OnValueESQ_
	.weak	_ZTVN8opendnp314FunctorVisitorINS_7IndexedINS_23ControlRelayOutputBlockEEEZNS_22CommandResponseHandler27RespondToHeaderWithIteratorIS2_N7openpal11UInt8SimpleEEENS_8IINFieldENS_13QualifierCodeERKNS_14DNP3SerializerIT_EERKNS_11ICollectionINS1_ISB_EEEEPNS_21PrefixedWriteIteratorIT0_SB_EEEUlRKS3_E_EE
	.section	.data.rel.ro._ZTVN8opendnp314FunctorVisitorINS_7IndexedINS_23ControlRelayOutputBlockEEEZNS_22CommandResponseHandler27RespondToHeaderWithIteratorIS2_N7openpal11UInt8SimpleEEENS_8IINFieldENS_13QualifierCodeERKNS_14DNP3SerializerIT_EERKNS_11ICollectionINS1_ISB_EEEEPNS_21PrefixedWriteIteratorIT0_SB_EEEUlRKS3_E_EE,"awG",@progbits,_ZTVN8opendnp314FunctorVisitorINS_7IndexedINS_23ControlRelayOutputBlockEEEZNS_22CommandResponseHandler27RespondToHeaderWithIteratorIS2_N7openpal11UInt8SimpleEEENS_8IINFieldENS_13QualifierCodeERKNS_14DNP3SerializerIT_EERKNS_11ICollectionINS1_ISB_EEEEPNS_21PrefixedWriteIteratorIT0_SB_EEEUlRKS3_E_EE,comdat
	.align 8
	.type	_ZTVN8opendnp314FunctorVisitorINS_7IndexedINS_23ControlRelayOutputBlockEEEZNS_22CommandResponseHandler27RespondToHeaderWithIteratorIS2_N7openpal11UInt8SimpleEEENS_8IINFieldENS_13QualifierCodeERKNS_14DNP3SerializerIT_EERKNS_11ICollectionINS1_ISB_EEEEPNS_21PrefixedWriteIteratorIT0_SB_EEEUlRKS3_E_EE, @object
	.size	_ZTVN8opendnp314FunctorVisitorINS_7IndexedINS_23ControlRelayOutputBlockEEEZNS_22CommandResponseHandler27RespondToHeaderWithIteratorIS2_N7openpal11UInt8SimpleEEENS_8IINFieldENS_13QualifierCodeERKNS_14DNP3SerializerIT_EERKNS_11ICollectionINS1_ISB_EEEEPNS_21PrefixedWriteIteratorIT0_SB_EEEUlRKS3_E_EE, 24
_ZTVN8opendnp314FunctorVisitorINS_7IndexedINS_23ControlRelayOutputBlockEEEZNS_22CommandResponseHandler27RespondToHeaderWithIteratorIS2_N7openpal11UInt8SimpleEEENS_8IINFieldENS_13QualifierCodeERKNS_14DNP3SerializerIT_EERKNS_11ICollectionINS1_ISB_EEEEPNS_21PrefixedWriteIteratorIT0_SB_EEEUlRKS3_E_EE:
	.quad	0
	.quad	_ZTIN8opendnp314FunctorVisitorINS_7IndexedINS_23ControlRelayOutputBlockEEEZNS_22CommandResponseHandler27RespondToHeaderWithIteratorIS2_N7openpal11UInt8SimpleEEENS_8IINFieldENS_13QualifierCodeERKNS_14DNP3SerializerIT_EERKNS_11ICollectionINS1_ISB_EEEEPNS_21PrefixedWriteIteratorIT0_SB_EEEUlRKS3_E_EE
	.quad	_ZN8opendnp314FunctorVisitorINS_7IndexedINS_23ControlRelayOutputBlockEEEZNS_22CommandResponseHandler27RespondToHeaderWithIteratorIS2_N7openpal11UInt8SimpleEEENS_8IINFieldENS_13QualifierCodeERKNS_14DNP3SerializerIT_EERKNS_11ICollectionINS1_ISB_EEEEPNS_21PrefixedWriteIteratorIT0_SB_EEEUlRKS3_E_E7OnValueESP_
	.weak	_ZTVN8opendnp314FunctorVisitorINS_7IndexedINS_17AnalogOutputInt16EEEZNS_22CommandResponseHandler27RespondToHeaderWithIteratorIS2_N7openpal11UInt8SimpleEEENS_8IINFieldENS_13QualifierCodeERKNS_14DNP3SerializerIT_EERKNS_11ICollectionINS1_ISB_EEEEPNS_21PrefixedWriteIteratorIT0_SB_EEEUlRKS3_E_EE
	.section	.data.rel.ro._ZTVN8opendnp314FunctorVisitorINS_7IndexedINS_17AnalogOutputInt16EEEZNS_22CommandResponseHandler27RespondToHeaderWithIteratorIS2_N7openpal11UInt8SimpleEEENS_8IINFieldENS_13QualifierCodeERKNS_14DNP3SerializerIT_EERKNS_11ICollectionINS1_ISB_EEEEPNS_21PrefixedWriteIteratorIT0_SB_EEEUlRKS3_E_EE,"awG",@progbits,_ZTVN8opendnp314FunctorVisitorINS_7IndexedINS_17AnalogOutputInt16EEEZNS_22CommandResponseHandler27RespondToHeaderWithIteratorIS2_N7openpal11UInt8SimpleEEENS_8IINFieldENS_13QualifierCodeERKNS_14DNP3SerializerIT_EERKNS_11ICollectionINS1_ISB_EEEEPNS_21PrefixedWriteIteratorIT0_SB_EEEUlRKS3_E_EE,comdat
	.align 8
	.type	_ZTVN8opendnp314FunctorVisitorINS_7IndexedINS_17AnalogOutputInt16EEEZNS_22CommandResponseHandler27RespondToHeaderWithIteratorIS2_N7openpal11UInt8SimpleEEENS_8IINFieldENS_13QualifierCodeERKNS_14DNP3SerializerIT_EERKNS_11ICollectionINS1_ISB_EEEEPNS_21PrefixedWriteIteratorIT0_SB_EEEUlRKS3_E_EE, @object
	.size	_ZTVN8opendnp314FunctorVisitorINS_7IndexedINS_17AnalogOutputInt16EEEZNS_22CommandResponseHandler27RespondToHeaderWithIteratorIS2_N7openpal11UInt8SimpleEEENS_8IINFieldENS_13QualifierCodeERKNS_14DNP3SerializerIT_EERKNS_11ICollectionINS1_ISB_EEEEPNS_21PrefixedWriteIteratorIT0_SB_EEEUlRKS3_E_EE, 24
_ZTVN8opendnp314FunctorVisitorINS_7IndexedINS_17AnalogOutputInt16EEEZNS_22CommandResponseHandler27RespondToHeaderWithIteratorIS2_N7openpal11UInt8SimpleEEENS_8IINFieldENS_13QualifierCodeERKNS_14DNP3SerializerIT_EERKNS_11ICollectionINS1_ISB_EEEEPNS_21PrefixedWriteIteratorIT0_SB_EEEUlRKS3_E_EE:
	.quad	0
	.quad	_ZTIN8opendnp314FunctorVisitorINS_7IndexedINS_17AnalogOutputInt16EEEZNS_22CommandResponseHandler27RespondToHeaderWithIteratorIS2_N7openpal11UInt8SimpleEEENS_8IINFieldENS_13QualifierCodeERKNS_14DNP3SerializerIT_EERKNS_11ICollectionINS1_ISB_EEEEPNS_21PrefixedWriteIteratorIT0_SB_EEEUlRKS3_E_EE
	.quad	_ZN8opendnp314FunctorVisitorINS_7IndexedINS_17AnalogOutputInt16EEEZNS_22CommandResponseHandler27RespondToHeaderWithIteratorIS2_N7openpal11UInt8SimpleEEENS_8IINFieldENS_13QualifierCodeERKNS_14DNP3SerializerIT_EERKNS_11ICollectionINS1_ISB_EEEEPNS_21PrefixedWriteIteratorIT0_SB_EEEUlRKS3_E_E7OnValueESP_
	.weak	_ZTVN8opendnp314FunctorVisitorINS_7IndexedINS_17AnalogOutputInt32EEEZNS_22CommandResponseHandler27RespondToHeaderWithIteratorIS2_N7openpal11UInt8SimpleEEENS_8IINFieldENS_13QualifierCodeERKNS_14DNP3SerializerIT_EERKNS_11ICollectionINS1_ISB_EEEEPNS_21PrefixedWriteIteratorIT0_SB_EEEUlRKS3_E_EE
	.section	.data.rel.ro._ZTVN8opendnp314FunctorVisitorINS_7IndexedINS_17AnalogOutputInt32EEEZNS_22CommandResponseHandler27RespondToHeaderWithIteratorIS2_N7openpal11UInt8SimpleEEENS_8IINFieldENS_13QualifierCodeERKNS_14DNP3SerializerIT_EERKNS_11ICollectionINS1_ISB_EEEEPNS_21PrefixedWriteIteratorIT0_SB_EEEUlRKS3_E_EE,"awG",@progbits,_ZTVN8opendnp314FunctorVisitorINS_7IndexedINS_17AnalogOutputInt32EEEZNS_22CommandResponseHandler27RespondToHeaderWithIteratorIS2_N7openpal11UInt8SimpleEEENS_8IINFieldENS_13QualifierCodeERKNS_14DNP3SerializerIT_EERKNS_11ICollectionINS1_ISB_EEEEPNS_21PrefixedWriteIteratorIT0_SB_EEEUlRKS3_E_EE,comdat
	.align 8
	.type	_ZTVN8opendnp314FunctorVisitorINS_7IndexedINS_17AnalogOutputInt32EEEZNS_22CommandResponseHandler27RespondToHeaderWithIteratorIS2_N7openpal11UInt8SimpleEEENS_8IINFieldENS_13QualifierCodeERKNS_14DNP3SerializerIT_EERKNS_11ICollectionINS1_ISB_EEEEPNS_21PrefixedWriteIteratorIT0_SB_EEEUlRKS3_E_EE, @object
	.size	_ZTVN8opendnp314FunctorVisitorINS_7IndexedINS_17AnalogOutputInt32EEEZNS_22CommandResponseHandler27RespondToHeaderWithIteratorIS2_N7openpal11UInt8SimpleEEENS_8IINFieldENS_13QualifierCodeERKNS_14DNP3SerializerIT_EERKNS_11ICollectionINS1_ISB_EEEEPNS_21PrefixedWriteIteratorIT0_SB_EEEUlRKS3_E_EE, 24
_ZTVN8opendnp314FunctorVisitorINS_7IndexedINS_17AnalogOutputInt32EEEZNS_22CommandResponseHandler27RespondToHeaderWithIteratorIS2_N7openpal11UInt8SimpleEEENS_8IINFieldENS_13QualifierCodeERKNS_14DNP3SerializerIT_EERKNS_11ICollectionINS1_ISB_EEEEPNS_21PrefixedWriteIteratorIT0_SB_EEEUlRKS3_E_EE:
	.quad	0
	.quad	_ZTIN8opendnp314FunctorVisitorINS_7IndexedINS_17AnalogOutputInt32EEEZNS_22CommandResponseHandler27RespondToHeaderWithIteratorIS2_N7openpal11UInt8SimpleEEENS_8IINFieldENS_13QualifierCodeERKNS_14DNP3SerializerIT_EERKNS_11ICollectionINS1_ISB_EEEEPNS_21PrefixedWriteIteratorIT0_SB_EEEUlRKS3_E_EE
	.quad	_ZN8opendnp314FunctorVisitorINS_7IndexedINS_17AnalogOutputInt32EEEZNS_22CommandResponseHandler27RespondToHeaderWithIteratorIS2_N7openpal11UInt8SimpleEEENS_8IINFieldENS_13QualifierCodeERKNS_14DNP3SerializerIT_EERKNS_11ICollectionINS1_ISB_EEEEPNS_21PrefixedWriteIteratorIT0_SB_EEEUlRKS3_E_E7OnValueESP_
	.weak	_ZTVN8opendnp314FunctorVisitorINS_7IndexedINS_19AnalogOutputFloat32EEEZNS_22CommandResponseHandler27RespondToHeaderWithIteratorIS2_N7openpal11UInt8SimpleEEENS_8IINFieldENS_13QualifierCodeERKNS_14DNP3SerializerIT_EERKNS_11ICollectionINS1_ISB_EEEEPNS_21PrefixedWriteIteratorIT0_SB_EEEUlRKS3_E_EE
	.section	.data.rel.ro._ZTVN8opendnp314FunctorVisitorINS_7IndexedINS_19AnalogOutputFloat32EEEZNS_22CommandResponseHandler27RespondToHeaderWithIteratorIS2_N7openpal11UInt8SimpleEEENS_8IINFieldENS_13QualifierCodeERKNS_14DNP3SerializerIT_EERKNS_11ICollectionINS1_ISB_EEEEPNS_21PrefixedWriteIteratorIT0_SB_EEEUlRKS3_E_EE,"awG",@progbits,_ZTVN8opendnp314FunctorVisitorINS_7IndexedINS_19AnalogOutputFloat32EEEZNS_22CommandResponseHandler27RespondToHeaderWithIteratorIS2_N7openpal11UInt8SimpleEEENS_8IINFieldENS_13QualifierCodeERKNS_14DNP3SerializerIT_EERKNS_11ICollectionINS1_ISB_EEEEPNS_21PrefixedWriteIteratorIT0_SB_EEEUlRKS3_E_EE,comdat
	.align 8
	.type	_ZTVN8opendnp314FunctorVisitorINS_7IndexedINS_19AnalogOutputFloat32EEEZNS_22CommandResponseHandler27RespondToHeaderWithIteratorIS2_N7openpal11UInt8SimpleEEENS_8IINFieldENS_13QualifierCodeERKNS_14DNP3SerializerIT_EERKNS_11ICollectionINS1_ISB_EEEEPNS_21PrefixedWriteIteratorIT0_SB_EEEUlRKS3_E_EE, @object
	.size	_ZTVN8opendnp314FunctorVisitorINS_7IndexedINS_19AnalogOutputFloat32EEEZNS_22CommandResponseHandler27RespondToHeaderWithIteratorIS2_N7openpal11UInt8SimpleEEENS_8IINFieldENS_13QualifierCodeERKNS_14DNP3SerializerIT_EERKNS_11ICollectionINS1_ISB_EEEEPNS_21PrefixedWriteIteratorIT0_SB_EEEUlRKS3_E_EE, 24
_ZTVN8opendnp314FunctorVisitorINS_7IndexedINS_19AnalogOutputFloat32EEEZNS_22CommandResponseHandler27RespondToHeaderWithIteratorIS2_N7openpal11UInt8SimpleEEENS_8IINFieldENS_13QualifierCodeERKNS_14DNP3SerializerIT_EERKNS_11ICollectionINS1_ISB_EEEEPNS_21PrefixedWriteIteratorIT0_SB_EEEUlRKS3_E_EE:
	.quad	0
	.quad	_ZTIN8opendnp314FunctorVisitorINS_7IndexedINS_19AnalogOutputFloat32EEEZNS_22CommandResponseHandler27RespondToHeaderWithIteratorIS2_N7openpal11UInt8SimpleEEENS_8IINFieldENS_13QualifierCodeERKNS_14DNP3SerializerIT_EERKNS_11ICollectionINS1_ISB_EEEEPNS_21PrefixedWriteIteratorIT0_SB_EEEUlRKS3_E_EE
	.quad	_ZN8opendnp314FunctorVisitorINS_7IndexedINS_19AnalogOutputFloat32EEEZNS_22CommandResponseHandler27RespondToHeaderWithIteratorIS2_N7openpal11UInt8SimpleEEENS_8IINFieldENS_13QualifierCodeERKNS_14DNP3SerializerIT_EERKNS_11ICollectionINS1_ISB_EEEEPNS_21PrefixedWriteIteratorIT0_SB_EEEUlRKS3_E_E7OnValueESP_
	.weak	_ZTVN8opendnp314FunctorVisitorINS_7IndexedINS_20AnalogOutputDouble64EEEZNS_22CommandResponseHandler27RespondToHeaderWithIteratorIS2_N7openpal11UInt8SimpleEEENS_8IINFieldENS_13QualifierCodeERKNS_14DNP3SerializerIT_EERKNS_11ICollectionINS1_ISB_EEEEPNS_21PrefixedWriteIteratorIT0_SB_EEEUlRKS3_E_EE
	.section	.data.rel.ro._ZTVN8opendnp314FunctorVisitorINS_7IndexedINS_20AnalogOutputDouble64EEEZNS_22CommandResponseHandler27RespondToHeaderWithIteratorIS2_N7openpal11UInt8SimpleEEENS_8IINFieldENS_13QualifierCodeERKNS_14DNP3SerializerIT_EERKNS_11ICollectionINS1_ISB_EEEEPNS_21PrefixedWriteIteratorIT0_SB_EEEUlRKS3_E_EE,"awG",@progbits,_ZTVN8opendnp314FunctorVisitorINS_7IndexedINS_20AnalogOutputDouble64EEEZNS_22CommandResponseHandler27RespondToHeaderWithIteratorIS2_N7openpal11UInt8SimpleEEENS_8IINFieldENS_13QualifierCodeERKNS_14DNP3SerializerIT_EERKNS_11ICollectionINS1_ISB_EEEEPNS_21PrefixedWriteIteratorIT0_SB_EEEUlRKS3_E_EE,comdat
	.align 8
	.type	_ZTVN8opendnp314FunctorVisitorINS_7IndexedINS_20AnalogOutputDouble64EEEZNS_22CommandResponseHandler27RespondToHeaderWithIteratorIS2_N7openpal11UInt8SimpleEEENS_8IINFieldENS_13QualifierCodeERKNS_14DNP3SerializerIT_EERKNS_11ICollectionINS1_ISB_EEEEPNS_21PrefixedWriteIteratorIT0_SB_EEEUlRKS3_E_EE, @object
	.size	_ZTVN8opendnp314FunctorVisitorINS_7IndexedINS_20AnalogOutputDouble64EEEZNS_22CommandResponseHandler27RespondToHeaderWithIteratorIS2_N7openpal11UInt8SimpleEEENS_8IINFieldENS_13QualifierCodeERKNS_14DNP3SerializerIT_EERKNS_11ICollectionINS1_ISB_EEEEPNS_21PrefixedWriteIteratorIT0_SB_EEEUlRKS3_E_EE, 24
_ZTVN8opendnp314FunctorVisitorINS_7IndexedINS_20AnalogOutputDouble64EEEZNS_22CommandResponseHandler27RespondToHeaderWithIteratorIS2_N7openpal11UInt8SimpleEEENS_8IINFieldENS_13QualifierCodeERKNS_14DNP3SerializerIT_EERKNS_11ICollectionINS1_ISB_EEEEPNS_21PrefixedWriteIteratorIT0_SB_EEEUlRKS3_E_EE:
	.quad	0
	.quad	_ZTIN8opendnp314FunctorVisitorINS_7IndexedINS_20AnalogOutputDouble64EEEZNS_22CommandResponseHandler27RespondToHeaderWithIteratorIS2_N7openpal11UInt8SimpleEEENS_8IINFieldENS_13QualifierCodeERKNS_14DNP3SerializerIT_EERKNS_11ICollectionINS1_ISB_EEEEPNS_21PrefixedWriteIteratorIT0_SB_EEEUlRKS3_E_EE
	.quad	_ZN8opendnp314FunctorVisitorINS_7IndexedINS_20AnalogOutputDouble64EEEZNS_22CommandResponseHandler27RespondToHeaderWithIteratorIS2_N7openpal11UInt8SimpleEEENS_8IINFieldENS_13QualifierCodeERKNS_14DNP3SerializerIT_EERKNS_11ICollectionINS1_ISB_EEEEPNS_21PrefixedWriteIteratorIT0_SB_EEEUlRKS3_E_E7OnValueESP_
	.hidden	DW.ref.__gxx_personality_v0
	.weak	DW.ref.__gxx_personality_v0
	.section	.data.rel.local.DW.ref.__gxx_personality_v0,"awG",@progbits,DW.ref.__gxx_personality_v0,comdat
	.align 8
	.type	DW.ref.__gxx_personality_v0, @object
	.size	DW.ref.__gxx_personality_v0, 8
DW.ref.__gxx_personality_v0:
	.quad	__gxx_personality_v0
	.ident	"GCC: (Ubuntu 9.3.0-17ubuntu1~20.04) 9.3.0"
	.section	.note.GNU-stack,"",@progbits
	.section	.note.gnu.property,"a"
	.align 8
	.long	 1f - 0f
	.long	 4f - 1f
	.long	 5
0:
	.string	 "GNU"
1:
	.align 8
	.long	 0xc0000002
	.long	 3f - 2f
2:
	.long	 0x3
3:
	.align 8
4:
