	.file	"Attributes.cpp"
	.text
	.p2align 4
	.globl	_ZN8opendnp315HasAbsoluteTimeENS_14GroupVariationE
	.type	_ZN8opendnp315HasAbsoluteTimeENS_14GroupVariationE, @function
_ZN8opendnp315HasAbsoluteTimeENS_14GroupVariationE:
.LFB0:
	.cfi_startproc
	endbr64
	cmpw	$8200, %di
	ja	.L2
	cmpw	$8198, %di
	ja	.L17
	cmpw	$5382, %di
	ja	.L4
	cmpw	$5380, %di
	ja	.L17
	cmpw	$2818, %di
	je	.L17
	cmpw	$3330, %di
	sete	%al
	cmpw	$2818, %di
	jbe	.L19
	ret
	.p2align 4,,10
	.p2align 3
.L19:
	subw	$514, %di
	testw	$-513, %di
	sete	%al
	ret
	.p2align 4,,10
	.p2align 3
.L4:
	cmpw	$5894, %di
	ja	.L6
	cmpw	$5892, %di
	ja	.L17
	subw	$5637, %di
	cmpw	$1, %di
	setbe	%al
	ret
	.p2align 4,,10
	.p2align 3
.L2:
	cmpw	$12801, %di
	je	.L17
	jbe	.L20
	cmpw	$13058, %di
	ja	.L10
	cmpw	$13056, %di
	ja	.L17
	cmpw	$12804, %di
	sete	%al
	ret
	.p2align 4,,10
	.p2align 3
.L6:
	subw	$8195, %di
	cmpw	$1, %di
	setbe	%al
	ret
	.p2align 4,,10
	.p2align 3
.L10:
	cmpw	$31234, %di
	sete	%al
	ret
	.p2align 4,,10
	.p2align 3
.L20:
	cmpw	$11012, %di
	ja	.L8
	cmpw	$11010, %di
	ja	.L17
	cmpw	$10756, %di
	ja	.L9
	cmpw	$10754, %di
	seta	%al
	ret
	.p2align 4,,10
	.p2align 3
.L8:
	subw	$11015, %di
	cmpw	$1, %di
	setbe	%al
	ret
	.p2align 4,,10
	.p2align 3
.L9:
	subw	$10759, %di
	cmpw	$1, %di
	setbe	%al
	ret
	.p2align 4,,10
	.p2align 3
.L17:
	movl	$1, %eax
	ret
	.cfi_endproc
.LFE0:
	.size	_ZN8opendnp315HasAbsoluteTimeENS_14GroupVariationE, .-_ZN8opendnp315HasAbsoluteTimeENS_14GroupVariationE
	.p2align 4
	.globl	_ZN8opendnp315HasRelativeTimeENS_14GroupVariationE
	.type	_ZN8opendnp315HasRelativeTimeENS_14GroupVariationE, @function
_ZN8opendnp315HasRelativeTimeENS_14GroupVariationE:
.LFB1:
	.cfi_startproc
	endbr64
	cmpw	$1027, %di
	je	.L24
	ja	.L23
	cmpw	$515, %di
	sete	%al
	ret
	.p2align 4,,10
	.p2align 3
.L23:
	subw	$13313, %di
	cmpw	$1, %di
	setbe	%al
	ret
	.p2align 4,,10
	.p2align 3
.L24:
	movl	$1, %eax
	ret
	.cfi_endproc
.LFE1:
	.size	_ZN8opendnp315HasRelativeTimeENS_14GroupVariationE, .-_ZN8opendnp315HasRelativeTimeENS_14GroupVariationE
	.p2align 4
	.globl	_ZN8opendnp38HasFlagsENS_14GroupVariationE
	.type	_ZN8opendnp38HasFlagsENS_14GroupVariationE, @function
_ZN8opendnp38HasFlagsENS_14GroupVariationE:
.LFB2:
	.cfi_startproc
	endbr64
	cmpw	$5634, %di
	ja	.L26
	cmpw	$5632, %di
	ja	.L46
	cmpw	$2818, %di
	ja	.L28
	cmpw	$2816, %di
	ja	.L46
	cmpw	$770, %di
	je	.L46
	jbe	.L47
	cmpw	$1027, %di
	ja	.L30
	cmpw	$1024, %di
	seta	%al
	ret
	.p2align 4,,10
	.p2align 3
.L26:
	cmpw	$8200, %di
	ja	.L33
	cmpw	$8192, %di
	ja	.L46
	cmpw	$5894, %di
	ja	.L34
	cmpw	$5892, %di
	ja	.L46
	cmpw	$5638, %di
	ja	.L35
	cmpw	$5636, %di
	seta	%al
	ret
	.p2align 4,,10
	.p2align 3
