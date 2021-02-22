	.file	"BitReader.cpp"
	.text
	.p2align 4
	.globl	_ZN8opendnp314NumBytesInBitsEj
	.type	_ZN8opendnp314NumBytesInBitsEj, @function
_ZN8opendnp314NumBytesInBitsEj:
.LFB76:
	.cfi_startproc
	endbr64
	movl	%edi, %eax
	andl	$7, %edi
	shrl	$3, %eax
	cmpl	$1, %edi
	sbbl	$-1, %eax
	ret
	.cfi_endproc
.LFE76:
	.size	_ZN8opendnp314NumBytesInBitsEj, .-_ZN8opendnp314NumBytesInBitsEj
	.p2align 4
	.globl	_ZN8opendnp36GetBitERKN7openpal6RSliceEj
	.type	_ZN8opendnp36GetBitERKN7openpal6RSliceEj, @function
_ZN8opendnp36GetBitERKN7openpal6RSliceEj:
.LFB77:
	.cfi_startproc
	endbr64
	movq	8(%rdi), %rdx
	movl	%esi, %eax
	movl	%esi, %ecx
	shrl	$3, %eax
	andl	$7, %ecx
	movzbl	(%rdx,%rax), %eax
	sarl	%cl, %eax
	andl	$1, %eax
	ret
	.cfi_endproc
.LFE77:
	.size	_ZN8opendnp36GetBitERKN7openpal6RSliceEj, .-_ZN8opendnp36GetBitERKN7openpal6RSliceEj
	.p2align 4
	.globl	_ZN8opendnp320NumBytesInDoubleBitsEj
	.type	_ZN8opendnp320NumBytesInDoubleBitsEj, @function
_ZN8opendnp320NumBytesInDoubleBitsEj:
.LFB78:
	.cfi_startproc
	endbr64
	movl	%edi, %eax
	andl	$3, %edi
	shrl	$2, %eax
	cmpl	$1, %edi
	sbbl	$-1, %eax
	ret
	.cfi_endproc
.LFE78:
	.size	_ZN8opendnp320NumBytesInDoubleBitsEj, .-_ZN8opendnp320NumBytesInDoubleBitsEj
	.p2align 4
	.globl	_ZN8opendnp312GetDoubleBitERKN7openpal6RSliceEj
	.type	_ZN8opendnp312GetDoubleBitERKN7openpal6RSliceEj, @function
_ZN8opendnp312GetDoubleBitERKN7openpal6RSliceEj:
.LFB79:
	.cfi_startproc
	endbr64
	movl	%esi, %eax
	movq	8(%rdi), %rdx
	andl	$3, %esi
	shrl	$2, %eax
	leal	(%rsi,%rsi), %ecx
	movzbl	(%rdx,%rax), %edi
	sarl	%cl, %edi
	andl	$3, %edi
	jmp	_ZN8opendnp317DoubleBitFromTypeEh@PLT
	.cfi_endproc
.LFE79:
	.size	_ZN8opendnp312GetDoubleBitERKN7openpal6RSliceEj, .-_ZN8opendnp312GetDoubleBitERKN7openpal6RSliceEj
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
