	.file	"ConsoleLogger.cpp"
	.text
	.section	.text._ZNKSt5ctypeIcE8do_widenEc,"axG",@progbits,_ZNKSt5ctypeIcE8do_widenEc,comdat
	.align 2
	.p2align 4
	.weak	_ZNKSt5ctypeIcE8do_widenEc
	.type	_ZNKSt5ctypeIcE8do_widenEc, @function
_ZNKSt5ctypeIcE8do_widenEc:
.LFB2607:
	.cfi_startproc
	endbr64
	movl	%esi, %eax
	ret
	.cfi_endproc
.LFE2607:
	.size	_ZNKSt5ctypeIcE8do_widenEc, .-_ZNKSt5ctypeIcE8do_widenEc
	.section	.text._ZN8asiodnp313ConsoleLoggerD2Ev,"axG",@progbits,_ZN8asiodnp313ConsoleLoggerD5Ev,comdat
	.align 2
	.p2align 4
	.weak	_ZN8asiodnp313ConsoleLoggerD2Ev
	.type	_ZN8asiodnp313ConsoleLoggerD2Ev, @function
_ZN8asiodnp313ConsoleLoggerD2Ev:
.LFB3627:
	.cfi_startproc
	endbr64
	ret
	.cfi_endproc
.LFE3627:
	.size	_ZN8asiodnp313ConsoleLoggerD2Ev, .-_ZN8asiodnp313ConsoleLoggerD2Ev
	.weak	_ZN8asiodnp313ConsoleLoggerD1Ev
	.set	_ZN8asiodnp313ConsoleLoggerD1Ev,_ZN8asiodnp313ConsoleLoggerD2Ev
	.section	.text._ZN8asiodnp313ConsoleLoggerD0Ev,"axG",@progbits,_ZN8asiodnp313ConsoleLoggerD5Ev,comdat
	.align 2
	.p2align 4
	.weak	_ZN8asiodnp313ConsoleLoggerD0Ev
	.type	_ZN8asiodnp313ConsoleLoggerD0Ev, @function
_ZN8asiodnp313ConsoleLoggerD0Ev:
.LFB3629:
	.cfi_startproc
	endbr64
	movl	$56, %esi
	jmp	_ZdlPvm@PLT
	.cfi_endproc
.LFE3629:
	.size	_ZN8asiodnp313ConsoleLoggerD0Ev, .-_ZN8asiodnp313ConsoleLoggerD0Ev
	.section	.rodata.str1.1,"aMS",@progbits,1
.LC0:
	.string	"ms("
.LC1:
	.string	") "
.LC2:
	.string	" "
.LC3:
	.string	" - "
	.section	.text.unlikely,"ax",@progbits
	.align 2
.LCOLDB4:
	.text
.LHOTB4:
	.align 2
	.p2align 4
	.globl	_ZN8asiodnp313ConsoleLogger3LogERKN7openpal8LogEntryE
	.type	_ZN8asiodnp313ConsoleLogger3LogERKN7openpal8LogEntryE, @function
