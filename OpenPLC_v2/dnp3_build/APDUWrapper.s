	.file	"APDUWrapper.cpp"
	.text
	.align 2
	.p2align 4
	.globl	_ZN8opendnp311APDUWrapperC2Ev
	.type	_ZN8opendnp311APDUWrapperC2Ev, @function
_ZN8opendnp311APDUWrapperC2Ev:
.LFB242:
	.cfi_startproc
	endbr64
	pushq	%rbx
	.cfi_def_cfa_offset 16
	.cfi_offset 3, -16
	movq	%rdi, %rbx
	leaq	8(%rdi), %rdi
	movb	$0, -8(%rdi)
	call	_ZN7openpal6WSliceC1Ev@PLT
	leaq	24(%rbx), %rdi
	popq	%rbx
	.cfi_def_cfa_offset 8
	jmp	_ZN7openpal6WSliceC1Ev@PLT
	.cfi_endproc
.LFE242:
	.size	_ZN8opendnp311APDUWrapperC2Ev, .-_ZN8opendnp311APDUWrapperC2Ev
	.globl	_ZN8opendnp311APDUWrapperC1Ev
	.set	_ZN8opendnp311APDUWrapperC1Ev,_ZN8opendnp311APDUWrapperC2Ev
	.align 2
	.p2align 4
	.globl	_ZN8opendnp311APDUWrapperC2ERKN7openpal6WSliceE
	.type	_ZN8opendnp311APDUWrapperC2ERKN7openpal6WSliceE, @function
_ZN8opendnp311APDUWrapperC2ERKN7openpal6WSliceE:
.LFB245:
	.cfi_startproc
	endbr64
	movdqu	(%rsi), %xmm0
	movb	$1, (%rdi)
	movl	$2, %esi
	addq	$24, %rdi
	movups	%xmm0, -16(%rdi)
	movups	%xmm0, (%rdi)
	jmp	_ZN7openpal6WSlice7AdvanceEj@PLT
	.cfi_endproc
.LFE245:
	.size	_ZN8opendnp311APDUWrapperC2ERKN7openpal6WSliceE, .-_ZN8opendnp311APDUWrapperC2ERKN7openpal6WSliceE
	.globl	_ZN8opendnp311APDUWrapperC1ERKN7openpal6WSliceE
	.set	_ZN8opendnp311APDUWrapperC1ERKN7openpal6WSliceE,_ZN8opendnp311APDUWrapperC2ERKN7openpal6WSliceE
	.align 2
	.p2align 4
	.globl	_ZNK8opendnp311APDUWrapper7IsValidEv
	.type	_ZNK8opendnp311APDUWrapper7IsValidEv, @function
_ZNK8opendnp311APDUWrapper7IsValidEv:
.LFB247:
	.cfi_startproc
	endbr64
	movzbl	(%rdi), %eax
	ret
	.cfi_endproc
.LFE247:
	.size	_ZNK8opendnp311APDUWrapper7IsValidEv, .-_ZNK8opendnp311APDUWrapper7IsValidEv
	.align 2
	.p2align 4
	.globl	_ZN8opendnp311APDUWrapper9GetWriterEv
	.type	_ZN8opendnp311APDUWrapper9GetWriterEv, @function
_ZN8opendnp311APDUWrapper9GetWriterEv:
.LFB248:
	.cfi_startproc
	endbr64
	pushq	%r12
	.cfi_def_cfa_offset 16
	.cfi_offset 12, -16
	addq	$24, %rsi
	movq	%rdi, %r12
	call	_ZN8opendnp312HeaderWriterC1EPN7openpal6WSliceE@PLT
	movq	%r12, %rax
	popq	%r12
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE248:
	.size	_ZN8opendnp311APDUWrapper9GetWriterEv, .-_ZN8opendnp311APDUWrapper9GetWriterEv
	.align 2
	.p2align 4
	.globl	_ZNK8opendnp311APDUWrapper9RemainingEv
	.type	_ZNK8opendnp311APDUWrapper9RemainingEv, @function
_ZNK8opendnp311APDUWrapper9RemainingEv:
.LFB249:
	.cfi_startproc
	endbr64
	movl	24(%rdi), %eax
	ret
	.cfi_endproc
.LFE249:
	.size	_ZNK8opendnp311APDUWrapper9RemainingEv, .-_ZNK8opendnp311APDUWrapper9RemainingEv
	.align 2
	.p2align 4
	.globl	_ZN8opendnp311APDUWrapper11SetFunctionENS_12FunctionCodeE
	.type	_ZN8opendnp311APDUWrapper11SetFunctionENS_12FunctionCodeE, @function
_ZN8opendnp311APDUWrapper11SetFunctionENS_12FunctionCodeE:
.LFB250:
	.cfi_startproc
	endbr64
	pushq	%rbx
	.cfi_def_cfa_offset 16
	.cfi_offset 3, -16
	movq	%rdi, %r8
	movl	%esi, %edi
	movq	16(%r8), %rbx
	call	_ZN8opendnp318FunctionCodeToTypeENS_12FunctionCodeE@PLT
	movb	%al, 1(%rbx)
	popq	%rbx
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE250:
	.size	_ZN8opendnp311APDUWrapper11SetFunctionENS_12FunctionCodeE, .-_ZN8opendnp311APDUWrapper11SetFunctionENS_12FunctionCodeE
	.align 2
	.p2align 4
	.globl	_ZNK8opendnp311APDUWrapper11GetFunctionEv
	.type	_ZNK8opendnp311APDUWrapper11GetFunctionEv, @function
