	.file	"APDUResponse.cpp"
	.text
	.align 2
	.p2align 4
	.globl	_ZN8opendnp312APDUResponseC2ERKN7openpal6WSliceE
	.type	_ZN8opendnp312APDUResponseC2ERKN7openpal6WSliceE, @function
_ZN8opendnp312APDUResponseC2ERKN7openpal6WSliceE:
.LFB267:
	.cfi_startproc
	endbr64
	pushq	%rbx
	.cfi_def_cfa_offset 16
	.cfi_offset 3, -16
	movq	%rdi, %rbx
	call	_ZN8opendnp311APDUWrapperC2ERKN7openpal6WSliceE@PLT
	leaq	24(%rbx), %rdi
	movl	$2, %esi
	popq	%rbx
	.cfi_def_cfa_offset 8
	jmp	_ZN7openpal6WSlice7AdvanceEj@PLT
	.cfi_endproc
.LFE267:
	.size	_ZN8opendnp312APDUResponseC2ERKN7openpal6WSliceE, .-_ZN8opendnp312APDUResponseC2ERKN7openpal6WSliceE
	.globl	_ZN8opendnp312APDUResponseC1ERKN7openpal6WSliceE
	.set	_ZN8opendnp312APDUResponseC1ERKN7openpal6WSliceE,_ZN8opendnp312APDUResponseC2ERKN7openpal6WSliceE
	.align 2
	.p2align 4
	.globl	_ZN8opendnp312APDUResponse6SetIINERKNS_8IINFieldE
	.type	_ZN8opendnp312APDUResponse6SetIINERKNS_8IINFieldE, @function
_ZN8opendnp312APDUResponse6SetIINERKNS_8IINFieldE:
.LFB269:
	.cfi_startproc
	endbr64
	movq	16(%rdi), %rax
	movzbl	(%rsi), %edx
	movb	%dl, 2(%rax)
	movq	16(%rdi), %rax
	movzbl	1(%rsi), %edx
	movb	%dl, 3(%rax)
	ret
	.cfi_endproc
.LFE269:
	.size	_ZN8opendnp312APDUResponse6SetIINERKNS_8IINFieldE, .-_ZN8opendnp312APDUResponse6SetIINERKNS_8IINFieldE
	.align 2
	.p2align 4
	.globl	_ZNK8opendnp312APDUResponse6GetIINEv
	.type	_ZNK8opendnp312APDUResponse6GetIINEv, @function
_ZNK8opendnp312APDUResponse6GetIINEv:
.LFB270:
	.cfi_startproc
	endbr64
	movq	16(%rdi), %rax
	movzwl	2(%rax), %eax
	ret
	.cfi_endproc
.LFE270:
	.size	_ZNK8opendnp312APDUResponse6GetIINEv, .-_ZNK8opendnp312APDUResponse6GetIINEv
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