_ZN8asiodnp313ConsoleLogger3LogERKN7openpal8LogEntryE:
.LFB2906:
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA2906
	endbr64
	pushq	%r15
	.cfi_def_cfa_offset 16
	.cfi_offset 15, -16
	pushq	%r14
	.cfi_def_cfa_offset 24
	.cfi_offset 14, -24
	pushq	%r13
	.cfi_def_cfa_offset 32
	.cfi_offset 13, -32
	movq	%rdi, %r13
	pushq	%r12
	.cfi_def_cfa_offset 40
	.cfi_offset 12, -40
	pushq	%rbp
	.cfi_def_cfa_offset 48
	.cfi_offset 6, -48
	pushq	%rbx
	.cfi_def_cfa_offset 56
	.cfi_offset 3, -56
	movq	%rsi, %rbx
	subq	$472, %rsp
	.cfi_def_cfa_offset 528
	movq	%fs:40, %rax
	movq	%rax, 456(%rsp)
	xorl	%eax, %eax
	leaq	192(%rsp), %r15
	leaq	80(%rsp), %rbp
	call	_ZNSt6chrono3_V212system_clock3nowEv@PLT
	movq	%r15, %rdi
	movabsq	$4835703278458516699, %rdx
	movq	%rax, %rcx
	imulq	%rdx
	sarq	$63, %rcx
	sarq	$18, %rdx
	subq	%rcx, %rdx
	movq	%rdx, %r12
	call	_ZNSt8ios_baseC2Ev@PLT
	movq	_ZTVSt9basic_iosIcSt11char_traitsIcEE@GOTPCREL(%rip), %rax
	pxor	%xmm0, %xmm0
	xorl	%esi, %esi
	movups	%xmm0, 424(%rsp)
	addq	$16, %rax
	movups	%xmm0, 440(%rsp)
	movq	%rax, 192(%rsp)
	xorl	%eax, %eax
	movw	%ax, 416(%rsp)
	movq	_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE@GOTPCREL(%rip), %rax
	movq	$0, 408(%rsp)
	movq	8(%rax), %r14
	movq	16(%rax), %rax
	movq	-24(%r14), %rdi
	movq	%r14, 80(%rsp)
	movq	%rax, 8(%rsp)
	addq	%rbp, %rdi
	movq	%rax, (%rdi)
.LEHB0:
	call	_ZNSt9basic_iosIcSt11char_traitsIcEE4initEPSt15basic_streambufIcS1_E@PLT
.LEHE0:
	movq	_ZTVNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE@GOTPCREL(%rip), %rax
	leaq	24(%rax), %rcx
	addq	$64, %rax
	movq	%rax, 192(%rsp)
	movq	_ZTVSt15basic_streambufIcSt11char_traitsIcEE@GOTPCREL(%rip), %rax
	movq	%rcx, %xmm0
	movq	%rcx, 32(%rsp)
	addq	$16, %rax
	movq	%rax, %xmm1
	leaq	144(%rsp), %rax
	punpcklqdq	%xmm1, %xmm0
	movq	%rax, %rdi
	movq	%rax, 16(%rsp)
	movaps	%xmm0, 80(%rsp)
	pxor	%xmm0, %xmm0
	movaps	%xmm0, 96(%rsp)
	movaps	%xmm0, 112(%rsp)
	movaps	%xmm0, 128(%rsp)
	call	_ZNSt6localeC1Ev@PLT
	movq	_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE@GOTPCREL(%rip), %rax
	movq	%r15, %rdi
	leaq	88(%rsp), %rsi
	movl	$16, 152(%rsp)
	addq	$16, %rax
	movb	$0, 176(%rsp)
	movq	%rax, 88(%rsp)
	leaq	176(%rsp), %rax
	movq	%rax, 24(%rsp)
	movq	%rax, 160(%rsp)
	movq	$0, 168(%rsp)
.LEHB1:
	call	_ZNSt9basic_iosIcSt11char_traitsIcEE4initEPSt15basic_streambufIcS1_E@PLT
.LEHE1:
	movl	$3, %edx
	leaq	.LC0(%rip), %rsi
	movq	%rbp, %rdi