_ZNK8opendnp311APDUWrapper11GetFunctionEv:
.LFB251:
	.cfi_startproc
	endbr64
	movq	16(%rdi), %rax
	movzbl	1(%rax), %edi
	jmp	_ZN8opendnp320FunctionCodeFromTypeEh@PLT
	.cfi_endproc
.LFE251:
	.size	_ZNK8opendnp311APDUWrapper11GetFunctionEv, .-_ZNK8opendnp311APDUWrapper11GetFunctionEv
	.align 2
	.p2align 4
	.globl	_ZNK8opendnp311APDUWrapper10GetControlEv
	.type	_ZNK8opendnp311APDUWrapper10GetControlEv, @function
_ZNK8opendnp311APDUWrapper10GetControlEv:
.LFB252:
	.cfi_startproc
	endbr64
	subq	$40, %rsp
	.cfi_def_cfa_offset 48
	movq	%fs:40, %rax
	movq	%rax, 24(%rsp)
	xorl	%eax, %eax
	movq	16(%rdi), %rax
	leaq	14(%rsp), %rdi
	movzbl	(%rax), %esi
	call	_ZN8opendnp315AppControlFieldC1Eh@PLT
	movzbl	18(%rsp), %eax
	movl	14(%rsp), %edx
	salq	$32, %rax
	orq	%rdx, %rax
	movq	24(%rsp), %rcx
	xorq	%fs:40, %rcx
	jne	.L15
	addq	$40, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 8
	ret
.L15:
	.cfi_restore_state
	call	__stack_chk_fail@PLT
	.cfi_endproc
.LFE252:
	.size	_ZNK8opendnp311APDUWrapper10GetControlEv, .-_ZNK8opendnp311APDUWrapper10GetControlEv
	.align 2
	.p2align 4
	.globl	_ZN8opendnp311APDUWrapper10SetControlENS_15AppControlFieldE
	.type	_ZN8opendnp311APDUWrapper10SetControlENS_15AppControlFieldE, @function
_ZN8opendnp311APDUWrapper10SetControlENS_15AppControlFieldE:
.LFB253:
	.cfi_startproc
	endbr64
	pushq	%rbx
	.cfi_def_cfa_offset 16
	.cfi_offset 3, -16
	subq	$16, %rsp
	.cfi_def_cfa_offset 32
	movq	16(%rdi), %rbx
	leaq	8(%rsp), %rdi
	movq	%rsi, 8(%rsp)
	call	_ZNK8opendnp315AppControlField6ToByteEv@PLT
	movb	%al, (%rbx)
	addq	$16, %rsp
	.cfi_def_cfa_offset 16
	popq	%rbx
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE253:
	.size	_ZN8opendnp311APDUWrapper10SetControlENS_15AppControlFieldE, .-_ZN8opendnp311APDUWrapper10SetControlENS_15AppControlFieldE
	.align 2
	.p2align 4
	.globl	_ZNK8opendnp311APDUWrapper4SizeEv
	.type	_ZNK8opendnp311APDUWrapper4SizeEv, @function
_ZNK8opendnp311APDUWrapper4SizeEv:
.LFB254:
	.cfi_startproc
	endbr64
	movl	8(%rdi), %eax
	subl	24(%rdi), %eax
	ret
	.cfi_endproc
.LFE254:
	.size	_ZNK8opendnp311APDUWrapper4SizeEv, .-_ZNK8opendnp311APDUWrapper4SizeEv
	.align 2
	.p2align 4
	.globl	_ZNK8opendnp311APDUWrapper8ToRSliceEv
	.type	_ZNK8opendnp311APDUWrapper8ToRSliceEv, @function
_ZNK8opendnp311APDUWrapper8ToRSliceEv:
.LFB255:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rdi, %rbp
	addq	$8, %rdi
	subq	$32, %rsp
	.cfi_def_cfa_offset 48
	movq	%fs:40, %rax
	movq	%rax, 24(%rsp)
	xorl	%eax, %eax
	call	_ZNK7openpal6WSlice8ToRSliceEv@PLT
	movq	%rbp, %rdi
	movq	%rdx, 8(%rsp)
	movl	%eax, (%rsp)
	call	_ZNK8opendnp311APDUWrapper4SizeEv@PLT
	movq	%rsp, %rdi
	movl	%eax, %esi
	call	_ZNK7openpal6RSlice4TakeEj@PLT
	movq	24(%rsp), %rcx
	xorq	%fs:40, %rcx
	jne	.L22
	addq	$32, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 16
	popq	%rbp
	.cfi_def_cfa_offset 8
	ret
.L22:
	.cfi_restore_state
	call	__stack_chk_fail@PLT
	.cfi_endproc
.LFE255:
	.size	_ZNK8opendnp311APDUWrapper8ToRSliceEv, .-_ZNK8opendnp311APDUWrapper8ToRSliceEv
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
