	.file	"ApplicationIIN.cpp"
	.text
	.align 2
	.p2align 4
	.globl	_ZN8opendnp314ApplicationIINC2Ev
	.type	_ZN8opendnp314ApplicationIINC2Ev, @function
_ZN8opendnp314ApplicationIINC2Ev:
.LFB29:
	.cfi_startproc
	endbr64
	movl	$0, (%rdi)
	ret
	.cfi_endproc
.LFE29:
	.size	_ZN8opendnp314ApplicationIINC2Ev, .-_ZN8opendnp314ApplicationIINC2Ev
	.globl	_ZN8opendnp314ApplicationIINC1Ev
	.set	_ZN8opendnp314ApplicationIINC1Ev,_ZN8opendnp314ApplicationIINC2Ev
	.align 2
	.p2align 4
	.globl	_ZNK8opendnp314ApplicationIIN5ToIINEv
	.type	_ZNK8opendnp314ApplicationIIN5ToIINEv, @function
_ZNK8opendnp314ApplicationIIN5ToIINEv:
.LFB31:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movl	$4, %esi
	pushq	%rbx
	.cfi_def_cfa_offset 24
	.cfi_offset 3, -24
	movq	%rdi, %rbx
	subq	$24, %rsp
	.cfi_def_cfa_offset 48
	movzbl	(%rdi), %edx
	movq	%fs:40, %rax
	movq	%rax, 8(%rsp)
	xorl	%eax, %eax
	leaq	6(%rsp), %rbp
	xorl	%eax, %eax
	movq	%rbp, %rdi
	movw	%ax, 6(%rsp)
	call	_ZN8opendnp38IINField13SetBitToValueENS_6IINBitEb@PLT
	movzbl	1(%rbx), %edx
	movl	$5, %esi
	movq	%rbp, %rdi
	call	_ZN8opendnp38IINField13SetBitToValueENS_6IINBitEb@PLT
	movzbl	3(%rbx), %edx
	movl	$13, %esi
	movq	%rbp, %rdi
	call	_ZN8opendnp38IINField13SetBitToValueENS_6IINBitEb@PLT
	movzbl	2(%rbx), %edx
	movl	$6, %esi
	movq	%rbp, %rdi
	call	_ZN8opendnp38IINField13SetBitToValueENS_6IINBitEb@PLT
	movzwl	6(%rsp), %eax
	movq	8(%rsp), %rcx
	xorq	%fs:40, %rcx
	jne	.L6
	addq	$24, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 24
	popq	%rbx
	.cfi_def_cfa_offset 16
	popq	%rbp
	.cfi_def_cfa_offset 8
	ret
.L6:
	.cfi_restore_state
	call	__stack_chk_fail@PLT
	.cfi_endproc
.LFE31:
	.size	_ZNK8opendnp314ApplicationIIN5ToIINEv, .-_ZNK8opendnp314ApplicationIIN5ToIINEv
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
