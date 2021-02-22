	.file	"ControlRelayOutputBlock.cpp"
	.text
	.align 2
	.p2align 4
	.globl	_ZN8opendnp323ControlRelayOutputBlockC2ENS_11ControlCodeEhjjNS_13CommandStatusE
	.type	_ZN8opendnp323ControlRelayOutputBlockC2ENS_11ControlCodeEhjjNS_13CommandStatusE, @function
_ZN8opendnp323ControlRelayOutputBlockC2ENS_11ControlCodeEhjjNS_13CommandStatusE:
.LFB3:
	.cfi_startproc
	endbr64
	pushq	%r14
	.cfi_def_cfa_offset 16
	.cfi_offset 14, -16
	movl	%edx, %r14d
	pushq	%r13
	.cfi_def_cfa_offset 24
	.cfi_offset 13, -24
	movl	%ecx, %r13d
	pushq	%r12
	.cfi_def_cfa_offset 32
	.cfi_offset 12, -32
	movl	%r8d, %r12d
	pushq	%rbp
	.cfi_def_cfa_offset 40
	.cfi_offset 6, -40
	movl	%r9d, %ebp
	pushq	%rbx
	.cfi_def_cfa_offset 48
	.cfi_offset 3, -48
	movq	%rdi, %rbx
	movl	%esi, %edi
	movb	%sil, (%rbx)
	call	_ZN8opendnp317ControlCodeToTypeENS_11ControlCodeE@PLT
	movb	%r14b, 2(%rbx)
	movl	%r13d, 4(%rbx)
	movl	%r12d, 8(%rbx)
	movb	%bpl, 12(%rbx)
	movb	%al, 1(%rbx)
	popq	%rbx
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
	.cfi_endproc
.LFE3:
	.size	_ZN8opendnp323ControlRelayOutputBlockC2ENS_11ControlCodeEhjjNS_13CommandStatusE, .-_ZN8opendnp323ControlRelayOutputBlockC2ENS_11ControlCodeEhjjNS_13CommandStatusE
	.globl	_ZN8opendnp323ControlRelayOutputBlockC1ENS_11ControlCodeEhjjNS_13CommandStatusE
	.set	_ZN8opendnp323ControlRelayOutputBlockC1ENS_11ControlCodeEhjjNS_13CommandStatusE,_ZN8opendnp323ControlRelayOutputBlockC2ENS_11ControlCodeEhjjNS_13CommandStatusE
	.align 2
	.p2align 4
	.globl	_ZN8opendnp323ControlRelayOutputBlockC2EhhjjNS_13CommandStatusE
	.type	_ZN8opendnp323ControlRelayOutputBlockC2EhhjjNS_13CommandStatusE, @function
_ZN8opendnp323ControlRelayOutputBlockC2EhhjjNS_13CommandStatusE:
.LFB6:
	.cfi_startproc
	endbr64
	pushq	%r15
	.cfi_def_cfa_offset 16
	.cfi_offset 15, -16
	movl	%edx, %r15d
	pushq	%r14
	.cfi_def_cfa_offset 24
	.cfi_offset 14, -24
	movl	%ecx, %r14d
	pushq	%r13
	.cfi_def_cfa_offset 32
	.cfi_offset 13, -32
	movl	%r8d, %r13d
	pushq	%r12
	.cfi_def_cfa_offset 40
	.cfi_offset 12, -40
	movl	%r9d, %r12d
	pushq	%rbp
	.cfi_def_cfa_offset 48
	.cfi_offset 6, -48
	movl	%esi, %ebp
	pushq	%rbx
	.cfi_def_cfa_offset 56
	.cfi_offset 3, -56
	movq	%rdi, %rbx
	movzbl	%sil, %edi
	subq	$8, %rsp
	.cfi_def_cfa_offset 64
	call	_ZN8opendnp319ControlCodeFromTypeEh@PLT
	movb	%bpl, 1(%rbx)
	movb	%r15b, 2(%rbx)
	movl	%r14d, 4(%rbx)
	movl	%r13d, 8(%rbx)
	movb	%r12b, 12(%rbx)
	movb	%al, (%rbx)
	addq	$8, %rsp
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
	.cfi_endproc
.LFE6:
	.size	_ZN8opendnp323ControlRelayOutputBlockC2EhhjjNS_13CommandStatusE, .-_ZN8opendnp323ControlRelayOutputBlockC2EhhjjNS_13CommandStatusE
	.globl	_ZN8opendnp323ControlRelayOutputBlockC1EhhjjNS_13CommandStatusE
	.set	_ZN8opendnp323ControlRelayOutputBlockC1EhhjjNS_13CommandStatusE,_ZN8opendnp323ControlRelayOutputBlockC2EhhjjNS_13CommandStatusE
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
