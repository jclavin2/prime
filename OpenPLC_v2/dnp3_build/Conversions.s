	.file	"Conversions.cpp"
	.text
	.p2align 4
	.type	_ZNSt17_Function_handlerIFbRN8opendnp312HeaderWriterEEZN8asiodnp315ConvertToLambdaERKSt6vectorINS0_6HeaderESaIS6_EEEUlS2_E_E9_M_invokeERKSt9_Any_dataS2_, @function
_ZNSt17_Function_handlerIFbRN8opendnp312HeaderWriterEEZN8asiodnp315ConvertToLambdaERKSt6vectorINS0_6HeaderESaIS6_EEEUlS2_E_E9_M_invokeERKSt9_Any_dataS2_:
.LFB2348:
	.cfi_startproc
	endbr64
	pushq	%r12
	.cfi_def_cfa_offset 16
	.cfi_offset 12, -16
	pushq	%rbp
	.cfi_def_cfa_offset 24
	.cfi_offset 6, -24
	pushq	%rbx
	.cfi_def_cfa_offset 32
	.cfi_offset 3, -32
	movq	(%rdi), %rax
	movq	(%rax), %rbx
	movq	8(%rax), %r12
	cmpq	%rbx, %r12
	je	.L2
	movq	%rsi, %rbp
	jmp	.L4
	.p2align 4,,10
	.p2align 3
.L11:
	addq	$8, %rbx
	cmpq	%rbx, %r12
	je	.L2
.L4:
	movq	%rbp, %rsi
	movq	%rbx, %rdi
	call	_ZNK8opendnp36Header7WriteToERNS_12HeaderWriterE@PLT
	testb	%al, %al
	jne	.L11
	popq	%rbx
	.cfi_remember_state
	.cfi_def_cfa_offset 24
	popq	%rbp
	.cfi_def_cfa_offset 16
	popq	%r12
	.cfi_def_cfa_offset 8
	ret
	.p2align 4,,10
	.p2align 3
.L2:
	.cfi_restore_state
	popq	%rbx
	.cfi_def_cfa_offset 24
	movl	$1, %eax
	popq	%rbp
	.cfi_def_cfa_offset 16
	popq	%r12
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE2348:
	.size	_ZNSt17_Function_handlerIFbRN8opendnp312HeaderWriterEEZN8asiodnp315ConvertToLambdaERKSt6vectorINS0_6HeaderESaIS6_EEEUlS2_E_E9_M_invokeERKSt9_Any_dataS2_, .-_ZNSt17_Function_handlerIFbRN8opendnp312HeaderWriterEEZN8asiodnp315ConvertToLambdaERKSt6vectorINS0_6HeaderESaIS6_EEEUlS2_E_E9_M_invokeERKSt9_Any_dataS2_
	.section	.text.unlikely,"ax",@progbits
.LCOLDB0:
	.text
.LHOTB0:
	.p2align 4
	.type	_ZNSt14_Function_base13_Base_managerIZN8asiodnp315ConvertToLambdaERKSt6vectorIN8opendnp36HeaderESaIS4_EEEUlRNS3_12HeaderWriterEE_E10_M_managerERSt9_Any_dataRKSD_St18_Manager_operation, @function
_ZNSt14_Function_base13_Base_managerIZN8asiodnp315ConvertToLambdaERKSt6vectorIN8opendnp36HeaderESaIS4_EEEUlRNS3_12HeaderWriterEE_E10_M_managerERSt9_Any_dataRKSD_St18_Manager_operation:
.LFB2350:
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA2350
	endbr64
	pushq	%r13
	.cfi_def_cfa_offset 16
	.cfi_offset 13, -16
	pushq	%r12
	.cfi_def_cfa_offset 24
	.cfi_offset 12, -24
	pushq	%rbp
	.cfi_def_cfa_offset 32
	.cfi_offset 6, -32
	pushq	%rbx
	.cfi_def_cfa_offset 40
	.cfi_offset 3, -40
	movq	%rdi, %rbx
	subq	$8, %rsp
	.cfi_def_cfa_offset 48
	cmpl	$2, %edx
	je	.L13
	ja	.L14
	testl	%edx, %edx
	je	.L36
	movq	(%rsi), %rax
	movq	%rax, (%rdi)
