	.file	"ChannelState.cpp"
	.text
	.section	.rodata.str1.1,"aMS",@progbits,1
.LC0:
	.string	"SHUTDOWN"
.LC1:
	.string	"OPEN"
.LC2:
	.string	"OPENING"
.LC3:
	.string	"CLOSED"
	.text
	.p2align 4
	.globl	_ZN8opendnp320ChannelStateToStringENS_12ChannelStateE
	.type	_ZN8opendnp320ChannelStateToStringENS_12ChannelStateE, @function
_ZN8opendnp320ChannelStateToStringENS_12ChannelStateE:
.LFB0:
	.cfi_startproc
	endbr64
	leaq	.LC2(%rip), %rax
	cmpb	$1, %dil
	je	.L1
	leaq	.LC1(%rip), %rax
	cmpb	$2, %dil
	je	.L1
	testb	%dil, %dil
	leaq	.LC0(%rip), %rax
	leaq	.LC3(%rip), %rdx
	cmove	%rdx, %rax
.L1:
	ret
	.cfi_endproc
.LFE0:
	.size	_ZN8opendnp320ChannelStateToStringENS_12ChannelStateE, .-_ZN8opendnp320ChannelStateToStringENS_12ChannelStateE
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
