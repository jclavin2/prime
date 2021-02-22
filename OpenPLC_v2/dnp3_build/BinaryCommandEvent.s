	.file	"BinaryCommandEvent.cpp"
	.text
	.align 2
	.p2align 4
	.globl	_ZN8opendnp318BinaryCommandEventC2Ev
	.type	_ZN8opendnp318BinaryCommandEventC2Ev, @function
_ZN8opendnp318BinaryCommandEventC2Ev:
.LFB29:
	.cfi_startproc
	endbr64
	xorl	%eax, %eax
	movq	$0, 8(%rdi)
	movw	%ax, (%rdi)
	ret
	.cfi_endproc
.LFE29:
	.size	_ZN8opendnp318BinaryCommandEventC2Ev, .-_ZN8opendnp318BinaryCommandEventC2Ev
	.globl	_ZN8opendnp318BinaryCommandEventC1Ev
	.set	_ZN8opendnp318BinaryCommandEventC1Ev,_ZN8opendnp318BinaryCommandEventC2Ev
	.align 2
	.p2align 4
	.globl	_ZN8opendnp318BinaryCommandEventC2EbNS_13CommandStatusE
	.type	_ZN8opendnp318BinaryCommandEventC2EbNS_13CommandStatusE, @function
_ZN8opendnp318BinaryCommandEventC2EbNS_13CommandStatusE:
.LFB38:
	.cfi_startproc
	endbr64
	movb	%sil, (%rdi)
	movb	%dl, 1(%rdi)
	movq	$0, 8(%rdi)
	ret
	.cfi_endproc
.LFE38:
	.size	_ZN8opendnp318BinaryCommandEventC2EbNS_13CommandStatusE, .-_ZN8opendnp318BinaryCommandEventC2EbNS_13CommandStatusE
	.globl	_ZN8opendnp318BinaryCommandEventC1EbNS_13CommandStatusE
	.set	_ZN8opendnp318BinaryCommandEventC1EbNS_13CommandStatusE,_ZN8opendnp318BinaryCommandEventC2EbNS_13CommandStatusE
	.align 2
	.p2align 4
	.globl	_ZN8opendnp318BinaryCommandEventC2EbNS_13CommandStatusEN7openpal10UInt48TypeE
	.type	_ZN8opendnp318BinaryCommandEventC2EbNS_13CommandStatusEN7openpal10UInt48TypeE, @function
_ZN8opendnp318BinaryCommandEventC2EbNS_13CommandStatusEN7openpal10UInt48TypeE:
.LFB41:
	.cfi_startproc
	endbr64
	movb	%sil, (%rdi)
	movb	%dl, 1(%rdi)
	movq	%rcx, 8(%rdi)
	ret
	.cfi_endproc
.LFE41:
	.size	_ZN8opendnp318BinaryCommandEventC2EbNS_13CommandStatusEN7openpal10UInt48TypeE, .-_ZN8opendnp318BinaryCommandEventC2EbNS_13CommandStatusEN7openpal10UInt48TypeE
	.globl	_ZN8opendnp318BinaryCommandEventC1EbNS_13CommandStatusEN7openpal10UInt48TypeE
	.set	_ZN8opendnp318BinaryCommandEventC1EbNS_13CommandStatusEN7openpal10UInt48TypeE,_ZN8opendnp318BinaryCommandEventC2EbNS_13CommandStatusEN7openpal10UInt48TypeE
	.align 2
	.p2align 4
	.globl	_ZNK8opendnp318BinaryCommandEvent8GetFlagsEv
	.type	_ZNK8opendnp318BinaryCommandEvent8GetFlagsEv, @function
_ZNK8opendnp318BinaryCommandEvent8GetFlagsEv:
.LFB43:
	.cfi_startproc
	endbr64
	pushq	%rbx
	.cfi_def_cfa_offset 16
	.cfi_offset 3, -16
	movzbl	(%rdi), %eax
	movzbl	1(%rdi), %edi
	sall	$7, %eax
	movl	%eax, %ebx
	call	_ZN8opendnp319CommandStatusToTypeENS_13CommandStatusE@PLT
	orl	%ebx, %eax
	popq	%rbx
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE43:
	.size	_ZNK8opendnp318BinaryCommandEvent8GetFlagsEv, .-_ZNK8opendnp318BinaryCommandEvent8GetFlagsEv
	.align 2
	.p2align 4
	.globl	_ZNK8opendnp318BinaryCommandEventeqERKS0_
	.type	_ZNK8opendnp318BinaryCommandEventeqERKS0_, @function
_ZNK8opendnp318BinaryCommandEventeqERKS0_:
.LFB44:
	.cfi_startproc
	endbr64
	movzwl	(%rsi), %edx
	xorl	%eax, %eax
	cmpw	%dx, (%rdi)
	je	.L10
	ret
	.p2align 4,,10
	.p2align 3
.L10:
	movq	8(%rsi), %rax
	cmpq	%rax, 8(%rdi)
	sete	%al
	ret
	.cfi_endproc