.L18:
	addq	$8, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 40
	xorl	%eax, %eax
	popq	%rbx
	.cfi_def_cfa_offset 32
	popq	%rbp
	.cfi_def_cfa_offset 24
	popq	%r12
	.cfi_def_cfa_offset 16
	popq	%r13
	.cfi_def_cfa_offset 8
	ret
	.p2align 4,,10
	.p2align 3
.L14:
	.cfi_restore_state
	cmpl	$3, %edx
	jne	.L18
	movq	(%rdi), %rbp
	testq	%rbp, %rbp
	je	.L18
	movq	0(%rbp), %rdi
	testq	%rdi, %rdi
	je	.L25
	call	_ZdlPv@PLT
.L25:
	movq	%rbp, %rdi
	movl	$24, %esi
	call	_ZdlPvm@PLT
	addq	$8, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 40
	xorl	%eax, %eax
	popq	%rbx
	.cfi_def_cfa_offset 32
	popq	%rbp
	.cfi_def_cfa_offset 24
	popq	%r12
	.cfi_def_cfa_offset 16
	popq	%r13
	.cfi_def_cfa_offset 8
	ret
	.p2align 4,,10
	.p2align 3
.L13:
	.cfi_restore_state
	movq	(%rsi), %r13
	movl	$24, %edi
.LEHB0:
	call	_Znwm@PLT
.LEHE0:
	pxor	%xmm0, %xmm0
	movq	8(%r13), %r12
	subq	0(%r13), %r12
	movq	%rax, %rbp
	movups	%xmm0, (%rax)
	movq	$0, 16(%rax)
	movq	%r12, %rax
	sarq	$3, %rax
	je	.L37
	movabsq	$1152921504606846975, %rdx
	cmpq	%rdx, %rax
	ja	.L38
	movq	%r12, %rdi
.LEHB1:
	call	_Znwm@PLT
.L20:
	movq	%rax, %xmm0
	addq	%rax, %r12
	punpcklqdq	%xmm0, %xmm0
	movq	%r12, 16(%rbp)
	movups	%xmm0, 0(%rbp)
	movq	8(%r13), %rdx
	movq	0(%r13), %rsi
	cmpq	%rsi, %rdx
	je	.L22
	leaq	-8(%rdx), %rdi
	xorl	%edx, %edx
	subq	%rsi, %rdi
	movq	%rdi, %r8
	shrq	$3, %r8
	.p2align 4,,10
	.p2align 3
.L23:
	movq	(%rsi,%rdx,8), %rcx
	movq	%rcx, (%rax,%rdx,8)
	movq	%rdx, %rcx
	addq	$1, %rdx
	cmpq	%rcx, %r8
	jne	.L23
	leaq	8(%rax,%rdi), %rax
.L22:
	movq	%rax, 8(%rbp)
	xorl	%eax, %eax
	movq	%rbp, (%rbx)
	addq	$8, %rsp
	.cfi_remember_state
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
	.p2align 4,,10
	.p2align 3
.L36:
	.cfi_restore_state
	leaq	_ZTIZN8asiodnp315ConvertToLambdaERKSt6vectorIN8opendnp36HeaderESaIS2_EEEUlRNS1_12HeaderWriterEE_(%rip), %rax
	movq	%rax, (%rdi)
	addq	$8, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 40
	xorl	%eax, %eax
	popq	%rbx
	.cfi_def_cfa_offset 32
	popq	%rbp
	.cfi_def_cfa_offset 24
	popq	%r12
	.cfi_def_cfa_offset 16
	popq	%r13
	.cfi_def_cfa_offset 8
	ret
	.p2align 4,,10
	.p2align 3
