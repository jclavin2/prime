	.file	"AnalogOutput.cpp"
	.text
	.align 2
	.p2align 4
	.globl	_ZN8opendnp317AnalogOutputInt16C2Es
	.type	_ZN8opendnp317AnalogOutputInt16C2Es, @function
_ZN8opendnp317AnalogOutputInt16C2Es:
.LFB5:
	.cfi_startproc
	endbr64
	movw	%si, (%rdi)
	movb	$0, 2(%rdi)
	ret
	.cfi_endproc
.LFE5:
	.size	_ZN8opendnp317AnalogOutputInt16C2Es, .-_ZN8opendnp317AnalogOutputInt16C2Es
	.globl	_ZN8opendnp317AnalogOutputInt16C1Es
	.set	_ZN8opendnp317AnalogOutputInt16C1Es,_ZN8opendnp317AnalogOutputInt16C2Es
	.align 2
	.p2align 4
	.globl	_ZN8opendnp317AnalogOutputInt16C2EsNS_13CommandStatusE
	.type	_ZN8opendnp317AnalogOutputInt16C2EsNS_13CommandStatusE, @function
_ZN8opendnp317AnalogOutputInt16C2EsNS_13CommandStatusE:
.LFB8:
	.cfi_startproc
	endbr64
	movw	%si, (%rdi)
	movb	%dl, 2(%rdi)
	ret
	.cfi_endproc
.LFE8:
	.size	_ZN8opendnp317AnalogOutputInt16C2EsNS_13CommandStatusE, .-_ZN8opendnp317AnalogOutputInt16C2EsNS_13CommandStatusE
	.globl	_ZN8opendnp317AnalogOutputInt16C1EsNS_13CommandStatusE
	.set	_ZN8opendnp317AnalogOutputInt16C1EsNS_13CommandStatusE,_ZN8opendnp317AnalogOutputInt16C2EsNS_13CommandStatusE
	.align 2
	.p2align 4
	.globl	_ZN8opendnp317AnalogOutputInt16C2Ev
	.type	_ZN8opendnp317AnalogOutputInt16C2Ev, @function
_ZN8opendnp317AnalogOutputInt16C2Ev:
.LFB11:
	.cfi_startproc
	endbr64
	xorl	%eax, %eax
	movb	$0, 2(%rdi)
	movw	%ax, (%rdi)
	ret
	.cfi_endproc
.LFE11:
	.size	_ZN8opendnp317AnalogOutputInt16C2Ev, .-_ZN8opendnp317AnalogOutputInt16C2Ev
	.globl	_ZN8opendnp317AnalogOutputInt16C1Ev
	.set	_ZN8opendnp317AnalogOutputInt16C1Ev,_ZN8opendnp317AnalogOutputInt16C2Ev
	.align 2
	.p2align 4
	.globl	_ZNK8opendnp317AnalogOutputInt16eqERKS0_
	.type	_ZNK8opendnp317AnalogOutputInt16eqERKS0_, @function
_ZNK8opendnp317AnalogOutputInt16eqERKS0_:
.LFB13:
	.cfi_startproc
	endbr64
	movzwl	(%rsi), %edx
	xorl	%eax, %eax
	cmpw	%dx, (%rdi)
	je	.L8
	ret
	.p2align 4,,10
	.p2align 3
.L8:
	movzbl	2(%rsi), %eax
	cmpb	%al, 2(%rdi)
	sete	%al
	ret
	.cfi_endproc
.LFE13:
	.size	_ZNK8opendnp317AnalogOutputInt16eqERKS0_, .-_ZNK8opendnp317AnalogOutputInt16eqERKS0_
	.align 2
	.p2align 4
	.globl	_ZN8opendnp317AnalogOutputInt32C2Ei
	.type	_ZN8opendnp317AnalogOutputInt32C2Ei, @function
_ZN8opendnp317AnalogOutputInt32C2Ei:
.LFB15:
	.cfi_startproc
	endbr64
	movl	%esi, (%rdi)
	movb	$0, 4(%rdi)
	ret
	.cfi_endproc
.LFE15:
	.size	_ZN8opendnp317AnalogOutputInt32C2Ei, .-_ZN8opendnp317AnalogOutputInt32C2Ei
	.globl	_ZN8opendnp317AnalogOutputInt32C1Ei
	.set	_ZN8opendnp317AnalogOutputInt32C1Ei,_ZN8opendnp317AnalogOutputInt32C2Ei
	.align 2
	.p2align 4
	.globl	_ZN8opendnp317AnalogOutputInt32C2EiNS_13CommandStatusE
	.type	_ZN8opendnp317AnalogOutputInt32C2EiNS_13CommandStatusE, @function
