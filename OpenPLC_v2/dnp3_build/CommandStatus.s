	.file	"CommandStatus.cpp"
	.text
	.p2align 4
	.globl	_ZN8opendnp319CommandStatusToTypeENS_13CommandStatusE
	.type	_ZN8opendnp319CommandStatusToTypeENS_13CommandStatusE, @function
_ZN8opendnp319CommandStatusToTypeENS_13CommandStatusE:
.LFB0:
	.cfi_startproc
	endbr64
	movl	%edi, %eax
	ret
	.cfi_endproc
.LFE0:
	.size	_ZN8opendnp319CommandStatusToTypeENS_13CommandStatusE, .-_ZN8opendnp319CommandStatusToTypeENS_13CommandStatusE
	.p2align 4
	.globl	_ZN8opendnp321CommandStatusFromTypeEh
	.type	_ZN8opendnp321CommandStatusFromTypeEh, @function
_ZN8opendnp321CommandStatusFromTypeEh:
.LFB1:
	.cfi_startproc
	endbr64
	movzbl	%dil, %edx
	movl	$127, %eax
	cmpb	$126, %dil
	ja	.L3
	leaq	CSWTCH.2(%rip), %rax
	movzbl	(%rax,%rdx), %eax
.L3:
	ret
	.cfi_endproc
.LFE1:
	.size	_ZN8opendnp321CommandStatusFromTypeEh, .-_ZN8opendnp321CommandStatusFromTypeEh
	.section	.rodata.str1.1,"aMS",@progbits,1
.LC0:
	.string	"UNDEFINED"
.LC1:
	.string	"SUCCESS"
.LC2:
	.string	"NO_SELECT"
.LC3:
	.string	"FORMAT_ERROR"
.LC4:
	.string	"NOT_SUPPORTED"
.LC5:
	.string	"ALREADY_ACTIVE"
.LC6:
	.string	"HARDWARE_ERROR"
.LC7:
	.string	"LOCAL"
.LC8:
	.string	"TOO_MANY_OPS"
.LC9:
	.string	"NOT_AUTHORIZED"
.LC10:
	.string	"AUTOMATION_INHIBIT"
.LC11:
	.string	"PROCESSING_LIMITED"
.LC12:
	.string	"OUT_OF_RANGE"
.LC13:
	.string	"DOWNSTREAM_LOCAL"
.LC14:
	.string	"ALREADY_COMPLETE"
.LC15:
	.string	"BLOCKED"
.LC16:
	.string	"CANCELLED"
.LC17:
	.string	"BLOCKED_OTHER_MASTER"
.LC18:
	.string	"DOWNSTREAM_FAIL"
.LC19:
	.string	"NON_PARTICIPATING"
.LC20:
	.string	"TIMEOUT"
	.text
	.p2align 4
	.globl	_ZN8opendnp321CommandStatusToStringENS_13CommandStatusE
	.type	_ZN8opendnp321CommandStatusToStringENS_13CommandStatusE, @function
_ZN8opendnp321CommandStatusToStringENS_13CommandStatusE:
.LFB2:
	.cfi_startproc
	endbr64
	movzbl	%dil, %eax
	cmpb	$126, %dil
	ja	.L7
	leaq	.L9(%rip), %rdx
	movslq	(%rdx,%rax,4), %rax
	addq	%rdx, %rax
	notrack jmp	*%rax
	.section	.rodata
	.align 4
	.align 4
.L9:
	.long	.L29-.L9
	.long	.L27-.L9
	.long	.L26-.L9
	.long	.L25-.L9
	.long	.L24-.L9
	.long	.L23-.L9
	.long	.L22-.L9
	.long	.L21-.L9
	.long	.L20-.L9
	.long	.L19-.L9
	.long	.L18-.L9
	.long	.L17-.L9
	.long	.L16-.L9
	.long	.L15-.L9
	.long	.L14-.L9
	.long	.L13-.L9
	.long	.L12-.L9
	.long	.L11-.L9
	.long	.L10-.L9
	.long	.L7-.L9
	.long	.L7-.L9
	.long	.L7-.L9
	.long	.L7-.L9
	.long	.L7-.L9
	.long	.L7-.L9
	.long	.L7-.L9
	.long	.L7-.L9
	.long	.L7-.L9
	.long	.L7-.L9
	.long	.L7-.L9
	.long	.L7-.L9
	.long	.L7-.L9
	.long	.L7-.L9
	.long	.L7-.L9
	.long	.L7-.L9
	.long	.L7-.L9
	.long	.L7-.L9
	.long	.L7-.L9
	.long	.L7-.L9
	.long	.L7-.L9
	.long	.L7-.L9
	.long	.L7-.L9
	.long	.L7-.L9
	.long	.L7-.L9
	.long	.L7-.L9
	.long	.L7-.L9
	.long	.L7-.L9
	.long	.L7-.L9
	.long	.L7-.L9
	.long	.L7-.L9
	.long	.L7-.L9
	.long	.L7-.L9
	.long	.L7-.L9
	.long	.L7-.L9
	.long	.L7-.L9
	.long	.L7-.L9
	.long	.L7-.L9
	.long	.L7-.L9
	.long	.L7-.L9
	.long	.L7-.L9
	.long	.L7-.L9
	.long	.L7-.L9
	.long	.L7-.L9
	.long	.L7-.L9
	.long	.L7-.L9
	.long	.L7-.L9
	.long	.L7-.L9
	.long	.L7-.L9
	.long	.L7-.L9
	.long	.L7-.L9
	.long	.L7-.L9
	.long	.L7-.L9
	.long	.L7-.L9
	.long	.L7-.L9
	.long	.L7-.L9
	.long	.L7-.L9
	.long	.L7-.L9
	.long	.L7-.L9
	.long	.L7-.L9
	.long	.L7-.L9
	.long	.L7-.L9
	.long	.L7-.L9
	.long	.L7-.L9
	.long	.L7-.L9
	.long	.L7-.L9
	.long	.L7-.L9
	.long	.L7-.L9
	.long	.L7-.L9
	.long	.L7-.L9
	.long	.L7-.L9
	.long	.L7-.L9
	.long	.L7-.L9
	.long	.L7-.L9
	.long	.L7-.L9
	.long	.L7-.L9
	.long	.L7-.L9
	.long	.L7-.L9
	.long	.L7-.L9
	.long	.L7-.L9
	.long	.L7-.L9
	.long	.L7-.L9
	.long	.L7-.L9
	.long	.L7-.L9
	.long	.L7-.L9
	.long	.L7-.L9
	.long	.L7-.L9
	.long	.L7-.L9
	.long	.L7-.L9
	.long	.L7-.L9
	.long	.L7-.L9
	.long	.L7-.L9
	.long	.L7-.L9
	.long	.L7-.L9
	.long	.L7-.L9
	.long	.L7-.L9
	.long	.L7-.L9
	.long	.L7-.L9
	.long	.L7-.L9
	.long	.L7-.L9
	.long	.L7-.L9
	.long	.L7-.L9
	.long	.L7-.L9
	.long	.L7-.L9
	.long	.L7-.L9
	.long	.L7-.L9
	.long	.L7-.L9
	.long	.L8-.L9
	.text
	.p2align 4,,10
	.p2align 3