.L37:
	.cfi_restore_state
	xorl	%eax, %eax
	jmp	.L20
.L38:
	call	_ZSt17__throw_bad_allocv@PLT
.LEHE1:
.L26:
	endbr64
	movq	%rax, %r12
	jmp	.L24
	.globl	__gxx_personality_v0
	.section	.gcc_except_table,"a",@progbits
.LLSDA2350:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE2350-.LLSDACSB2350
.LLSDACSB2350:
	.uleb128 .LEHB0-.LFB2350
	.uleb128 .LEHE0-.LEHB0
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB1-.LFB2350
	.uleb128 .LEHE1-.LEHB1
	.uleb128 .L26-.LFB2350
	.uleb128 0
.LLSDACSE2350:
	.text
	.cfi_endproc
	.section	.text.unlikely
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDAC2350
	.type	_ZNSt14_Function_base13_Base_managerIZN8asiodnp315ConvertToLambdaERKSt6vectorIN8opendnp36HeaderESaIS4_EEEUlRNS3_12HeaderWriterEE_E10_M_managerERSt9_Any_dataRKSD_St18_Manager_operation.cold, @function
_ZNSt14_Function_base13_Base_managerIZN8asiodnp315ConvertToLambdaERKSt6vectorIN8opendnp36HeaderESaIS4_EEEUlRNS3_12HeaderWriterEE_E10_M_managerERSt9_Any_dataRKSD_St18_Manager_operation.cold:
.LFSB2350:
.L24:
	.cfi_def_cfa_offset 48
	.cfi_offset 3, -40
	.cfi_offset 6, -32
	.cfi_offset 12, -24
	.cfi_offset 13, -16
	movq	%rbp, %rdi
	movl	$24, %esi
	call	_ZdlPvm@PLT
	movq	%r12, %rdi
.LEHB2:
	call	_Unwind_Resume@PLT
.LEHE2:
	.cfi_endproc
.LFE2350:
	.section	.gcc_except_table
.LLSDAC2350:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSEC2350-.LLSDACSBC2350
.LLSDACSBC2350:
	.uleb128 .LEHB2-.LCOLDB0
	.uleb128 .LEHE2-.LEHB2
	.uleb128 0
	.uleb128 0
.LLSDACSEC2350:
	.section	.text.unlikely
	.text
	.size	_ZNSt14_Function_base13_Base_managerIZN8asiodnp315ConvertToLambdaERKSt6vectorIN8opendnp36HeaderESaIS4_EEEUlRNS3_12HeaderWriterEE_E10_M_managerERSt9_Any_dataRKSD_St18_Manager_operation, .-_ZNSt14_Function_base13_Base_managerIZN8asiodnp315ConvertToLambdaERKSt6vectorIN8opendnp36HeaderESaIS4_EEEUlRNS3_12HeaderWriterEE_E10_M_managerERSt9_Any_dataRKSD_St18_Manager_operation
	.section	.text.unlikely
	.size	_ZNSt14_Function_base13_Base_managerIZN8asiodnp315ConvertToLambdaERKSt6vectorIN8opendnp36HeaderESaIS4_EEEUlRNS3_12HeaderWriterEE_E10_M_managerERSt9_Any_dataRKSD_St18_Manager_operation.cold, .-_ZNSt14_Function_base13_Base_managerIZN8asiodnp315ConvertToLambdaERKSt6vectorIN8opendnp36HeaderESaIS4_EEEUlRNS3_12HeaderWriterEE_E10_M_managerERSt9_Any_dataRKSD_St18_Manager_operation.cold
.LCOLDE0:
	.text
.LHOTE0:
	.section	.text.unlikely
.LCOLDB1:
	.text
.LHOTB1:
	.p2align 4
	.globl	_ZN8asiodnp315ConvertToLambdaERKSt6vectorIN8opendnp36HeaderESaIS2_EE
	.type	_ZN8asiodnp315ConvertToLambdaERKSt6vectorIN8opendnp36HeaderESaIS2_EE, @function
