	.file	"APDULogging.cpp"
	.text
	.section	.rodata.str1.8,"aMS",@progbits,1
	.align 8
.LC0:
	.string	"FIR: %i FIN: %i CON: %i UNS: %i SEQ: %i FUNC: %s"
	.align 8
.LC1:
	.string	"/home/mimic/spire/spire-src-1.3/OpenPLC_v2/dnp3/cpp/libs/src/opendnp3/app/APDULogging.cpp(66)"
	.text
	.p2align 4
	.globl	_ZN8opendnp37logging20ParseAndLogRequestTxEN7openpal6LoggerERKNS1_6RSliceE
	.type	_ZN8opendnp37logging20ParseAndLogRequestTxEN7openpal6LoggerERKNS1_6RSliceE, @function
_ZN8opendnp37logging20ParseAndLogRequestTxEN7openpal6LoggerERKNS1_6RSliceE:
.LFB2317:
	.cfi_startproc
	endbr64
	pushq	%r14
	.cfi_def_cfa_offset 16
	.cfi_offset 14, -16
	pushq	%r13
	.cfi_def_cfa_offset 24
	.cfi_offset 13, -24
	movq	%rsi, %r13
	pushq	%r12
	.cfi_def_cfa_offset 32
	.cfi_offset 12, -32
	pushq	%rbp
	.cfi_def_cfa_offset 40
	.cfi_offset 6, -40
	movq	%rdi, %rbp
	subq	$168, %rsp
	.cfi_def_cfa_offset 208
	movq	%fs:40, %rax
	movq	%rax, 152(%rsp)
	xorl	%eax, %eax
	leaq	16(%rsp), %r12
	movl	$65536, 16(%rsp)
	movq	%r12, %rsi
	call	_ZNK7openpal6Logger9IsEnabledERKNS_10LogFiltersE@PLT
	testb	%al, %al
	jne	.L23
.L2:
	movq	%r12, %rsi
	movq	%rbp, %rdi
	movl	$4096, 16(%rsp)
	call	_ZNK7openpal6Logger9IsEnabledERKNS_10LogFiltersE@PLT
	testb	%al, %al
	jne	.L24
.L1:
	movq	152(%rsp), %rax
	xorq	%fs:40, %rax
	jne	.L25
	addq	$168, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 40
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
.L23:
	.cfi_restore_state
	movl	$18, %r8d
	movq	%r13, %rdx
	movq	%r12, %rsi
	movq	%rbp, %rdi
	movl	$18, %ecx
	movl	$65536, 16(%rsp)
	call	_ZN7openpal6LogHexERNS_6LoggerERKNS_10LogFiltersERKNS_6RSliceEjj@PLT
	jmp	.L2
	.p2align 4,,10
	.p2align 3
.L24:
	leaq	11(%rsp), %rdi
	xorl	%r9d, %r9d
	xorl	%r8d, %r8d
	xorl	%ecx, %ecx
	movl	$1, %edx
	movl	$1, %esi
	leaq	10(%rsp), %r14
	movb	$-1, 10(%rsp)
	call	_ZN8opendnp315AppControlFieldC1Ebbbbh@PLT
	movq	%rbp, %rdx
	movq	%r14, %rsi
	movq	%r13, %rdi
	call	_ZN8opendnp316APDUHeaderParser12ParseRequestERKN7openpal6RSliceERNS_10APDUHeaderEPNS1_6LoggerE@PLT
	testb	%al, %al
	je	.L1
	movq	%r12, %rsi
	movq	%rbp, %rdi
	movl	$4096, 16(%rsp)
	call	_ZNK7openpal6Logger9IsEnabledERKNS_10LogFiltersE@PLT
	testb	%al, %al
	jne	.L26
.L6:
	movq	%r12, %rsi
	movq	%rbp, %rdi
	movl	$16384, 16(%rsp)
	call	_ZNK7openpal6Logger9IsEnabledERKNS_10LogFiltersE@PLT
	testb	%al, %al
	je	.L1
	xorl	%r14d, %r14d
	cmpb	$1, 10(%rsp)
	movq	%r13, %rdi
	movl	$2, %esi
	setne	%r14b
	call	_ZNK7openpal6RSlice4SkipEj@PLT
	btsq	$46, %r14
	movq	%rbp, %rsi
	movq	%r12, %rdi
	movq	%rdx, 24(%rsp)
	movq	%r14, %rdx
	movl	%eax, 16(%rsp)
	call	_ZN8opendnp310APDUParser14ParseAndLogAllERKN7openpal6RSliceEPNS1_6LoggerENS_14ParserSettingsE@PLT
	jmp	.L1
	.p2align 4,,10
	.p2align 3
