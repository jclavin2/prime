	.file	"ControlCode.cpp"
	.text
	.p2align 4
	.globl	_ZN8opendnp317ControlCodeToTypeENS_11ControlCodeE
	.type	_ZN8opendnp317ControlCodeToTypeENS_11ControlCodeE, @function
_ZN8opendnp317ControlCodeToTypeENS_11ControlCodeE:
.LFB0:
	.cfi_startproc
	endbr64
	movl	%edi, %eax
	ret
	.cfi_endproc
.LFE0:
	.size	_ZN8opendnp317ControlCodeToTypeENS_11ControlCodeE, .-_ZN8opendnp317ControlCodeToTypeENS_11ControlCodeE
	.p2align 4
	.globl	_ZN8opendnp319ControlCodeFromTypeEh
	.type	_ZN8opendnp319ControlCodeFromTypeEh, @function
_ZN8opendnp319ControlCodeFromTypeEh:
.LFB1:
	.cfi_startproc
	endbr64
	movl	%edi, %eax
	cmpb	$65, %dil
	ja	.L4
	leaq	.L7(%rip), %rsi
	movzbl	%dil, %ecx
	movslq	(%rsi,%rcx,4), %rdx
	addq	%rsi, %rdx
	notrack jmp	*%rdx
	.section	.rodata
	.align 4
	.align 4
.L7:
	.long	.L6-.L7
	.long	.L6-.L7
	.long	.L6-.L7
	.long	.L6-.L7
	.long	.L6-.L7
	.long	.L5-.L7
	.long	.L5-.L7
	.long	.L5-.L7
	.long	.L5-.L7
	.long	.L5-.L7
	.long	.L5-.L7
	.long	.L5-.L7
	.long	.L5-.L7
	.long	.L5-.L7
	.long	.L5-.L7
	.long	.L5-.L7
	.long	.L5-.L7
	.long	.L5-.L7
	.long	.L5-.L7
	.long	.L5-.L7
	.long	.L5-.L7
	.long	.L5-.L7
	.long	.L5-.L7
	.long	.L5-.L7
	.long	.L5-.L7
	.long	.L5-.L7
	.long	.L5-.L7
	.long	.L5-.L7
	.long	.L5-.L7
	.long	.L5-.L7
	.long	.L5-.L7
	.long	.L5-.L7
	.long	.L6-.L7
	.long	.L6-.L7
	.long	.L6-.L7
	.long	.L6-.L7
	.long	.L6-.L7
	.long	.L5-.L7
	.long	.L5-.L7
	.long	.L5-.L7
	.long	.L5-.L7
	.long	.L5-.L7
	.long	.L5-.L7
	.long	.L5-.L7
	.long	.L5-.L7
	.long	.L5-.L7
	.long	.L5-.L7
	.long	.L5-.L7
	.long	.L5-.L7
	.long	.L5-.L7
	.long	.L5-.L7
	.long	.L5-.L7
	.long	.L5-.L7
	.long	.L5-.L7
	.long	.L5-.L7
	.long	.L5-.L7
	.long	.L5-.L7
	.long	.L5-.L7
	.long	.L5-.L7
	.long	.L5-.L7
	.long	.L5-.L7
	.long	.L5-.L7
	.long	.L5-.L7
	.long	.L5-.L7
	.long	.L5-.L7
	.long	.L6-.L7
	.text
	.p2align 4,,10
	.p2align 3
.L4:
	cmpb	$-127, %dil
	je	.L6
	cmpb	$-95, %dil
	jne	.L9
.L6:
	ret
.L5:
	movl	$-1, %eax
	ret
.L9:
	cmpb	$97, %dil
	movl	$-1, %edx
	cmovne	%edx, %eax
	ret
	.cfi_endproc
.LFE1:
	.size	_ZN8opendnp319ControlCodeFromTypeEh, .-_ZN8opendnp319ControlCodeFromTypeEh
	.section	.rodata.str1.1,"aMS",@progbits,1
.LC0:
	.string	"UNDEFINED"
.LC1:
	.string	"NUL"
.LC2:
	.string	"PULSE_ON"
.LC3:
	.string	"PULSE_ON_CANCEL"
.LC4:
	.string	"PULSE_OFF"
.LC5:
	.string	"PULSE_OFF_CANCEL"
.LC6:
	.string	"LATCH_ON"
.LC7:
	.string	"LATCH_ON_CANCEL"
.LC8:
	.string	"LATCH_OFF"
.LC9:
	.string	"LATCH_OFF_CANCEL"
