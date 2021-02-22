	.file	"ClassField.cpp"
	.text
	.align 2
	.p2align 4
	.globl	_ZN8opendnp310ClassFieldC2Ev
	.type	_ZN8opendnp310ClassFieldC2Ev, @function
_ZN8opendnp310ClassFieldC2Ev:
.LFB5:
	.cfi_startproc
	endbr64
	movb	$0, (%rdi)
	ret
	.cfi_endproc
.LFE5:
	.size	_ZN8opendnp310ClassFieldC2Ev, .-_ZN8opendnp310ClassFieldC2Ev
	.globl	_ZN8opendnp310ClassFieldC1Ev
	.set	_ZN8opendnp310ClassFieldC1Ev,_ZN8opendnp310ClassFieldC2Ev
	.align 2
	.p2align 4
	.globl	_ZN8opendnp310ClassField4NoneEv
	.type	_ZN8opendnp310ClassField4NoneEv, @function
_ZN8opendnp310ClassField4NoneEv:
.LFB1:
	.cfi_startproc
	endbr64
	subq	$24, %rsp
	.cfi_def_cfa_offset 32
	movq	%fs:40, %rax
	movq	%rax, 8(%rsp)
	xorl	%eax, %eax
	leaq	7(%rsp), %rdi
	call	_ZN8opendnp310ClassFieldC1Ev@PLT
	movzbl	7(%rsp), %eax
	movq	8(%rsp), %rdx
	xorq	%fs:40, %rdx
	jne	.L6
	addq	$24, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 8
	ret
.L6:
	.cfi_restore_state
	call	__stack_chk_fail@PLT
	.cfi_endproc
.LFE1:
	.size	_ZN8opendnp310ClassField4NoneEv, .-_ZN8opendnp310ClassField4NoneEv
	.align 2
	.p2align 4
	.globl	_ZN8opendnp310ClassFieldC2ENS_10PointClassE
	.type	_ZN8opendnp310ClassFieldC2ENS_10PointClassE, @function
_ZN8opendnp310ClassFieldC2ENS_10PointClassE:
.LFB8:
	.cfi_startproc
	endbr64
	movb	%sil, (%rdi)
	ret
	.cfi_endproc
.LFE8:
	.size	_ZN8opendnp310ClassFieldC2ENS_10PointClassE, .-_ZN8opendnp310ClassFieldC2ENS_10PointClassE
	.globl	_ZN8opendnp310ClassFieldC1ENS_10PointClassE
	.set	_ZN8opendnp310ClassFieldC1ENS_10PointClassE,_ZN8opendnp310ClassFieldC2ENS_10PointClassE
	.align 2
	.p2align 4
	.globl	_ZN8opendnp310ClassFieldC2Ebbbb
	.type	_ZN8opendnp310ClassFieldC2Ebbbb, @function
_ZN8opendnp310ClassFieldC2Ebbbb:
.LFB11:
	.cfi_startproc
	endbr64
	movl	%esi, %eax
	orl	$2, %eax
	testb	%dl, %dl
	cmovne	%eax, %esi
	movl	%esi, %eax
	orl	$4, %eax
	testb	%cl, %cl
	cmovne	%eax, %esi
	movl	%esi, %eax
	orl	$8, %eax
	testb	%r8b, %r8b
	cmovne	%eax, %esi
	movb	%sil, (%rdi)
	ret
	.cfi_endproc
.LFE11:
	.size	_ZN8opendnp310ClassFieldC2Ebbbb, .-_ZN8opendnp310ClassFieldC2Ebbbb
	.globl	_ZN8opendnp310ClassFieldC1Ebbbb
	.set	_ZN8opendnp310ClassFieldC1Ebbbb,_ZN8opendnp310ClassFieldC2Ebbbb
	.align 2
	.p2align 4
	.globl	_ZN8opendnp310ClassFieldC2Eh
	.type	_ZN8opendnp310ClassFieldC2Eh, @function