.L30:
	cmpw	$2562, %di
	sete	%al
	ret
	.p2align 4,,10
	.p2align 3
.L28:
	cmpw	$5378, %di
	ja	.L31
	cmpw	$5376, %di
	ja	.L46
	cmpw	$3330, %di
	ja	.L32
	cmpw	$3328, %di
	seta	%al
	ret
	.p2align 4,,10
	.p2align 3
.L47:
	movl	$1, %eax
	cmpw	$258, %di
	je	.L25
	subw	$513, %di
	cmpw	$2, %di
	setbe	%al
	ret
	.p2align 4,,10
	.p2align 3
.L35:
	subw	$5889, %di
	cmpw	$1, %di
	setbe	%al
	ret
	.p2align 4,,10
	.p2align 3
.L46:
	movl	$1, %eax
.L25:
	ret
	.p2align 4,,10
	.p2align 3
.L34:
	cmpw	$7682, %di
	ja	.L36
	cmpw	$7680, %di
	seta	%al
	ret
	.p2align 4,,10
	.p2align 3
.L33:
	cmpw	$30977, %di
	je	.L46
	jbe	.L48
	subw	$31233, %di
	cmpw	$1, %di
	setbe	%al
	ret
	.p2align 4,,10
	.p2align 3
.L32:
	subw	$5121, %di
	cmpw	$1, %di
	setbe	%al
	ret
	.p2align 4,,10
	.p2align 3
.L36:
	subw	$7685, %di
	cmpw	$1, %di
	setbe	%al
	ret
	.p2align 4,,10
	.p2align 3
.L31:
	subw	$5381, %di
	cmpw	$1, %di
	setbe	%al
	ret
	.p2align 4,,10
	.p2align 3
.L48:
	cmpw	$10244, %di
	ja	.L38
	cmpw	$10240, %di
	seta	%al
	ret
	.p2align 4,,10
	.p2align 3
.L38:
	subw	$10753, %di
	cmpw	$7, %di
	setbe	%al
	ret
	.cfi_endproc
.LFE2:
	.size	_ZN8opendnp38HasFlagsENS_14GroupVariationE, .-_ZN8opendnp38HasFlagsENS_14GroupVariationE
	.p2align 4
	.globl	_ZN8opendnp37IsEventENS_14GroupVariationE
	.type	_ZN8opendnp37IsEventENS_14GroupVariationE, @function
_ZN8opendnp37IsEventENS_14GroupVariationE:
.LFB3:
	.cfi_startproc
	endbr64
	cmpw	$5890, %di
	ja	.L50
	cmpw	$5888, %di
	ja	.L61
	cmpw	$3330, %di
	ja	.L52
	cmpw	$3328, %di
	ja	.L61
	cmpw	$1027, %di
	ja	.L53
	movl	$1, %eax
	cmpw	$1024, %di
	ja	.L49
	subw	$513, %di
	cmpw	$2, %di
	setbe	%al
	ret
	.p2align 4,,10
	.p2align 3
.L50:
	cmpw	$10760, %di
	ja	.L55
	cmpw	$10752, %di
	ja	.L61
	cmpw	$5894, %di
	ja	.L56
	cmpw	$5892, %di
	seta	%al
	ret
	.p2align 4,,10
	.p2align 3
.L61:
	movl	$1, %eax
.L49:
	ret
	.p2align 4,,10
	.p2align 3
.L56:
	subw	$8193, %di
	cmpw	$7, %di
	setbe	%al
	ret
	.p2align 4,,10
	.p2align 3
.L55:
	cmpw	$11016, %di
	ja	.L57
	cmpw	$11008, %di
	seta	%al
	ret
	.p2align 4,,10
	.p2align 3
.L53:
	subw	$2817, %di
	cmpw	$1, %di
	setbe	%al
	ret
	.p2align 4,,10
	.p2align 3
.L52:
	cmpw	$5634, %di
	ja	.L54
	cmpw	$5632, %di
	seta	%al
	ret
	.p2align 4,,10
	.p2align 3
.L57:
	subw	$31233, %di
	cmpw	$1, %di
	setbe	%al
	ret
	.p2align 4,,10
	.p2align 3
.L54:
	subw	$5637, %di
	cmpw	$1, %di
	setbe	%al
	ret
	.cfi_endproc
.LFE3:
	.size	_ZN8opendnp37IsEventENS_14GroupVariationE, .-_ZN8opendnp37IsEventENS_14GroupVariationE
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