.L7:
	leaq	.LC0(%rip), %rax
	ret
.L8:
	leaq	.LC19(%rip), %rax
	ret
.L10:
	leaq	.LC18(%rip), %rax
	ret
.L11:
	leaq	.LC17(%rip), %rax
	ret
.L12:
	leaq	.LC16(%rip), %rax
	ret
.L13:
	leaq	.LC15(%rip), %rax
	ret
.L14:
	leaq	.LC14(%rip), %rax
	ret
.L15:
	leaq	.LC13(%rip), %rax
	ret
.L16:
	leaq	.LC12(%rip), %rax
	ret
.L17:
	leaq	.LC11(%rip), %rax
	ret
.L18:
	leaq	.LC10(%rip), %rax
	ret
.L19:
	leaq	.LC9(%rip), %rax
	ret
.L20:
	leaq	.LC8(%rip), %rax
	ret
.L21:
	leaq	.LC7(%rip), %rax
	ret
.L22:
	leaq	.LC6(%rip), %rax
	ret
.L23:
	leaq	.LC5(%rip), %rax
	ret
.L24:
	leaq	.LC4(%rip), %rax
	ret
.L25:
	leaq	.LC3(%rip), %rax
	ret
.L26:
	leaq	.LC2(%rip), %rax
	ret
.L29:
	leaq	.LC1(%rip), %rax
	ret
.L27:
	leaq	.LC20(%rip), %rax
	ret
	.cfi_endproc
.LFE2:
	.size	_ZN8opendnp321CommandStatusToStringENS_13CommandStatusE, .-_ZN8opendnp321CommandStatusToStringENS_13CommandStatusE
	.section	.rodata
	.align 32
	.type	CSWTCH.2, @object
	.size	CSWTCH.2, 127
CSWTCH.2:
	.byte	0
	.byte	1
	.byte	2
	.byte	3
	.byte	4
	.byte	5
	.byte	6
	.byte	7
	.byte	8
	.byte	9
	.byte	10
	.byte	11
	.byte	12
	.byte	13
	.byte	14
	.byte	15
	.byte	16
	.byte	17
	.byte	18
	.byte	127
	.byte	127
	.byte	127
	.byte	127
	.byte	127
	.byte	127
	.byte	127
	.byte	127
	.byte	127
	.byte	127
	.byte	127
	.byte	127
	.byte	127
	.byte	127
	.byte	127
	.byte	127
	.byte	127
	.byte	127
	.byte	127
	.byte	127
	.byte	127
	.byte	127
	.byte	127
	.byte	127
	.byte	127
	.byte	127
	.byte	127
	.byte	127
	.byte	127
	.byte	127
	.byte	127
	.byte	127
	.byte	127
	.byte	127
	.byte	127
	.byte	127
	.byte	127
	.byte	127
	.byte	127
	.byte	127
	.byte	127
	.byte	127
	.byte	127
	.byte	127
	.byte	127
	.byte	127
	.byte	127
	.byte	127
	.byte	127
	.byte	127
	.byte	127
	.byte	127
	.byte	127
	.byte	127
	.byte	127
	.byte	127
	.byte	127
	.byte	127
	.byte	127
	.byte	127
	.byte	127
	.byte	127
	.byte	127
	.byte	127
	.byte	127
	.byte	127
	.byte	127
	.byte	127
	.byte	127
	.byte	127
	.byte	127
	.byte	127
	.byte	127
	.byte	127
	.byte	127
	.byte	127
	.byte	127
	.byte	127
	.byte	127
	.byte	127
	.byte	127
	.byte	127
	.byte	127
	.byte	127
	.byte	127
	.byte	127
	.byte	127
	.byte	127
	.byte	127
	.byte	127
	.byte	127
	.byte	127
	.byte	127
	.byte	127
	.byte	127
	.byte	127
	.byte	127
	.byte	127
	.byte	127
	.byte	127
	.byte	127
	.byte	127
	.byte	127
	.byte	127
	.byte	127
	.byte	127
	.byte	127
	.byte	126
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