.LEHB2:
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT
	movq	%r12, %rsi
	movq	%rbp, %rdi
	call	_ZNSo9_M_insertIlEERSoT_@PLT
	movl	$2, %edx
	leaq	.LC1(%rip), %rsi
	movq	%rax, %rdi
	movq	%rax, %r12
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT
	movl	8(%rbx), %edi
	call	_ZN8opendnp315LogFlagToStringEi@PLT
	testq	%rax, %rax
	je	.L61
	movq	%rax, %rdi
	movq	%rax, 40(%rsp)
	call	strlen@PLT
	movq	40(%rsp), %rsi
	movq	%r12, %rdi
	movq	%rax, %rdx
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT
.L11:
	movl	$1, %edx
	leaq	.LC2(%rip), %rsi
	movq	%rbp, %rdi
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT
	movq	(%rbx), %r12
	testq	%r12, %r12
	je	.L62
	movq	%r12, %rdi
	call	strlen@PLT
	movq	%r12, %rsi
	movq	%rbp, %rdi
	movq	%rax, %rdx
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT
.L13:
	cmpb	$0, 8(%r13)
	je	.L14
	movl	$3, %edx
	leaq	.LC3(%rip), %rsi
	movq	%rbp, %rdi
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT
	movq	16(%rbx), %r12
	testq	%r12, %r12
	je	.L63
	movq	%r12, %rdi
	call	strlen@PLT
	movq	%r12, %rsi
	movq	%rbp, %rdi
	movq	%rax, %rdx
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT
.L14:
	movl	$3, %edx
	leaq	.LC3(%rip), %rsi
	movq	%rbp, %rdi
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT
	movq	24(%rbx), %r12
	testq	%r12, %r12
	je	.L64
	movq	%r12, %rdi
	call	strlen@PLT
	movq	%r12, %rsi
	movq	%rbp, %rdi
	movq	%rax, %rdx
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT
.LEHE2:
.L17:
	leaq	16(%r13), %rax
	cmpq	$0, _ZL28__gthrw___pthread_key_createPjPFvPvE@GOTPCREL(%rip)
	movq	%rax, 40(%rsp)
	je	.L18
	movq	%rax, %rdi
	call	_ZL26__gthrw_pthread_mutex_lockP15pthread_mutex_t@PLT
	testl	%eax, %eax
	jne	.L65
.L18:
	leaq	64(%rsp), %rbx
	movb	$0, 64(%rsp)
	leaq	48(%rsp), %rdi
	movq	128(%rsp), %rax
	movq	%rbx, 48(%rsp)
	movq	$0, 56(%rsp)
	testq	%rax, %rax
	je	.L19
	movq	112(%rsp), %r8
	movq	120(%rsp), %rcx
	cmpq	%r8, %rax
	ja	.L66
	subq	%rcx, %r8
	xorl	%edx, %edx
	xorl	%esi, %esi
.LEHB3:
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm@PLT
.LEHE3:
.L21:
	movq	56(%rsp), %rdx
	movq	48(%rsp), %rsi
	movq	_ZSt4cout@GOTPCREL(%rip), %rdi
.LEHB4:
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT
	movq	%rax, %r12
	movq	(%rax), %rax
	movq	-24(%rax), %rax
	movq	240(%r12,%rax), %r13
	testq	%r13, %r13
	je	.L67
	cmpb	$0, 56(%r13)
	je	.L27
	movsbl	67(%r13), %esi
.L28:
	movq	%r12, %rdi
	call	_ZNSo3putEc@PLT
	movq	%rax, %rdi
	call	_ZNSo5flushEv@PLT
.LEHE4:
	movq	48(%rsp), %rdi
	cmpq	%rbx, %rdi
	je	.L29
	call	_ZdlPv@PLT
.L29:
	cmpq	$0, _ZL28__gthrw___pthread_key_createPjPFvPvE@GOTPCREL(%rip)
	je	.L30
	movq	40(%rsp), %rdi
	call	_ZL28__gthrw_pthread_mutex_unlockP15pthread_mutex_t@PLT
.L30:
	movq	_ZTVNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE@GOTPCREL(%rip), %rax
	movq	32(%rsp), %xmm0
	movq	160(%rsp), %rdi
	addq	$64, %rax
	movq	%rax, 192(%rsp)
	movq	_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE@GOTPCREL(%rip), %rax
	addq	$16, %rax
	movq	%rax, %xmm2
	punpcklqdq	%xmm2, %xmm0
	movaps	%xmm0, 80(%rsp)
	cmpq	24(%rsp), %rdi
	je	.L31
	call	_ZdlPv@PLT