_ZN8opendnp317AnalogOutputInt32C2EiNS_13CommandStatusE:
.LFB18:
	.cfi_startproc
	endbr64
	movl	%esi, (%rdi)
	movb	%dl, 4(%rdi)
	ret
	.cfi_endproc
.LFE18:
	.size	_ZN8opendnp317AnalogOutputInt32C2EiNS_13CommandStatusE, .-_ZN8opendnp317AnalogOutputInt32C2EiNS_13CommandStatusE
	.globl	_ZN8opendnp317AnalogOutputInt32C1EiNS_13CommandStatusE
	.set	_ZN8opendnp317AnalogOutputInt32C1EiNS_13CommandStatusE,_ZN8opendnp317AnalogOutputInt32C2EiNS_13CommandStatusE
	.align 2
	.p2align 4
	.globl	_ZN8opendnp317AnalogOutputInt32C2Ev
	.type	_ZN8opendnp317AnalogOutputInt32C2Ev, @function
_ZN8opendnp317AnalogOutputInt32C2Ev:
.LFB21:
	.cfi_startproc
	endbr64
	movl	$0, (%rdi)
	movb	$0, 4(%rdi)
	ret
	.cfi_endproc
.LFE21:
	.size	_ZN8opendnp317AnalogOutputInt32C2Ev, .-_ZN8opendnp317AnalogOutputInt32C2Ev
	.globl	_ZN8opendnp317AnalogOutputInt32C1Ev
	.set	_ZN8opendnp317AnalogOutputInt32C1Ev,_ZN8opendnp317AnalogOutputInt32C2Ev
	.align 2
	.p2align 4
	.globl	_ZNK8opendnp317AnalogOutputInt32eqERKS0_
	.type	_ZNK8opendnp317AnalogOutputInt32eqERKS0_, @function
_ZNK8opendnp317AnalogOutputInt32eqERKS0_:
.LFB23:
	.cfi_startproc
	endbr64
	movl	(%rsi), %edx
	xorl	%eax, %eax
	cmpl	%edx, (%rdi)
	je	.L15
	ret
	.p2align 4,,10
	.p2align 3
.L15:
	movzbl	4(%rsi), %eax
	cmpb	%al, 4(%rdi)
	sete	%al
	ret
	.cfi_endproc
.LFE23:
	.size	_ZNK8opendnp317AnalogOutputInt32eqERKS0_, .-_ZNK8opendnp317AnalogOutputInt32eqERKS0_
	.align 2
	.p2align 4
	.globl	_ZN8opendnp319AnalogOutputFloat32C2Ef
	.type	_ZN8opendnp319AnalogOutputFloat32C2Ef, @function
_ZN8opendnp319AnalogOutputFloat32C2Ef:
.LFB25:
	.cfi_startproc
	endbr64
	movb	$0, 4(%rdi)
	movss	%xmm0, (%rdi)
	ret
	.cfi_endproc
.LFE25:
	.size	_ZN8opendnp319AnalogOutputFloat32C2Ef, .-_ZN8opendnp319AnalogOutputFloat32C2Ef
	.globl	_ZN8opendnp319AnalogOutputFloat32C1Ef
	.set	_ZN8opendnp319AnalogOutputFloat32C1Ef,_ZN8opendnp319AnalogOutputFloat32C2Ef
	.align 2
	.p2align 4
	.globl	_ZN8opendnp319AnalogOutputFloat32C2EfNS_13CommandStatusE
	.type	_ZN8opendnp319AnalogOutputFloat32C2EfNS_13CommandStatusE, @function
_ZN8opendnp319AnalogOutputFloat32C2EfNS_13CommandStatusE:
.LFB28:
	.cfi_startproc
	endbr64
	movb	%sil, 4(%rdi)
	movss	%xmm0, (%rdi)
	ret
	.cfi_endproc
.LFE28:
	.size	_ZN8opendnp319AnalogOutputFloat32C2EfNS_13CommandStatusE, .-_ZN8opendnp319AnalogOutputFloat32C2EfNS_13CommandStatusE
	.globl	_ZN8opendnp319AnalogOutputFloat32C1EfNS_13CommandStatusE
	.set	_ZN8opendnp319AnalogOutputFloat32C1EfNS_13CommandStatusE,_ZN8opendnp319AnalogOutputFloat32C2EfNS_13CommandStatusE
	.align 2
	.p2align 4
	.globl	_ZN8opendnp319AnalogOutputFloat32C2Ev
	.type	_ZN8opendnp319AnalogOutputFloat32C2Ev, @function
_ZN8opendnp319AnalogOutputFloat32C2Ev:
.LFB31:
	.cfi_startproc
	endbr64
	movl	$0x00000000, (%rdi)
	movb	$0, 4(%rdi)
	ret
	.cfi_endproc