_ZN8opendnp310ClassFieldC2Eh:
.LFB14:
	.cfi_startproc
	endbr64
	andl	$15, %esi
	movb	%sil, (%rdi)
	ret
	.cfi_endproc
.LFE14:
	.size	_ZN8opendnp310ClassFieldC2Eh, .-_ZN8opendnp310ClassFieldC2Eh
	.globl	_ZN8opendnp310ClassFieldC1Eh
	.set	_ZN8opendnp310ClassFieldC1Eh,_ZN8opendnp310ClassFieldC2Eh
	.align 2
	.p2align 4
	.globl	_ZN8opendnp310ClassField10AllClassesEv
	.type	_ZN8opendnp310ClassField10AllClassesEv, @function
_ZN8opendnp310ClassField10AllClassesEv:
.LFB2:
	.cfi_startproc
	endbr64
	subq	$24, %rsp
	.cfi_def_cfa_offset 32
	movl	$15, %esi
	movq	%fs:40, %rax
	movq	%rax, 8(%rsp)
	xorl	%eax, %eax
	leaq	7(%rsp), %rdi
	call	_ZN8opendnp310ClassFieldC1Eh@PLT
	movzbl	7(%rsp), %eax
	movq	8(%rsp), %rdx
	xorq	%fs:40, %rdx
	jne	.L16
	addq	$24, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 8
	ret
.L16:
	.cfi_restore_state
	call	__stack_chk_fail@PLT
	.cfi_endproc
.LFE2:
	.size	_ZN8opendnp310ClassField10AllClassesEv, .-_ZN8opendnp310ClassField10AllClassesEv
	.align 2
	.p2align 4
	.globl	_ZN8opendnp310ClassField15AllEventClassesEv
	.type	_ZN8opendnp310ClassField15AllEventClassesEv, @function
_ZN8opendnp310ClassField15AllEventClassesEv:
.LFB3:
	.cfi_startproc
	endbr64
	subq	$24, %rsp
	.cfi_def_cfa_offset 32
	movl	$14, %esi
	movq	%fs:40, %rax
	movq	%rax, 8(%rsp)
	xorl	%eax, %eax
	leaq	7(%rsp), %rdi
	call	_ZN8opendnp310ClassFieldC1Eh@PLT
	movzbl	7(%rsp), %eax
	movq	8(%rsp), %rdx
	xorq	%fs:40, %rdx
	jne	.L20
	addq	$24, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 8
	ret
.L20:
	.cfi_restore_state
	call	__stack_chk_fail@PLT
	.cfi_endproc
.LFE3:
	.size	_ZN8opendnp310ClassField15AllEventClassesEv, .-_ZN8opendnp310ClassField15AllEventClassesEv
	.align 2
	.p2align 4
	.globl	_ZNK8opendnp310ClassField7IsEmptyEv
	.type	_ZNK8opendnp310ClassField7IsEmptyEv, @function
_ZNK8opendnp310ClassField7IsEmptyEv:
.LFB16:
	.cfi_startproc
	endbr64
	cmpb	$0, (%rdi)
	sete	%al
	ret
	.cfi_endproc
.LFE16:
	.size	_ZNK8opendnp310ClassField7IsEmptyEv, .-_ZNK8opendnp310ClassField7IsEmptyEv
	.align 2
	.p2align 4
	.globl	_ZNK8opendnp310ClassField10IntersectsERKS0_
	.type	_ZNK8opendnp310ClassField10IntersectsERKS0_, @function
_ZNK8opendnp310ClassField10IntersectsERKS0_:
.LFB17:
	.cfi_startproc
	endbr64
	movzbl	(%rdi), %eax
	testb	%al, (%rsi)
	setne	%al
	ret
	.cfi_endproc