.L31:
	movq	_ZTVSt15basic_streambufIcSt11char_traitsIcEE@GOTPCREL(%rip), %rax
	movq	16(%rsp), %rdi
	addq	$16, %rax
	movq	%rax, 88(%rsp)
	call	_ZNSt6localeD1Ev@PLT
	movq	-24(%r14), %rax
	movq	8(%rsp), %rbx
	movq	%r15, %rdi
	movq	%r14, 80(%rsp)
	movq	%rbx, 80(%rsp,%rax)
	movq	_ZTVSt9basic_iosIcSt11char_traitsIcEE@GOTPCREL(%rip), %rax
	addq	$16, %rax
	movq	%rax, 192(%rsp)
	call	_ZNSt8ios_baseD2Ev@PLT
	movq	456(%rsp), %rax
	xorq	%fs:40, %rax
	jne	.L68
	addq	$472, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 56
	popq	%rbx
	.cfi_def_cfa_offset 48
	popq	%rbp
	.cfi_def_cfa_offset 40
	popq	%r12
	.cfi_def_cfa_offset 32
	popq	%r13
	.cfi_def_cfa_offset 24
	popq	%r14
	.cfi_def_cfa_offset 16
	popq	%r15
	.cfi_def_cfa_offset 8
	ret
	.p2align 4,,10
	.p2align 3
.L66:
	.cfi_restore_state
	subq	%rcx, %rax
	xorl	%edx, %edx
	xorl	%esi, %esi
	movq	%rax, %r8
.LEHB5:
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm@PLT
.LEHE5:
	jmp	.L21
	.p2align 4,,10
	.p2align 3
.L27:
	movq	%r13, %rdi
.LEHB6:
	call	_ZNKSt5ctypeIcE13_M_widen_initEv@PLT
	movq	0(%r13), %rax
	movl	$10, %esi
	movq	48(%rax), %rax
	cmpq	_ZNKSt5ctypeIcE8do_widenEc@GOTPCREL(%rip), %rax
	je	.L28
	movq	%r13, %rdi
	call	*%rax
.LEHE6:
	movsbl	%al, %esi
	jmp	.L28
	.p2align 4,,10
	.p2align 3
.L62:
	movq	80(%rsp), %rax
	movq	-24(%rax), %rdi
	addq	%rbp, %rdi
	movl	32(%rdi), %esi
	orl	$1, %esi
.LEHB7:
	call	_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate@PLT
	jmp	.L13
	.p2align 4,,10
	.p2align 3
.L64:
	movq	80(%rsp), %rax
	movq	-24(%rax), %rdi
	addq	%rbp, %rdi
	movl	32(%rdi), %esi
	orl	$1, %esi
	call	_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate@PLT
	jmp	.L17
	.p2align 4,,10
	.p2align 3
.L61:
	movq	(%r12), %rax
	movq	-24(%rax), %rdi
	addq	%r12, %rdi
	movl	32(%rdi), %esi
	orl	$1, %esi
	call	_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate@PLT
	jmp	.L11
	.p2align 4,,10
	.p2align 3
.L63:
	movq	80(%rsp), %rax
	movq	-24(%rax), %rdi
	addq	%rbp, %rdi
	movl	32(%rdi), %esi
	orl	$1, %esi
	call	_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate@PLT
.LEHE7:
	jmp	.L14
	.p2align 4,,10
	.p2align 3
.L19:
	leaq	160(%rsp), %rsi
.LEHB8:
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_@PLT
.LEHE8:
	jmp	.L21
.L68:
	call	__stack_chk_fail@PLT
.L67:
.LEHB9:
	call	_ZSt16__throw_bad_castv@PLT
.LEHE9:
.L65:
	movl	%eax, %edi
.LEHB10:
	call	_ZSt20__throw_system_errori@PLT
.LEHE10:
.L41:
	endbr64
	movq	%rax, %rbx
	jmp	.L7
.L40:
	endbr64
	movq	%rax, %rbx
	jmp	.L9
.L39:
	endbr64
	movq	%rax, %r12
	jmp	.L32
.L42:
	endbr64
	movq	%rax, %r12
	jmp	.L32
