	.file	"CertificateType.cpp"
	.text
	.p2align 4
	.globl	_ZN8opendnp321CertificateTypeToTypeENS_15CertificateTypeE
	.type	_ZN8opendnp321CertificateTypeToTypeENS_15CertificateTypeE, @function
_ZN8opendnp321CertificateTypeToTypeENS_15CertificateTypeE:
.LFB0:
	.cfi_startproc
	endbr64
	movl	%edi, %eax
	ret
	.cfi_endproc
.LFE0:
	.size	_ZN8opendnp321CertificateTypeToTypeENS_15CertificateTypeE, .-_ZN8opendnp321CertificateTypeToTypeENS_15CertificateTypeE
	.p2align 4
	.globl	_ZN8opendnp323CertificateTypeFromTypeEh
	.type	_ZN8opendnp323CertificateTypeFromTypeEh, @function
_ZN8opendnp323CertificateTypeFromTypeEh:
.LFB1:
	.cfi_startproc
	endbr64
	movl	%edi, %eax
	cmpb	$1, %dil
	je	.L4
	cmpb	$2, %dil
	movl	$0, %edx
	cmovne	%edx, %eax
.L4:
	ret
	.cfi_endproc
.LFE1:
	.size	_ZN8opendnp323CertificateTypeFromTypeEh, .-_ZN8opendnp323CertificateTypeFromTypeEh
	.section	.rodata.str1.1,"aMS",@progbits,1
.LC0:
	.string	"UNKNOWN"
.LC1:
	.string	"ID_CERTIFICATE"
.LC2:
	.string	"ATTRIBUTE_CERTIFICATE"
	.text
	.p2align 4
	.globl	_ZN8opendnp323CertificateTypeToStringENS_15CertificateTypeE
	.type	_ZN8opendnp323CertificateTypeToStringENS_15CertificateTypeE, @function
_ZN8opendnp323CertificateTypeToStringENS_15CertificateTypeE:
.LFB2:
	.cfi_startproc
	endbr64
	leaq	.LC1(%rip), %rax
	cmpb	$1, %dil
	je	.L6
	cmpb	$2, %dil
	leaq	.LC0(%rip), %rax
	leaq	.LC2(%rip), %rdx
	cmove	%rdx, %rax
.L6:
	ret
	.cfi_endproc
.LFE2:
	.size	_ZN8opendnp323CertificateTypeToStringENS_15CertificateTypeE, .-_ZN8opendnp323CertificateTypeToStringENS_15CertificateTypeE
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