.L26:
	movzbl	10(%rsp), %edi
	leaq	32(%rsp), %r14
	call	_ZN8opendnp320FunctionCodeToStringENS_12FunctionCodeE@PLT
	subq	$8, %rsp
	.cfi_def_cfa_offset 216
	movq	%r14, %rdi
	leaq	.LC0(%rip), %r8
	pushq	%rax
	.cfi_def_cfa_offset 224
	movzbl	31(%rsp), %eax
	movl	$120, %ecx
	movl	$1, %edx
	movl	$120, %esi
	pushq	%rax
	.cfi_def_cfa_offset 232
	movzbl	38(%rsp), %eax
	pushq	%rax
	.cfi_def_cfa_offset 240
	movzbl	45(%rsp), %eax
	pushq	%rax
	.cfi_def_cfa_offset 248
	movzbl	52(%rsp), %eax
	pushq	%rax
	.cfi_def_cfa_offset 256
	movzbl	59(%rsp), %r9d
	xorl	%eax, %eax
	call	__snprintf_chk@PLT
	movq	%r14, %rcx
	movq	%r12, %rsi
	movq	%rbp, %rdi
	movl	$4096, 64(%rsp)
	leaq	.LC1(%rip), %rdx
	addq	$48, %rsp
	.cfi_def_cfa_offset 208
	call	_ZN7openpal6Logger3LogERKNS_10LogFiltersEPKcS5_@PLT
	jmp	.L6
.L25:
	call	__stack_chk_fail@PLT
	.cfi_endproc
.LFE2317:
	.size	_ZN8opendnp37logging20ParseAndLogRequestTxEN7openpal6LoggerERKNS1_6RSliceE, .-_ZN8opendnp37logging20ParseAndLogRequestTxEN7openpal6LoggerERKNS1_6RSliceE
	.section	.rodata.str1.8
	.align 8
.LC2:
	.string	"FIR: %i FIN: %i CON: %i UNS: %i SEQ: %i FUNC: %s IIN: [0x%02x, 0x%02x]"
	.align 8
.LC3:
	.string	"/home/mimic/spire/spire-src-1.3/OpenPLC_v2/dnp3/cpp/libs/src/opendnp3/app/APDULogging.cpp(99)"
	.text
	.p2align 4
	.globl	_ZN8opendnp37logging21ParseAndLogResponseTxEN7openpal6LoggerERKNS1_6RSliceE
	.type	_ZN8opendnp37logging21ParseAndLogResponseTxEN7openpal6LoggerERKNS1_6RSliceE, @function
_ZN8opendnp37logging21ParseAndLogResponseTxEN7openpal6LoggerERKNS1_6RSliceE:
.LFB2318:
	.cfi_startproc
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
	movq	%rsi, %r13
	pushq	%r12
	.cfi_def_cfa_offset 40
	.cfi_offset 12, -40
	pushq	%rbp
	.cfi_def_cfa_offset 48
	.cfi_offset 6, -48
	movq	%rdi, %rbp
	pushq	%rbx
	.cfi_def_cfa_offset 56
	.cfi_offset 3, -56
	subq	$168, %rsp
	.cfi_def_cfa_offset 224
	movq	%fs:40, %rax
	movq	%rax, 152(%rsp)
	xorl	%eax, %eax
	leaq	16(%rsp), %r12
	movl	$65536, 16(%rsp)
	movq	%r12, %rsi
	call	_ZNK7openpal6Logger9IsEnabledERKNS_10LogFiltersE@PLT
	testb	%al, %al
	jne	.L48
.L28:
	movq	%r12, %rsi
	movq	%rbp, %rdi
	movl	$4096, 16(%rsp)
	call	_ZNK7openpal6Logger9IsEnabledERKNS_10LogFiltersE@PLT
	testb	%al, %al
	jne	.L49