.L38:
	endbr64
	movq	%rax, %rbx
	jmp	.L35
	.globl	__gxx_personality_v0
	.section	.gcc_except_table,"a",@progbits
.LLSDA2906:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE2906-.LLSDACSB2906
.LLSDACSB2906:
	.uleb128 .LEHB0-.LFB2906
	.uleb128 .LEHE0-.LEHB0
	.uleb128 .L40-.LFB2906
	.uleb128 0
	.uleb128 .LEHB1-.LFB2906
	.uleb128 .LEHE1-.LEHB1
	.uleb128 .L41-.LFB2906
	.uleb128 0
	.uleb128 .LEHB2-.LFB2906
	.uleb128 .LEHE2-.LEHB2
	.uleb128 .L38-.LFB2906
	.uleb128 0
	.uleb128 .LEHB3-.LFB2906
	.uleb128 .LEHE3-.LEHB3
	.uleb128 .L42-.LFB2906
	.uleb128 0
	.uleb128 .LEHB4-.LFB2906
	.uleb128 .LEHE4-.LEHB4
	.uleb128 .L39-.LFB2906
	.uleb128 0
	.uleb128 .LEHB5-.LFB2906
	.uleb128 .LEHE5-.LEHB5
	.uleb128 .L42-.LFB2906
	.uleb128 0
	.uleb128 .LEHB6-.LFB2906
	.uleb128 .LEHE6-.LEHB6
	.uleb128 .L39-.LFB2906
	.uleb128 0
	.uleb128 .LEHB7-.LFB2906
	.uleb128 .LEHE7-.LEHB7
	.uleb128 .L38-.LFB2906
	.uleb128 0
	.uleb128 .LEHB8-.LFB2906
	.uleb128 .LEHE8-.LEHB8
	.uleb128 .L42-.LFB2906
	.uleb128 0
	.uleb128 .LEHB9-.LFB2906
	.uleb128 .LEHE9-.LEHB9
	.uleb128 .L39-.LFB2906
	.uleb128 0
	.uleb128 .LEHB10-.LFB2906
	.uleb128 .LEHE10-.LEHB10
	.uleb128 .L38-.LFB2906
	.uleb128 0
.LLSDACSE2906:
	.text
	.cfi_endproc
	.section	.text.unlikely
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDAC2906
	.type	_ZN8asiodnp313ConsoleLogger3LogERKN7openpal8LogEntryE.cold, @function
_ZN8asiodnp313ConsoleLogger3LogERKN7openpal8LogEntryE.cold:
.LFSB2906:
.L7:
	.cfi_def_cfa_offset 528
	.cfi_offset 3, -56
	.cfi_offset 6, -48
	.cfi_offset 12, -40
	.cfi_offset 13, -32
	.cfi_offset 14, -24
	.cfi_offset 15, -16
	movq	_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE@GOTPCREL(%rip), %rax
	movq	160(%rsp), %rdi
	addq	$16, %rax
	movq	%rax, 88(%rsp)
	cmpq	24(%rsp), %rdi
	je	.L8
	call	_ZdlPv@PLT
.L8:
	movq	_ZTVSt15basic_streambufIcSt11char_traitsIcEE@GOTPCREL(%rip), %rax
	movq	16(%rsp), %rdi
	addq	$16, %rax
	movq	%rax, 88(%rsp)
	call	_ZNSt6localeD1Ev@PLT
	movq	-24(%r14), %rax
	movq	8(%rsp), %rcx
	movq	%r14, 80(%rsp)
	movq	%rcx, 80(%rsp,%rax)
.L9:
	movq	_ZTVSt9basic_iosIcSt11char_traitsIcEE@GOTPCREL(%rip), %rax
	movq	%r15, %rdi
	addq	$16, %rax
	movq	%rax, 192(%rsp)
	call	_ZNSt8ios_baseD2Ev@PLT
	movq	%rbx, %rdi
.LEHB11:
	call	_Unwind_Resume@PLT