_ZN8asiodnp315ConvertToLambdaERKSt6vectorIN8opendnp36HeaderESaIS2_EE:
.LFB1965:
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA1965
	endbr64
	pushq	%r14
	.cfi_def_cfa_offset 16
	.cfi_offset 14, -16
	pushq	%r13
	.cfi_def_cfa_offset 24
	.cfi_offset 13, -24
	movq	%rdi, %r13
	pushq	%r12
	.cfi_def_cfa_offset 32
	.cfi_offset 12, -32
	pushq	%rbp
	.cfi_def_cfa_offset 40
	.cfi_offset 6, -40
	pushq	%rbx
	.cfi_def_cfa_offset 48
	.cfi_offset 3, -48
	movq	8(%rsi), %rax
	movq	(%rsi), %rcx
	movq	%rax, %rdi
	subq	%rcx, %rdi
	movq	%rdi, %rdx
	sarq	$3, %rdx
	je	.L56
	movabsq	$1152921504606846975, %rax
	cmpq	%rax, %rdx
	ja	.L67
	movq	%rsi, %rbx
.LEHB3:
	call	_Znwm@PLT
.LEHE3:
	movq	(%rbx), %rcx
	movq	%rax, %r12
	movq	8(%rbx), %rax
	cmpq	%rax, %rcx
	je	.L57
.L70:
	subq	$8, %rax
	xorl	%edx, %edx
	subq	%rcx, %rax
	movq	%rax, %rdi
	shrq	$3, %rdi
	.p2align 4,,10
	.p2align 3
.L43:
	movq	(%rcx,%rdx,8), %rsi
	movq	%rsi, (%r12,%rdx,8)
	movq	%rdx, %rsi
	addq	$1, %rdx
	cmpq	%rdi, %rsi
	jne	.L43
	leaq	8(%r12,%rax), %r14
.L42:
	movq	$0, 16(%r13)
	movl	$24, %edi
.LEHB4:
	call	_Znwm@PLT
.LEHE4:
	movq	%r14, %rbx
	pxor	%xmm0, %xmm0
	movq	$0, 16(%rax)
	movq	%rax, %rbp
	subq	%r12, %rbx
	movups	%xmm0, (%rax)
	movq	%rbx, %rax
	sarq	$3, %rax
	je	.L68
	movabsq	$1152921504606846975, %rdx
	cmpq	%rdx, %rax
	ja	.L69
	movq	%rbx, %rdi
.LEHB5:
	call	_Znwm@PLT
.LEHE5:
.L45:
	movq	%rax, %xmm0
	addq	%rax, %rbx
	punpcklqdq	%xmm0, %xmm0
	movq	%rbx, 16(%rbp)
	movups	%xmm0, 0(%rbp)
	cmpq	%r12, %r14
	je	.L47
	subq	%r12, %r14
	xorl	%edx, %edx
	leaq	-8(%r14), %rcx
	movq	%rcx, %rdi
	shrq	$3, %rdi
	.p2align 4,,10
	.p2align 3
.L48:
	movq	(%r12,%rdx,8), %rsi
	movq	%rsi, (%rax,%rdx,8)
	movq	%rdx, %rsi
	addq	$1, %rdx
	cmpq	%rsi, %rdi
	jne	.L48
	leaq	8(%rax,%rcx), %rax
	leaq	_ZNSt14_Function_base13_Base_managerIZN8asiodnp315ConvertToLambdaERKSt6vectorIN8opendnp36HeaderESaIS4_EEEUlRNS3_12HeaderWriterEE_E10_M_managerERSt9_Any_dataRKSD_St18_Manager_operation(%rip), %rcx
	movq	%rbp, 0(%r13)
	movq	%rax, 8(%rbp)
	leaq	_ZNSt17_Function_handlerIFbRN8opendnp312HeaderWriterEEZN8asiodnp315ConvertToLambdaERKSt6vectorINS0_6HeaderESaIS6_EEEUlS2_E_E9_M_invokeERKSt9_Any_dataS2_(%rip), %rax
	movq	%rcx, %xmm0
	movq	%rax, %xmm1
	punpcklqdq	%xmm1, %xmm0
	movups	%xmm0, 16(%r13)