.L27:
	movq	152(%rsp), %rax
	xorq	%fs:40, %rax
	jne	.L50
	addq	$168, %rsp
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
.L48:
	.cfi_restore_state
	movl	$18, %r8d
	movq	%r13, %rdx
	movq	%r12, %rsi
	movq	%rbp, %rdi
	movl	$18, %ecx
	movl	$65536, 16(%rsp)
	call	_ZN7openpal6LogHexERNS_6LoggerERKNS_10LogFiltersERKNS_6RSliceEjj@PLT
	jmp	.L28
	.p2align 4,,10
	.p2align 3
.L49:
	leaq	9(%rsp), %rdi
	xorl	%r9d, %r9d
	xorl	%r8d, %r8d
	xorl	%ecx, %ecx
	movl	$1, %edx
	movl	$1, %esi
	leaq	8(%rsp), %r14
	movb	$-1, 8(%rsp)
	call	_ZN8opendnp315AppControlFieldC1Ebbbbh@PLT
	xorl	%eax, %eax
	movq	%rbp, %rdx
	movq	%r14, %rsi
	movq	%r13, %rdi
	movw	%ax, 14(%rsp)
	call	_ZN8opendnp316APDUHeaderParser13ParseResponseERKN7openpal6RSliceERNS_18APDUResponseHeaderEPNS1_6LoggerE@PLT
	testb	%al, %al
	je	.L27
	movq	%r12, %rsi
	movq	%rbp, %rdi
	movl	$4096, 16(%rsp)
	call	_ZNK7openpal6Logger9IsEnabledERKNS_10LogFiltersE@PLT
	testb	%al, %al
	jne	.L51
.L32:
	movq	%r12, %rsi
	movq	%rbp, %rdi
	movl	$16384, 16(%rsp)
	call	_ZNK7openpal6Logger9IsEnabledERKNS_10LogFiltersE@PLT
	testb	%al, %al
	je	.L27
	movq	%r13, %rdi
	movl	$4, %esi
	call	_ZNK7openpal6RSlice4SkipEj@PLT
	movq	%rbp, %rsi
	movq	%r12, %rdi
	movq	%rdx, 24(%rsp)
	movabsq	$70368744177665, %rdx
	movl	%eax, 16(%rsp)
	call	_ZN8opendnp310APDUParser14ParseAndLogAllERKN7openpal6RSliceEPNS1_6LoggerENS_14ParserSettingsE@PLT
	jmp	.L27
	.p2align 4,,10
	.p2align 3
.L51:
	movzbl	8(%rsp), %edi
	movzbl	15(%rsp), %r15d
	leaq	32(%rsp), %r14
	movzbl	14(%rsp), %ebx
	call	_ZN8opendnp320FunctionCodeToStringENS_12FunctionCodeE@PLT
	subq	$8, %rsp
	.cfi_def_cfa_offset 232
	movq	%r14, %rdi
	leaq	.LC2(%rip), %r8
	pushq	%r15
	.cfi_def_cfa_offset 240
	movl	$120, %ecx
	movl	$1, %edx
	movl	$120, %esi
	pushq	%rbx
	.cfi_def_cfa_offset 248
	pushq	%rax
	.cfi_def_cfa_offset 256
	movzbl	45(%rsp), %eax
	pushq	%rax
	.cfi_def_cfa_offset 264
	movzbl	52(%rsp), %eax
	pushq	%rax
	.cfi_def_cfa_offset 272
	movzbl	59(%rsp), %eax
	pushq	%rax
	.cfi_def_cfa_offset 280
	movzbl	66(%rsp), %eax
	pushq	%rax
	.cfi_def_cfa_offset 288
	movzbl	73(%rsp), %r9d
	xorl	%eax, %eax
	call	__snprintf_chk@PLT
	movq	%r14, %rcx
	movq	%r12, %rsi
	movq	%rbp, %rdi
	movl	$4096, 80(%rsp)
	leaq	.LC3(%rip), %rdx
	addq	$64, %rsp
	.cfi_def_cfa_offset 224
	call	_ZN7openpal6Logger3LogERKNS_10LogFiltersEPKcS5_@PLT
	jmp	.L32
.L50:
	call	__stack_chk_fail@PLT
	.cfi_endproc
.LFE2318:
	.size	_ZN8opendnp37logging21ParseAndLogResponseTxEN7openpal6LoggerERKNS1_6RSliceE, .-_ZN8opendnp37logging21ParseAndLogResponseTxEN7openpal6LoggerERKNS1_6RSliceE
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