.LFE17:
	.size	_ZNK8opendnp310ClassField10IntersectsERKS0_, .-_ZNK8opendnp310ClassField10IntersectsERKS0_
	.align 2
	.p2align 4
	.globl	_ZNK8opendnp310ClassField16OnlyEventClassesEv
	.type	_ZNK8opendnp310ClassField16OnlyEventClassesEv, @function
_ZNK8opendnp310ClassField16OnlyEventClassesEv:
.LFB18:
	.cfi_startproc
	endbr64
	subq	$24, %rsp
	.cfi_def_cfa_offset 32
	movzbl	(%rdi), %esi
	movq	%fs:40, %rax
	movq	%rax, 8(%rsp)
	xorl	%eax, %eax
	leaq	7(%rsp), %rdi
	andl	$14, %esi
	call	_ZN8opendnp310ClassFieldC1Eh@PLT
	movzbl	7(%rsp), %eax
	movq	8(%rsp), %rdx
	xorq	%fs:40, %rdx
	jne	.L26
	addq	$24, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 8
	ret
.L26:
	.cfi_restore_state
	call	__stack_chk_fail@PLT
	.cfi_endproc
.LFE18:
	.size	_ZNK8opendnp310ClassField16OnlyEventClassesEv, .-_ZNK8opendnp310ClassField16OnlyEventClassesEv
	.align 2
	.p2align 4
	.globl	_ZN8opendnp310ClassField3SetENS_10PointClassE
	.type	_ZN8opendnp310ClassField3SetENS_10PointClassE, @function
_ZN8opendnp310ClassField3SetENS_10PointClassE:
.LFB19:
	.cfi_startproc
	endbr64
	orb	%sil, (%rdi)
	ret
	.cfi_endproc
.LFE19:
	.size	_ZN8opendnp310ClassField3SetENS_10PointClassE, .-_ZN8opendnp310ClassField3SetENS_10PointClassE
	.align 2
	.p2align 4
	.globl	_ZN8opendnp310ClassField5ClearERKS0_
	.type	_ZN8opendnp310ClassField5ClearERKS0_, @function
_ZN8opendnp310ClassField5ClearERKS0_:
.LFB20:
	.cfi_startproc
	endbr64
	movzbl	(%rsi), %eax
	notl	%eax
	andb	%al, (%rdi)
	ret
	.cfi_endproc
.LFE20:
	.size	_ZN8opendnp310ClassField5ClearERKS0_, .-_ZN8opendnp310ClassField5ClearERKS0_
	.align 2
	.p2align 4
	.globl	_ZN8opendnp310ClassField3SetERKS0_
	.type	_ZN8opendnp310ClassField3SetERKS0_, @function
_ZN8opendnp310ClassField3SetERKS0_:
.LFB21:
	.cfi_startproc
	endbr64
	movzbl	(%rsi), %eax
	orb	%al, (%rdi)
	ret
	.cfi_endproc
.LFE21:
	.size	_ZN8opendnp310ClassField3SetERKS0_, .-_ZN8opendnp310ClassField3SetERKS0_
	.align 2
	.p2align 4
	.globl	_ZNK8opendnp310ClassField9HasClass0Ev
	.type	_ZNK8opendnp310ClassField9HasClass0Ev, @function
_ZNK8opendnp310ClassField9HasClass0Ev:
.LFB23:
	.cfi_startproc
	endbr64
	movzbl	(%rdi), %eax
	andl	$1, %eax
	ret
	.cfi_endproc
.LFE23:
	.size	_ZNK8opendnp310ClassField9HasClass0Ev, .-_ZNK8opendnp310ClassField9HasClass0Ev
	.align 2
	.p2align 4
	.globl	_ZNK8opendnp310ClassField9HasClass1Ev
	.type	_ZNK8opendnp310ClassField9HasClass1Ev, @function
