	.file	"APDUHeaderParser.cpp"
	.text
	.section	.rodata.str1.8,"aMS",@progbits,1
	.align 8
.LC0:
	.string	"Request fragment  with insufficient size of %u bytes"
	.align 8
.LC1:
	.string	"/home/mimic/spire/spire-src-1.3/OpenPLC_v2/dnp3/cpp/libs/src/opendnp3/app/parsing/APDUHeaderParser.cpp(37)"
	.text
	.align 2
	.p2align 4
	.globl	_ZN8opendnp316APDUHeaderParser12ParseRequestERKN7openpal6RSliceERNS_10APDUHeaderEPNS1_6LoggerE
	.type	_ZN8opendnp316APDUHeaderParser12ParseRequestERKN7openpal6RSliceERNS_10APDUHeaderEPNS1_6LoggerE, @function
_ZN8opendnp316APDUHeaderParser12ParseRequestERKN7openpal6RSliceERNS_10APDUHeaderEPNS1_6LoggerE:
.LFB2078:
	.cfi_startproc
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
	subq	$152, %rsp
	.cfi_def_cfa_offset 192
	movq	%fs:40, %rax
	movq	%rax, 136(%rsp)
	xorl	%eax, %eax
	cmpl	$1, (%rdi)
	ja	.L2
	movq	%rdx, %rbp
	testq	%rdx, %rdx
	je	.L3
	leaq	8(%rsp), %r12
	movq	%rdx, %rdi
	movl	$4, 8(%rsp)
	movq	%r12, %rsi
	call	_ZNK7openpal6Logger9IsEnabledERKNS_10LogFiltersE@PLT
	testb	%al, %al
	jne	.L14
.L3:
	xorl	%eax, %eax
.L1:
	movq	136(%rsp), %rcx
	xorq	%fs:40, %rcx
	jne	.L15
	addq	$152, %rsp
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
.L2:
	.cfi_restore_state
	movq	8(%rdi), %rax
	movq	%rsi, %r12
	leaq	8(%rsp), %rdi
	movzbl	(%rax), %esi
	call	_ZN8opendnp315AppControlFieldC1Eh@PLT
	movl	8(%rsp), %eax
	movl	%eax, 1(%r12)
	movzbl	12(%rsp), %eax
	movb	%al, 5(%r12)
	movq	8(%rbx), %rax
	movzbl	1(%rax), %edi
	call	_ZN8opendnp320FunctionCodeFromTypeEh@PLT
	movb	%al, (%r12)
	movl	$1, %eax
	jmp	.L1
	.p2align 4,,10
	.p2align 3
.L14:
	movl	(%rbx), %r9d
	leaq	16(%rsp), %r13
	movl	$120, %ecx
	xorl	%eax, %eax
	leaq	.LC0(%rip), %r8
	movl	$1, %edx
	movl	$120, %esi
	movq	%r13, %rdi
	call	__snprintf_chk@PLT
	movq	%r13, %rcx
	movq	%r12, %rsi
	movq	%rbp, %rdi
	leaq	.LC1(%rip), %rdx
	movl	$4, 8(%rsp)
	call	_ZN7openpal6Logger3LogERKNS_10LogFiltersEPKcS5_@PLT
	xorl	%eax, %eax
	jmp	.L1
.L15:
	call	__stack_chk_fail@PLT
	.cfi_endproc
.LFE2078:
	.size	_ZN8opendnp316APDUHeaderParser12ParseRequestERKN7openpal6RSliceERNS_10APDUHeaderEPNS1_6LoggerE, .-_ZN8opendnp316APDUHeaderParser12ParseRequestERKN7openpal6RSliceERNS_10APDUHeaderEPNS1_6LoggerE
	.section	.rodata.str1.8
	.align 8
.LC2:
	.string	"Response fragment  with insufficient size of %u bytes"
	.align 8
.LC3:
	.string	"/home/mimic/spire/spire-src-1.3/OpenPLC_v2/dnp3/cpp/libs/src/opendnp3/app/parsing/APDUHeaderParser.cpp(52)"
	.text
	.align 2
	.p2align 4
	.globl	_ZN8opendnp316APDUHeaderParser13ParseResponseERKN7openpal6RSliceERNS_18APDUResponseHeaderEPNS1_6LoggerE
	.type	_ZN8opendnp316APDUHeaderParser13ParseResponseERKN7openpal6RSliceERNS_18APDUResponseHeaderEPNS1_6LoggerE, @function
_ZN8opendnp316APDUHeaderParser13ParseResponseERKN7openpal6RSliceERNS_18APDUResponseHeaderEPNS1_6LoggerE:
.LFB2079:
	.cfi_startproc
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
	subq	$152, %rsp
	.cfi_def_cfa_offset 192
	movq	%fs:40, %rax
	movq	%rax, 136(%rsp)
	xorl	%eax, %eax
	cmpl	$3, (%rdi)
	ja	.L17
	movq	%rdx, %r12
	testq	%rdx, %rdx
	je	.L18
	leaq	8(%rsp), %rbp
	movq	%rdx, %rdi
	movl	$4, 8(%rsp)
	movq	%rbp, %rsi
	call	_ZNK7openpal6Logger9IsEnabledERKNS_10LogFiltersE@PLT
	testb	%al, %al
	jne	.L28
.L18:
	xorl	%eax, %eax
.L16:
	movq	136(%rsp), %rcx
	xorq	%fs:40, %rcx
	jne	.L29
	addq	$152, %rsp
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
.L17:
	.cfi_restore_state
	movq	8(%rdi), %rax
	movq	%rsi, %rbp
	leaq	8(%rsp), %rdi
	movzbl	(%rax), %esi
	call	_ZN8opendnp315AppControlFieldC1Eh@PLT
	movl	8(%rsp), %eax
	movl	%eax, 1(%rbp)
	movzbl	12(%rsp), %eax
	movb	%al, 5(%rbp)
	movq	8(%rbx), %rax
	movzbl	1(%rax), %edi
	call	_ZN8opendnp320FunctionCodeFromTypeEh@PLT
	movb	%al, 0(%rbp)
	movq	8(%rbx), %rax
	movzbl	2(%rax), %edx
	movb	%dl, 6(%rbp)
	movzbl	3(%rax), %eax
	movb	%al, 7(%rbp)
	movl	$1, %eax
	jmp	.L16
	.p2align 4,,10
	.p2align 3
.L28:
	movl	(%rbx), %r9d
	leaq	16(%rsp), %r13
	movl	$120, %ecx
	xorl	%eax, %eax
	leaq	.LC2(%rip), %r8
	movl	$1, %edx
	movl	$120, %esi
	movq	%r13, %rdi
	call	__snprintf_chk@PLT
	movq	%r13, %rcx
	movq	%rbp, %rsi
	movq	%r12, %rdi
	leaq	.LC3(%rip), %rdx
	movl	$4, 8(%rsp)
	call	_ZN7openpal6Logger3LogERKNS_10LogFiltersEPKcS5_@PLT
	xorl	%eax, %eax
	jmp	.L16
.L29:
	call	__stack_chk_fail@PLT
	.cfi_endproc
.LFE2079:
	.size	_ZN8opendnp316APDUHeaderParser13ParseResponseERKN7openpal6RSliceERNS_18APDUResponseHeaderEPNS1_6LoggerE, .-_ZN8opendnp316APDUHeaderParser13ParseResponseERKN7openpal6RSliceERNS_18APDUResponseHeaderEPNS1_6LoggerE
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