.L32:
	movq	48(%rsp), %rdi
	cmpq	%rbx, %rdi
	je	.L25
	call	_ZdlPv@PLT
.L25:
	cmpq	$0, _ZL28__gthrw___pthread_key_createPjPFvPvE@GOTPCREL(%rip)
	je	.L34
	movq	40(%rsp), %rdi
	call	_ZL28__gthrw_pthread_mutex_unlockP15pthread_mutex_t@PLT
.L34:
	movq	%r12, %rbx
.L35:
	movq	%rbp, %rdi
	call	_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev@PLT
	movq	%rbx, %rdi
	call	_Unwind_Resume@PLT
.LEHE11:
	.cfi_endproc
.LFE2906:
	.section	.gcc_except_table
.LLSDAC2906:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSEC2906-.LLSDACSBC2906
.LLSDACSBC2906:
	.uleb128 .LEHB11-.LCOLDB4
	.uleb128 .LEHE11-.LEHB11
	.uleb128 0
	.uleb128 0
.LLSDACSEC2906:
	.section	.text.unlikely
	.text
	.size	_ZN8asiodnp313ConsoleLogger3LogERKN7openpal8LogEntryE, .-_ZN8asiodnp313ConsoleLogger3LogERKN7openpal8LogEntryE
	.section	.text.unlikely
	.size	_ZN8asiodnp313ConsoleLogger3LogERKN7openpal8LogEntryE.cold, .-_ZN8asiodnp313ConsoleLogger3LogERKN7openpal8LogEntryE.cold
.LCOLDE4:
	.text
.LHOTE4:
	.section	.text.startup,"ax",@progbits
	.p2align 4
	.type	_GLOBAL__sub_I_ConsoleLogger.cpp, @function
_GLOBAL__sub_I_ConsoleLogger.cpp:
.LFB3658:
	.cfi_startproc
	endbr64
	subq	$8, %rsp
	.cfi_def_cfa_offset 16
	leaq	_ZStL8__ioinit(%rip), %rdi
	call	_ZNSt8ios_base4InitC1Ev@PLT
	movq	_ZNSt8ios_base4InitD1Ev@GOTPCREL(%rip), %rdi
	addq	$8, %rsp
	.cfi_def_cfa_offset 8
	leaq	__dso_handle(%rip), %rdx
	leaq	_ZStL8__ioinit(%rip), %rsi
	jmp	__cxa_atexit@PLT
	.cfi_endproc
.LFE3658:
	.size	_GLOBAL__sub_I_ConsoleLogger.cpp, .-_GLOBAL__sub_I_ConsoleLogger.cpp
	.section	.init_array,"aw"
	.align 8
	.quad	_GLOBAL__sub_I_ConsoleLogger.cpp
	.weak	_ZTSN7openpal10UncopyableE
	.section	.rodata._ZTSN7openpal10UncopyableE,"aG",@progbits,_ZTSN7openpal10UncopyableE,comdat
	.align 16
	.type	_ZTSN7openpal10UncopyableE, @object
	.size	_ZTSN7openpal10UncopyableE, 23
_ZTSN7openpal10UncopyableE:
	.string	"N7openpal10UncopyableE"
	.weak	_ZTIN7openpal10UncopyableE
	.section	.data.rel.ro._ZTIN7openpal10UncopyableE,"awG",@progbits,_ZTIN7openpal10UncopyableE,comdat
	.align 8
	.type	_ZTIN7openpal10UncopyableE, @object
	.size	_ZTIN7openpal10UncopyableE, 16
_ZTIN7openpal10UncopyableE:
	.quad	_ZTVN10__cxxabiv117__class_type_infoE+16
	.quad	_ZTSN7openpal10UncopyableE
	.weak	_ZTSN7openpal11ILogHandlerE
	.section	.rodata._ZTSN7openpal11ILogHandlerE,"aG",@progbits,_ZTSN7openpal11ILogHandlerE,comdat
	.align 16
	.type	_ZTSN7openpal11ILogHandlerE, @object
	.size	_ZTSN7openpal11ILogHandlerE, 24