.LC10:
	.string	"CLOSE_PULSE_ON"
.LC11:
	.string	"TRIP_PULSE_ON_CANCEL"
.LC12:
	.string	"NUL_CANCEL"
.LC13:
	.string	"TRIP_PULSE_ON"
.LC14:
	.string	"CLOSE_PULSE_ON_CANCEL"
	.text
	.p2align 4
	.globl	_ZN8opendnp319ControlCodeToStringENS_11ControlCodeE
	.type	_ZN8opendnp319ControlCodeToStringENS_11ControlCodeE, @function
_ZN8opendnp319ControlCodeToStringENS_11ControlCodeE:
.LFB2:
	.cfi_startproc
	endbr64
	movzbl	%dil, %edx
	cmpb	$65, %dil
	ja	.L11
	leaq	.L14(%rip), %rcx
	movslq	(%rcx,%rdx,4), %rax
	addq	%rcx, %rax
	notrack jmp	*%rax
	.section	.rodata
	.align 4
	.align 4
.L14:
	.long	.L25-.L14
	.long	.L23-.L14
	.long	.L22-.L14
	.long	.L21-.L14
	.long	.L20-.L14
	.long	.L12-.L14
	.long	.L12-.L14
	.long	.L12-.L14
	.long	.L12-.L14
	.long	.L12-.L14
	.long	.L12-.L14
	.long	.L12-.L14
	.long	.L12-.L14
	.long	.L12-.L14
	.long	.L12-.L14
	.long	.L12-.L14
	.long	.L12-.L14
	.long	.L12-.L14
	.long	.L12-.L14
	.long	.L12-.L14
	.long	.L12-.L14
	.long	.L12-.L14
	.long	.L12-.L14
	.long	.L12-.L14
	.long	.L12-.L14
	.long	.L12-.L14
	.long	.L12-.L14
	.long	.L12-.L14
	.long	.L12-.L14
	.long	.L12-.L14
	.long	.L12-.L14
	.long	.L12-.L14
	.long	.L19-.L14
	.long	.L18-.L14
	.long	.L17-.L14
	.long	.L16-.L14
	.long	.L15-.L14
	.long	.L12-.L14
	.long	.L12-.L14
	.long	.L12-.L14
	.long	.L12-.L14
	.long	.L12-.L14
	.long	.L12-.L14
	.long	.L12-.L14
	.long	.L12-.L14
	.long	.L12-.L14
	.long	.L12-.L14
	.long	.L12-.L14
	.long	.L12-.L14
	.long	.L12-.L14
	.long	.L12-.L14
	.long	.L12-.L14
	.long	.L12-.L14
	.long	.L12-.L14
	.long	.L12-.L14
	.long	.L12-.L14
	.long	.L12-.L14
	.long	.L12-.L14
	.long	.L12-.L14
	.long	.L12-.L14
	.long	.L12-.L14
	.long	.L12-.L14
	.long	.L12-.L14
	.long	.L12-.L14
	.long	.L12-.L14
	.long	.L13-.L14
	.text
.L19:
	leaq	.LC12(%rip), %rax
	ret
.L25:
	leaq	.LC1(%rip), %rax
	ret
.L12:
	leaq	.LC0(%rip), %rax
	ret
	.p2align 4,,10
	.p2align 3
.L11:
	leaq	.LC13(%rip), %rax
	cmpb	$-127, %dil
	je	.L10
	cmpb	$-95, %dil
	jne	.L29
	leaq	.LC11(%rip), %rax
.L10:
	ret
.L29:
	cmpb	$97, %dil
	leaq	.LC14(%rip), %rdx
	leaq	.LC0(%rip), %rax
	cmove	%rdx, %rax
	ret
.L13:
	leaq	.LC10(%rip), %rax
	ret
.L23:
	leaq	.LC2(%rip), %rax
	ret
.L22:
	leaq	.LC4(%rip), %rax
	ret
.L21:
	leaq	.LC6(%rip), %rax
	ret
.L20:
	leaq	.LC8(%rip), %rax
	ret
.L18:
	leaq	.LC3(%rip), %rax
	ret
.L17:
	leaq	.LC5(%rip), %rax
	ret
.L16:
	leaq	.LC7(%rip), %rax
	ret
.L15:
	leaq	.LC9(%rip), %rax
	ret
	.cfi_endproc
.LFE2:
	.size	_ZN8opendnp319ControlCodeToStringENS_11ControlCodeE, .-_ZN8opendnp319ControlCodeToStringENS_11ControlCodeE
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