_ZNK8opendnp310ClassField9HasClass1Ev:
.LFB24:
	.cfi_startproc
	endbr64
	movzbl	(%rdi), %eax
	shrb	%al
	andl	$1, %eax
	ret
	.cfi_endproc
.LFE24:
	.size	_ZNK8opendnp310ClassField9HasClass1Ev, .-_ZNK8opendnp310ClassField9HasClass1Ev
	.align 2
	.p2align 4
	.globl	_ZNK8opendnp310ClassField9HasClass2Ev
	.type	_ZNK8opendnp310ClassField9HasClass2Ev, @function
_ZNK8opendnp310ClassField9HasClass2Ev:
.LFB25:
	.cfi_startproc
	endbr64
	movzbl	(%rdi), %eax
	shrb	$2, %al
	andl	$1, %eax
	ret
	.cfi_endproc
.LFE25:
	.size	_ZNK8opendnp310ClassField9HasClass2Ev, .-_ZNK8opendnp310ClassField9HasClass2Ev
	.align 2
	.p2align 4
	.globl	_ZNK8opendnp310ClassField9HasClass3Ev
	.type	_ZNK8opendnp310ClassField9HasClass3Ev, @function
_ZNK8opendnp310ClassField9HasClass3Ev:
.LFB26:
	.cfi_startproc
	endbr64
	movzbl	(%rdi), %eax
	shrb	$3, %al
	andl	$1, %eax
	ret
	.cfi_endproc
.LFE26:
	.size	_ZNK8opendnp310ClassField9HasClass3Ev, .-_ZNK8opendnp310ClassField9HasClass3Ev
	.align 2
	.p2align 4
	.globl	_ZNK8opendnp310ClassField12HasEventTypeENS_10EventClassE
	.type	_ZNK8opendnp310ClassField12HasEventTypeENS_10EventClassE, @function
_ZNK8opendnp310ClassField12HasEventTypeENS_10EventClassE:
.LFB22:
	.cfi_startproc
	endbr64
	cmpb	$1, %sil
	je	.L35
	cmpb	$2, %sil
	je	.L36
	testb	%sil, %sil
	je	.L38
	xorl	%eax, %eax
	ret
	.p2align 4,,10
	.p2align 3
.L35:
	jmp	_ZNK8opendnp310ClassField9HasClass2Ev@PLT
	.p2align 4,,10
	.p2align 3
.L38:
	jmp	_ZNK8opendnp310ClassField9HasClass1Ev@PLT
	.p2align 4,,10
	.p2align 3
.L36:
	jmp	_ZNK8opendnp310ClassField9HasClass3Ev@PLT
	.cfi_endproc
.LFE22:
	.size	_ZNK8opendnp310ClassField12HasEventTypeENS_10EventClassE, .-_ZNK8opendnp310ClassField12HasEventTypeENS_10EventClassE
	.align 2
	.p2align 4
	.globl	_ZNK8opendnp310ClassField13HasEventClassEv
	.type	_ZNK8opendnp310ClassField13HasEventClassEv, @function
_ZNK8opendnp310ClassField13HasEventClassEv:
.LFB27:
	.cfi_startproc
	endbr64
	testb	$14, (%rdi)
	setne	%al
	ret
	.cfi_endproc
.LFE27:
	.size	_ZNK8opendnp310ClassField13HasEventClassEv, .-_ZNK8opendnp310ClassField13HasEventClassEv
	.align 2
	.p2align 4
	.globl	_ZNK8opendnp310ClassField11HasAnyClassEv
	.type	_ZNK8opendnp310ClassField11HasAnyClassEv, @function
_ZNK8opendnp310ClassField11HasAnyClassEv:
.LFB28:
	.cfi_startproc
	endbr64
	cmpb	$0, (%rdi)
	setne	%al
	ret
	.cfi_endproc
.LFE28:
	.size	_ZNK8opendnp310ClassField11HasAnyClassEv, .-_ZNK8opendnp310ClassField11HasAnyClassEv
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