.L49:
	movq	%r12, %rdi
	call	_ZdlPv@PLT
	popq	%rbx
	.cfi_remember_state
	.cfi_def_cfa_offset 40
	movq	%r13, %rax
	popq	%rbp
	.cfi_def_cfa_offset 32
	popq	%r12
	.cfi_def_cfa_offset 24
	popq	%r13
	.cfi_def_cfa_offset 16
	popq	%r14
	.cfi_def_cfa_offset 8
	ret
	.p2align 4,,10
	.p2align 3
.L47:
	.cfi_restore_state
	movq	%rax, 8(%rbp)
	leaq	_ZNSt14_Function_base13_Base_managerIZN8asiodnp315ConvertToLambdaERKSt6vectorIN8opendnp36HeaderESaIS4_EEEUlRNS3_12HeaderWriterEE_E10_M_managerERSt9_Any_dataRKSD_St18_Manager_operation(%rip), %rcx
	leaq	_ZNSt17_Function_handlerIFbRN8opendnp312HeaderWriterEEZN8asiodnp315ConvertToLambdaERKSt6vectorINS0_6HeaderESaIS6_EEEUlS2_E_E9_M_invokeERKSt9_Any_dataS2_(%rip), %rax
	movq	%rcx, %xmm0
	movq	%rax, %xmm2
	movq	%rbp, 0(%r13)
	punpcklqdq	%xmm2, %xmm0
	movups	%xmm0, 16(%r13)
	testq	%r12, %r12
	jne	.L49
	popq	%rbx
	.cfi_remember_state
	.cfi_def_cfa_offset 40
	movq	%r13, %rax
	popq	%rbp
	.cfi_def_cfa_offset 32
	popq	%r12
	.cfi_def_cfa_offset 24
	popq	%r13
	.cfi_def_cfa_offset 16
	popq	%r14
	.cfi_def_cfa_offset 8
	ret
	.p2align 4,,10
	.p2align 3
.L56:
	.cfi_restore_state
	xorl	%r12d, %r12d
	cmpq	%rax, %rcx
	jne	.L70
.L57:
	movq	%r12, %r14
	jmp	.L42
	.p2align 4,,10
	.p2align 3
.L68:
	xorl	%eax, %eax
	jmp	.L45
.L67:
.LEHB6:
	call	_ZSt17__throw_bad_allocv@PLT
.LEHE6:
.L69:
.LEHB7:
	call	_ZSt17__throw_bad_allocv@PLT
.LEHE7:
.L58:
	endbr64
	movq	%rax, %rbp
	jmp	.L52
.L59:
	endbr64
	movq	%rax, %rbx
	jmp	.L51
	.section	.gcc_except_table
.LLSDA1965:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE1965-.LLSDACSB1965
.LLSDACSB1965:
	.uleb128 .LEHB3-.LFB1965
	.uleb128 .LEHE3-.LEHB3
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB4-.LFB1965
	.uleb128 .LEHE4-.LEHB4
	.uleb128 .L58-.LFB1965
	.uleb128 0
	.uleb128 .LEHB5-.LFB1965
	.uleb128 .LEHE5-.LEHB5
	.uleb128 .L59-.LFB1965
	.uleb128 0
	.uleb128 .LEHB6-.LFB1965
	.uleb128 .LEHE6-.LEHB6
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB7-.LFB1965
	.uleb128 .LEHE7-.LEHB7
	.uleb128 .L59-.LFB1965
	.uleb128 0