.LFE44:
	.size	_ZNK8opendnp318BinaryCommandEventeqERKS0_, .-_ZNK8opendnp318BinaryCommandEventeqERKS0_
	.align 2
	.p2align 4
	.globl	_ZN8opendnp318BinaryCommandEvent17GetValueFromFlagsENS_5FlagsE
	.type	_ZN8opendnp318BinaryCommandEvent17GetValueFromFlagsENS_5FlagsE, @function
_ZN8opendnp318BinaryCommandEvent17GetValueFromFlagsENS_5FlagsE:
.LFB45:
	.cfi_startproc
	endbr64
	movl	%edi, %eax
	shrb	$7, %al
	ret
	.cfi_endproc
.LFE45:
	.size	_ZN8opendnp318BinaryCommandEvent17GetValueFromFlagsENS_5FlagsE, .-_ZN8opendnp318BinaryCommandEvent17GetValueFromFlagsENS_5FlagsE
	.align 2
	.p2align 4
	.globl	_ZN8opendnp318BinaryCommandEvent18GetStatusFromFlagsENS_5FlagsE
	.type	_ZN8opendnp318BinaryCommandEvent18GetStatusFromFlagsENS_5FlagsE, @function
_ZN8opendnp318BinaryCommandEvent18GetStatusFromFlagsENS_5FlagsE:
.LFB46:
	.cfi_startproc
	endbr64
	andl	$127, %edi
	jmp	_ZN8opendnp321CommandStatusFromTypeEh@PLT
	.cfi_endproc
.LFE46:
	.size	_ZN8opendnp318BinaryCommandEvent18GetStatusFromFlagsENS_5FlagsE, .-_ZN8opendnp318BinaryCommandEvent18GetStatusFromFlagsENS_5FlagsE
	.align 2
	.p2align 4
	.globl	_ZN8opendnp318BinaryCommandEventC2ENS_5FlagsE
	.type	_ZN8opendnp318BinaryCommandEventC2ENS_5FlagsE, @function
_ZN8opendnp318BinaryCommandEventC2ENS_5FlagsE:
.LFB32:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movl	%esi, %ebp
	pushq	%rbx
	.cfi_def_cfa_offset 24
	.cfi_offset 3, -24
	movq	%rdi, %rbx
	movl	%esi, %edi
	subq	$8, %rsp
	.cfi_def_cfa_offset 32
	call	_ZN8opendnp318BinaryCommandEvent17GetValueFromFlagsENS_5FlagsE@PLT
	movl	%ebp, %edi
	movb	%al, (%rbx)
	call	_ZN8opendnp318BinaryCommandEvent18GetStatusFromFlagsENS_5FlagsE@PLT
	movq	$0, 8(%rbx)
	movb	%al, 1(%rbx)
	addq	$8, %rsp
	.cfi_def_cfa_offset 24
	popq	%rbx
	.cfi_def_cfa_offset 16
	popq	%rbp
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE32:
	.size	_ZN8opendnp318BinaryCommandEventC2ENS_5FlagsE, .-_ZN8opendnp318BinaryCommandEventC2ENS_5FlagsE
	.globl	_ZN8opendnp318BinaryCommandEventC1ENS_5FlagsE
	.set	_ZN8opendnp318BinaryCommandEventC1ENS_5FlagsE,_ZN8opendnp318BinaryCommandEventC2ENS_5FlagsE
	.align 2
	.p2align 4
	.globl	_ZN8opendnp318BinaryCommandEventC2ENS_5FlagsEN7openpal10UInt48TypeE
	.type	_ZN8opendnp318BinaryCommandEventC2ENS_5FlagsEN7openpal10UInt48TypeE, @function
_ZN8opendnp318BinaryCommandEventC2ENS_5FlagsEN7openpal10UInt48TypeE:
.LFB35:
	.cfi_startproc
	endbr64
	pushq	%r12
	.cfi_def_cfa_offset 16
	.cfi_offset 12, -16
	movq	%rdx, %r12
	pushq	%rbp
	.cfi_def_cfa_offset 24
	.cfi_offset 6, -24
	movl	%esi, %ebp
	pushq	%rbx
	.cfi_def_cfa_offset 32
	.cfi_offset 3, -32
	movq	%rdi, %rbx
	movl	%esi, %edi
	call	_ZN8opendnp318BinaryCommandEvent17GetValueFromFlagsENS_5FlagsE@PLT
	movl	%ebp, %edi
	movb	%al, (%rbx)
	call	_ZN8opendnp318BinaryCommandEvent18GetStatusFromFlagsENS_5FlagsE@PLT
	movq	%r12, 8(%rbx)
	movb	%al, 1(%rbx)
	popq	%rbx
	.cfi_def_cfa_offset 24
	popq	%rbp
	.cfi_def_cfa_offset 16
	popq	%r12
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE35:
	.size	_ZN8opendnp318BinaryCommandEventC2ENS_5FlagsEN7openpal10UInt48TypeE, .-_ZN8opendnp318BinaryCommandEventC2ENS_5FlagsEN7openpal10UInt48TypeE
	.globl	_ZN8opendnp318BinaryCommandEventC1ENS_5FlagsEN7openpal10UInt48TypeE
	.set	_ZN8opendnp318BinaryCommandEventC1ENS_5FlagsEN7openpal10UInt48TypeE,_ZN8opendnp318BinaryCommandEventC2ENS_5FlagsEN7openpal10UInt48TypeE
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
