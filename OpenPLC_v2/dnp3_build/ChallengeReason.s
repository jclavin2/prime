	.file	"ChallengeReason.cpp"
	.text
	.p2align 4
	.globl	_ZN8opendnp321ChallengeReasonToTypeENS_15ChallengeReasonE
	.type	_ZN8opendnp321ChallengeReasonToTypeENS_15ChallengeReasonE, @function
_ZN8opendnp321ChallengeReasonToTypeENS_15ChallengeReasonE:
.LFB0:
	.cfi_startproc
	endbr64
	movl	%edi, %eax
	ret
	.cfi_endproc
.LFE0:
	.size	_ZN8opendnp321ChallengeReasonToTypeENS_15ChallengeReasonE, .-_ZN8opendnp321ChallengeReasonToTypeENS_15ChallengeReasonE
	.p2align 4
	.globl	_ZN8opendnp323ChallengeReasonFromTypeEh
	.type	_ZN8opendnp323ChallengeReasonFromTypeEh, @function
_ZN8opendnp323ChallengeReasonFromTypeEh:
.LFB1:
	.cfi_startproc
	endbr64
	cmpb	$1, %dil
	sete	%al
	leal	-1(%rax,%rax), %eax
	ret
	.cfi_endproc
.LFE1:
	.size	_ZN8opendnp323ChallengeReasonFromTypeEh, .-_ZN8opendnp323ChallengeReasonFromTypeEh
	.section	.rodata.str1.1,"aMS",@progbits,1
.LC0:
	.string	"CRITICAL"
.LC1:
	.string	"UNKNOWN"
	.text
	.p2align 4
	.globl	_ZN8opendnp323ChallengeReasonToStringENS_15ChallengeReasonE
	.type	_ZN8opendnp323ChallengeReasonToStringENS_15ChallengeReasonE, @function
_ZN8opendnp323ChallengeReasonToStringENS_15ChallengeReasonE:
.LFB2:
	.cfi_startproc
	endbr64
	cmpb	$1, %dil
	leaq	.LC1(%rip), %rdx
	leaq	.LC0(%rip), %rax
	cmovne	%rdx, %rax
	ret
	.cfi_endproc
.LFE2:
	.size	_ZN8opendnp323ChallengeReasonToStringENS_15ChallengeReasonE, .-_ZN8opendnp323ChallengeReasonToStringENS_15ChallengeReasonE
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