.LLSDACSE1965:
	.text
	.cfi_endproc
	.section	.text.unlikely
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDAC1965
	.type	_ZN8asiodnp315ConvertToLambdaERKSt6vectorIN8opendnp36HeaderESaIS2_EE.cold, @function
_ZN8asiodnp315ConvertToLambdaERKSt6vectorIN8opendnp36HeaderESaIS2_EE.cold:
.LFSB1965:
.L51:
	.cfi_def_cfa_offset 48
	.cfi_offset 3, -48
	.cfi_offset 6, -40
	.cfi_offset 12, -32
	.cfi_offset 13, -24
	.cfi_offset 14, -16
	movq	%rbp, %rdi
	movl	$24, %esi
	movq	%rbx, %rbp
	call	_ZdlPvm@PLT
.L52:
	movq	16(%r13), %rax
	testq	%rax, %rax
	je	.L53
	movl	$3, %edx
	movq	%r13, %rsi
	movq	%r13, %rdi
	call	*%rax
.L53:
	testq	%r12, %r12
	je	.L55
	movq	%r12, %rdi
	call	_ZdlPv@PLT
.L55:
	movq	%rbp, %rdi
.LEHB8:
	call	_Unwind_Resume@PLT
.LEHE8:
	.cfi_endproc
.LFE1965:
	.section	.gcc_except_table
.LLSDAC1965:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSEC1965-.LLSDACSBC1965
.LLSDACSBC1965:
	.uleb128 .LEHB8-.LCOLDB1
	.uleb128 .LEHE8-.LEHB8
	.uleb128 0
	.uleb128 0
.LLSDACSEC1965:
	.section	.text.unlikely
	.text
	.size	_ZN8asiodnp315ConvertToLambdaERKSt6vectorIN8opendnp36HeaderESaIS2_EE, .-_ZN8asiodnp315ConvertToLambdaERKSt6vectorIN8opendnp36HeaderESaIS2_EE
	.section	.text.unlikely
	.size	_ZN8asiodnp315ConvertToLambdaERKSt6vectorIN8opendnp36HeaderESaIS2_EE.cold, .-_ZN8asiodnp315ConvertToLambdaERKSt6vectorIN8opendnp36HeaderESaIS2_EE.cold
.LCOLDE1:
	.text
.LHOTE1:
	.section	.data.rel.ro,"aw"
	.align 8
	.type	_ZTIZN8asiodnp315ConvertToLambdaERKSt6vectorIN8opendnp36HeaderESaIS2_EEEUlRNS1_12HeaderWriterEE_, @object
	.size	_ZTIZN8asiodnp315ConvertToLambdaERKSt6vectorIN8opendnp36HeaderESaIS2_EEEUlRNS1_12HeaderWriterEE_, 16
_ZTIZN8asiodnp315ConvertToLambdaERKSt6vectorIN8opendnp36HeaderESaIS2_EEEUlRNS1_12HeaderWriterEE_:
	.quad	_ZTVN10__cxxabiv117__class_type_infoE+16
	.quad	_ZTSZN8asiodnp315ConvertToLambdaERKSt6vectorIN8opendnp36HeaderESaIS2_EEEUlRNS1_12HeaderWriterEE_
	.section	.rodata
	.align 32
	.type	_ZTSZN8asiodnp315ConvertToLambdaERKSt6vectorIN8opendnp36HeaderESaIS2_EEEUlRNS1_12HeaderWriterEE_, @object
	.size	_ZTSZN8asiodnp315ConvertToLambdaERKSt6vectorIN8opendnp36HeaderESaIS2_EEEUlRNS1_12HeaderWriterEE_, 94
_ZTSZN8asiodnp315ConvertToLambdaERKSt6vectorIN8opendnp36HeaderESaIS2_EEEUlRNS1_12HeaderWriterEE_:
	.string	"*ZN8asiodnp315ConvertToLambdaERKSt6vectorIN8opendnp36HeaderESaIS2_EEEUlRNS1_12HeaderWriterEE_"
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