.LFE31:
	.size	_ZN8opendnp319AnalogOutputFloat32C2Ev, .-_ZN8opendnp319AnalogOutputFloat32C2Ev
	.globl	_ZN8opendnp319AnalogOutputFloat32C1Ev
	.set	_ZN8opendnp319AnalogOutputFloat32C1Ev,_ZN8opendnp319AnalogOutputFloat32C2Ev
	.align 2
	.p2align 4
	.globl	_ZNK8opendnp319AnalogOutputFloat32eqERKS0_
	.type	_ZNK8opendnp319AnalogOutputFloat32eqERKS0_, @function
_ZNK8opendnp319AnalogOutputFloat32eqERKS0_:
.LFB33:
	.cfi_startproc
	endbr64
	movss	(%rdi), %xmm0
	ucomiss	(%rsi), %xmm0
	jp	.L22
	jne	.L22
	movzbl	4(%rsi), %eax
	cmpb	%al, 4(%rdi)
	sete	%al
	ret
	.p2align 4,,10
	.p2align 3
.L22:
	xorl	%eax, %eax
	ret
	.cfi_endproc
.LFE33:
	.size	_ZNK8opendnp319AnalogOutputFloat32eqERKS0_, .-_ZNK8opendnp319AnalogOutputFloat32eqERKS0_
	.align 2
	.p2align 4
	.globl	_ZN8opendnp320AnalogOutputDouble64C2Ed
	.type	_ZN8opendnp320AnalogOutputDouble64C2Ed, @function
_ZN8opendnp320AnalogOutputDouble64C2Ed:
.LFB35:
	.cfi_startproc
	endbr64
	movb	$0, 8(%rdi)
	movsd	%xmm0, (%rdi)
	ret
	.cfi_endproc
.LFE35:
	.size	_ZN8opendnp320AnalogOutputDouble64C2Ed, .-_ZN8opendnp320AnalogOutputDouble64C2Ed
	.globl	_ZN8opendnp320AnalogOutputDouble64C1Ed
	.set	_ZN8opendnp320AnalogOutputDouble64C1Ed,_ZN8opendnp320AnalogOutputDouble64C2Ed
	.align 2
	.p2align 4
	.globl	_ZN8opendnp320AnalogOutputDouble64C2EdNS_13CommandStatusE
	.type	_ZN8opendnp320AnalogOutputDouble64C2EdNS_13CommandStatusE, @function
_ZN8opendnp320AnalogOutputDouble64C2EdNS_13CommandStatusE:
.LFB38:
	.cfi_startproc
	endbr64
	movb	%sil, 8(%rdi)
	movsd	%xmm0, (%rdi)
	ret
	.cfi_endproc
.LFE38:
	.size	_ZN8opendnp320AnalogOutputDouble64C2EdNS_13CommandStatusE, .-_ZN8opendnp320AnalogOutputDouble64C2EdNS_13CommandStatusE
	.globl	_ZN8opendnp320AnalogOutputDouble64C1EdNS_13CommandStatusE
	.set	_ZN8opendnp320AnalogOutputDouble64C1EdNS_13CommandStatusE,_ZN8opendnp320AnalogOutputDouble64C2EdNS_13CommandStatusE
	.align 2
	.p2align 4
	.globl	_ZN8opendnp320AnalogOutputDouble64C2Ev
	.type	_ZN8opendnp320AnalogOutputDouble64C2Ev, @function
_ZN8opendnp320AnalogOutputDouble64C2Ev:
.LFB41:
	.cfi_startproc
	endbr64
	movq	$0x000000000, (%rdi)
	movb	$0, 8(%rdi)
	ret
	.cfi_endproc
.LFE41:
	.size	_ZN8opendnp320AnalogOutputDouble64C2Ev, .-_ZN8opendnp320AnalogOutputDouble64C2Ev
	.globl	_ZN8opendnp320AnalogOutputDouble64C1Ev
	.set	_ZN8opendnp320AnalogOutputDouble64C1Ev,_ZN8opendnp320AnalogOutputDouble64C2Ev
	.align 2
	.p2align 4
	.globl	_ZNK8opendnp320AnalogOutputDouble64eqERKS0_
	.type	_ZNK8opendnp320AnalogOutputDouble64eqERKS0_, @function
_ZNK8opendnp320AnalogOutputDouble64eqERKS0_:
.LFB43:
	.cfi_startproc
	endbr64
	movsd	(%rdi), %xmm0
	ucomisd	(%rsi), %xmm0
	jp	.L30
	jne	.L30
	movzbl	8(%rsi), %eax
	cmpb	%al, 8(%rdi)
	sete	%al
	ret
	.p2align 4,,10
	.p2align 3
.L30:
	xorl	%eax, %eax
	ret
	.cfi_endproc
.LFE43:
	.size	_ZNK8opendnp320AnalogOutputDouble64eqERKS0_, .-_ZNK8opendnp320AnalogOutputDouble64eqERKS0_
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