_ZTSN7openpal11ILogHandlerE:
	.string	"N7openpal11ILogHandlerE"
	.weak	_ZTIN7openpal11ILogHandlerE
	.section	.data.rel.ro._ZTIN7openpal11ILogHandlerE,"awG",@progbits,_ZTIN7openpal11ILogHandlerE,comdat
	.align 8
	.type	_ZTIN7openpal11ILogHandlerE, @object
	.size	_ZTIN7openpal11ILogHandlerE, 16
_ZTIN7openpal11ILogHandlerE:
	.quad	_ZTVN10__cxxabiv117__class_type_infoE+16
	.quad	_ZTSN7openpal11ILogHandlerE
	.weak	_ZTSN8asiodnp313ConsoleLoggerE
	.section	.rodata._ZTSN8asiodnp313ConsoleLoggerE,"aG",@progbits,_ZTSN8asiodnp313ConsoleLoggerE,comdat
	.align 16
	.type	_ZTSN8asiodnp313ConsoleLoggerE, @object
	.size	_ZTSN8asiodnp313ConsoleLoggerE, 27
_ZTSN8asiodnp313ConsoleLoggerE:
	.string	"N8asiodnp313ConsoleLoggerE"
	.weak	_ZTIN8asiodnp313ConsoleLoggerE
	.section	.data.rel.ro._ZTIN8asiodnp313ConsoleLoggerE,"awG",@progbits,_ZTIN8asiodnp313ConsoleLoggerE,comdat
	.align 8
	.type	_ZTIN8asiodnp313ConsoleLoggerE, @object
	.size	_ZTIN8asiodnp313ConsoleLoggerE, 56
_ZTIN8asiodnp313ConsoleLoggerE:
	.quad	_ZTVN10__cxxabiv121__vmi_class_type_infoE+16
	.quad	_ZTSN8asiodnp313ConsoleLoggerE
	.long	0
	.long	2
	.quad	_ZTIN7openpal11ILogHandlerE
	.quad	2
	.quad	_ZTIN7openpal10UncopyableE
	.quad	0
	.weak	_ZTVN8asiodnp313ConsoleLoggerE
	.section	.data.rel.ro._ZTVN8asiodnp313ConsoleLoggerE,"awG",@progbits,_ZTVN8asiodnp313ConsoleLoggerE,comdat
	.align 8
	.type	_ZTVN8asiodnp313ConsoleLoggerE, @object
	.size	_ZTVN8asiodnp313ConsoleLoggerE, 40
_ZTVN8asiodnp313ConsoleLoggerE:
	.quad	0
	.quad	_ZTIN8asiodnp313ConsoleLoggerE
	.quad	_ZN8asiodnp313ConsoleLoggerD1Ev
	.quad	_ZN8asiodnp313ConsoleLoggerD0Ev
	.quad	_ZN8asiodnp313ConsoleLogger3LogERKN7openpal8LogEntryE
	.local	_ZStL8__ioinit
	.comm	_ZStL8__ioinit,1,1
	.weakref	_ZL28__gthrw___pthread_key_createPjPFvPvE,__pthread_key_create
	.weakref	_ZL28__gthrw_pthread_mutex_unlockP15pthread_mutex_t,pthread_mutex_unlock
	.weakref	_ZL26__gthrw_pthread_mutex_lockP15pthread_mutex_t,pthread_mutex_lock
	.hidden	DW.ref.__gxx_personality_v0
	.weak	DW.ref.__gxx_personality_v0
	.section	.data.rel.local.DW.ref.__gxx_personality_v0,"awG",@progbits,DW.ref.__gxx_personality_v0,comdat
	.align 8
	.type	DW.ref.__gxx_personality_v0, @object
	.size	DW.ref.__gxx_personality_v0, 8
DW.ref.__gxx_personality_v0:
	.quad	__gxx_personality_v0
	.hidden	__dso_handle
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
