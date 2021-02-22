	.file	"APDUParser.cpp"
	.text
	.section	.rodata.str1.1,"aMS",@progbits,1
.LC0:
	.string	"%03u,%03u - %s - %s"
	.section	.rodata.str1.8,"aMS",@progbits,1
	.align 8
.LC1:
	.string	"/home/mimic/spire/spire-src-1.3/OpenPLC_v2/dnp3/cpp/libs/src/opendnp3/app/parsing/APDUParser.cpp(150)"
	.text
	.align 2
	.p2align 4
	.globl	_ZN8opendnp310APDUParser22HandleAllObjectsHeaderEPN7openpal6LoggerERKNS_12HeaderRecordERKNS_14ParserSettingsEPNS_12IAPDUHandlerE
	.type	_ZN8opendnp310APDUParser22HandleAllObjectsHeaderEPN7openpal6LoggerERKNS_12HeaderRecordERKNS_14ParserSettingsEPNS_12IAPDUHandlerE, @function
_ZN8opendnp310APDUParser22HandleAllObjectsHeaderEPN7openpal6LoggerERKNS_12HeaderRecordERKNS_14ParserSettingsEPNS_12IAPDUHandlerE:
.LFB2360:
	.cfi_startproc
	endbr64
	pushq	%r15
	.cfi_def_cfa_offset 16
	.cfi_offset 15, -16
	pushq	%r14
	.cfi_def_cfa_offset 24
	.cfi_offset 14, -24
	pushq	%r13
	.cfi_def_cfa_offset 32
	.cfi_offset 13, -32
	pushq	%r12
	.cfi_def_cfa_offset 40
	.cfi_offset 12, -40
	movq	%rcx, %r12
	pushq	%rbp
	.cfi_def_cfa_offset 48
	.cfi_offset 6, -48
	pushq	%rbx
	.cfi_def_cfa_offset 56
	.cfi_offset 3, -56
	movq	%rsi, %rbx
	subq	$168, %rsp
	.cfi_def_cfa_offset 224
	movq	%fs:40, %rax
	movq	%rax, 152(%rsp)
	xorl	%eax, %eax
	testq	%rdi, %rdi
	je	.L3
	movl	4(%rdx), %eax
	leaq	16(%rsp), %r14
	movq	%rdi, %rbp
	movq	%rdx, %r13
	movq	%r14, %rsi
	movl	%eax, 16(%rsp)
	call	_ZNK7openpal6Logger9IsEnabledERKNS_10LogFiltersE@PLT
	testb	%al, %al
	jne	.L17
.L3:
	testq	%r12, %r12
	je	.L4
	movdqu	(%rbx), %xmm0
	leaq	16(%rsp), %rsi
	movq	%r12, %rdi
	movaps	%xmm0, 16(%rsp)
	call	_ZN8opendnp312IAPDUHandler8OnHeaderERKNS_16AllObjectsHeaderE@PLT
.L4:
	movq	152(%rsp), %rax
	xorq	%fs:40, %rax
	jne	.L18
	addq	$168, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 56
	xorl	%eax, %eax
	popq	%rbx
	.cfi_def_cfa_offset 48
	popq	%rbp
	.cfi_def_cfa_offset 40
	popq	%r12
	.cfi_def_cfa_offset 32
	popq	%r13
	.cfi_def_cfa_offset 24
	popq	%r14
	.cfi_def_cfa_offset 16
	popq	%r15
	.cfi_def_cfa_offset 8
	ret
	.p2align 4,,10
	.p2align 3
.L17:
	.cfi_restore_state
	movl	$6, %edi
	call	_ZN8opendnp321QualifierCodeToStringENS_13QualifierCodeE@PLT
	movzwl	(%rbx), %edi
	movq	%rax, %r15
	call	_ZN8opendnp322GroupVariationToStringENS_14GroupVariationE@PLT
	leaq	32(%rsp), %r10
	subq	$8, %rsp
	.cfi_def_cfa_offset 232
	movzbl	8(%rbx), %r9d
	pushq	%r15
	.cfi_def_cfa_offset 240
	movq	%r10, %rdi
	movl	$120, %ecx
	movl	$1, %edx
	pushq	%rax
	.cfi_def_cfa_offset 248
	movzbl	9(%rbx), %eax
	leaq	.LC0(%rip), %r8
	movl	$120, %esi
	pushq	%rax
	.cfi_def_cfa_offset 256
	xorl	%eax, %eax
	movq	%r10, 40(%rsp)
	call	__snprintf_chk@PLT
	movl	4(%r13), %eax
	movq	%r14, %rsi
	movq	%rbp, %rdi
	leaq	.LC1(%rip), %rdx
	movl	%eax, 48(%rsp)
	movq	40(%rsp), %r10
	addq	$32, %rsp
	.cfi_def_cfa_offset 224
	movq	%r10, %rcx
	call	_ZN7openpal6Logger3LogERKNS_10LogFiltersEPKcS5_@PLT
	jmp	.L3
.L18:
	call	__stack_chk_fail@PLT
	.cfi_endproc
.LFE2360:
	.size	_ZN8opendnp310APDUParser22HandleAllObjectsHeaderEPN7openpal6LoggerERKNS_12HeaderRecordERKNS_14ParserSettingsEPNS_12IAPDUHandlerE, .-_ZN8opendnp310APDUParser22HandleAllObjectsHeaderEPN7openpal6LoggerERKNS_12HeaderRecordERKNS_14ParserSettingsEPNS_12IAPDUHandlerE
	.section	.rodata.str1.1
.LC2:
	.string	"Unknown qualifier %x"
	.section	.rodata.str1.8
	.align 8
.LC3:
	.string	"/home/mimic/spire/spire-src-1.3/OpenPLC_v2/dnp3/cpp/libs/src/opendnp3/app/parsing/APDUParser.cpp(143)"
	.text
	.align 2
	.p2align 4
	.globl	_ZN8opendnp310APDUParser14ParseQualifierERN7openpal6RSliceEPNS1_6LoggerERKNS_12HeaderRecordERKNS_14ParserSettingsEPNS_12IAPDUHandlerE
	.type	_ZN8opendnp310APDUParser14ParseQualifierERN7openpal6RSliceEPNS1_6LoggerERKNS_12HeaderRecordERKNS_14ParserSettingsEPNS_12IAPDUHandlerE, @function
_ZN8opendnp310APDUParser14ParseQualifierERN7openpal6RSliceEPNS1_6LoggerERKNS_12HeaderRecordERKNS_14ParserSettingsEPNS_12IAPDUHandlerE:
.LFB2359:
	.cfi_startproc
	endbr64
	pushq	%r15
	.cfi_def_cfa_offset 16
	.cfi_offset 15, -16
	movq	%rdx, %r15
	pushq	%r14
	.cfi_def_cfa_offset 24
	.cfi_offset 14, -24
	movq	%rdi, %r14
	movq	%rdx, %rdi
	pushq	%r13
	.cfi_def_cfa_offset 32
	.cfi_offset 13, -32
	movq	%r8, %r13
	pushq	%r12
	.cfi_def_cfa_offset 40
	.cfi_offset 12, -40
	movq	%rcx, %r12
	pushq	%rbp
	.cfi_def_cfa_offset 48
	.cfi_offset 6, -48
	movq	%rsi, %rbp
	subq	$144, %rsp
	.cfi_def_cfa_offset 192
	movq	%fs:40, %rax
	movq	%rax, 136(%rsp)
	xorl	%eax, %eax
	call	_ZNK8opendnp312HeaderRecord16GetQualifierCodeEv@PLT
	cmpb	$40, %al
	ja	.L20
	leaq	.L23(%rip), %rdx
	movzbl	%al, %eax
	movslq	(%rdx,%rax,4), %rax
	addq	%rdx, %rax
	notrack jmp	*%rax
	.section	.rodata
	.align 4
	.align 4
.L23:
	.long	.L29-.L23
	.long	.L28-.L23
	.long	.L21-.L23
	.long	.L21-.L23
	.long	.L21-.L23
	.long	.L21-.L23
	.long	.L27-.L23
	.long	.L26-.L23
	.long	.L25-.L23
	.long	.L21-.L23
	.long	.L21-.L23
	.long	.L21-.L23
	.long	.L21-.L23
	.long	.L21-.L23
	.long	.L21-.L23
	.long	.L21-.L23
	.long	.L21-.L23
	.long	.L21-.L23
	.long	.L21-.L23
	.long	.L21-.L23
	.long	.L21-.L23
	.long	.L21-.L23
	.long	.L21-.L23
	.long	.L24-.L23
	.long	.L21-.L23
	.long	.L21-.L23
	.long	.L21-.L23
	.long	.L21-.L23
	.long	.L21-.L23
	.long	.L21-.L23
	.long	.L21-.L23
	.long	.L21-.L23
	.long	.L21-.L23
	.long	.L21-.L23
	.long	.L21-.L23
	.long	.L21-.L23
	.long	.L21-.L23
	.long	.L21-.L23
	.long	.L21-.L23
	.long	.L21-.L23
	.long	.L22-.L23
	.text
	.p2align 4,,10
	.p2align 3
.L20:
	cmpb	$91, %al
	jne	.L21
	movq	%r13, %r8
	movq	%rbp, %rcx
	movq	%r15, %rdx
	movq	%r12, %rsi
	movq	%r14, %rdi
	call	_ZN8opendnp316FreeFormatParser11ParseHeaderERN7openpal6RSliceERKNS_14ParserSettingsERKNS_12HeaderRecordEPNS1_6LoggerEPNS_12IAPDUHandlerE@PLT
	.p2align 4,,10
	.p2align 3
.L19:
	movq	136(%rsp), %rcx
	xorq	%fs:40, %rcx
	jne	.L44
	addq	$144, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 48
	popq	%rbp
	.cfi_def_cfa_offset 40
	popq	%r12
	.cfi_def_cfa_offset 32
	popq	%r13
	.cfi_def_cfa_offset 24
	popq	%r14
	.cfi_def_cfa_offset 16
	popq	%r15
	.cfi_def_cfa_offset 8
	ret
.L22:
	.cfi_restore_state
	call	_ZN8opendnp39NumParser7TwoByteEv@PLT
.L43:
	movq	%rdx, 8(%rsp)
	movq	%rsp, %rsi
	movq	%r13, %r9
	movq	%rbp, %r8
	movq	%r15, %rcx
	movq	%r12, %rdx
	movq	%r14, %rdi
	movq	%rax, (%rsp)
	call	_ZN8opendnp316CountIndexParser11ParseHeaderERN7openpal6RSliceERKNS_9NumParserERKNS_14ParserSettingsERKNS_12HeaderRecordEPNS1_6LoggerEPNS_12IAPDUHandlerE@PLT
	jmp	.L19
.L21:
	testq	%rbp, %rbp
	je	.L32
	movq	%rsp, %r12
	movq	%rbp, %rdi
	movl	$4, (%rsp)
	movq	%r12, %rsi
	call	_ZNK7openpal6Logger9IsEnabledERKNS_10LogFiltersE@PLT
	testb	%al, %al
	jne	.L45
.L32:
	movl	$7, %eax
	jmp	.L19
.L29:
	call	_ZN8opendnp39NumParser7OneByteEv@PLT
.L42:
	movq	%rdx, 8(%rsp)
	movq	%rsp, %rsi
	movq	%r13, %r9
	movq	%rbp, %r8
	movq	%r15, %rcx
	movq	%r12, %rdx
	movq	%r14, %rdi
	movq	%rax, (%rsp)
	call	_ZN8opendnp311RangeParser11ParseHeaderERN7openpal6RSliceERKNS_9NumParserERKNS_14ParserSettingsERKNS_12HeaderRecordEPNS1_6LoggerEPNS_12IAPDUHandlerE@PLT
	jmp	.L19
.L28:
	call	_ZN8opendnp39NumParser7TwoByteEv@PLT
	jmp	.L42
.L27:
	movq	%r13, %rcx
	movq	%r12, %rdx
	movq	%r15, %rsi
	movq	%rbp, %rdi
	call	_ZN8opendnp310APDUParser22HandleAllObjectsHeaderEPN7openpal6LoggerERKNS_12HeaderRecordERKNS_14ParserSettingsEPNS_12IAPDUHandlerE@PLT
	jmp	.L19
.L26:
	call	_ZN8opendnp39NumParser7OneByteEv@PLT
.L41:
	movq	%rdx, 8(%rsp)
	movq	%rsp, %rsi
	movq	%r13, %r9
	movq	%rbp, %r8
	movq	%r15, %rcx
	movq	%r12, %rdx
	movq	%r14, %rdi
	movq	%rax, (%rsp)
	call	_ZN8opendnp311CountParser11ParseHeaderERN7openpal6RSliceERKNS_9NumParserERKNS_14ParserSettingsERKNS_12HeaderRecordEPNS1_6LoggerEPNS_12IAPDUHandlerE@PLT
	jmp	.L19
.L25:
	call	_ZN8opendnp39NumParser7TwoByteEv@PLT
	jmp	.L41
.L24:
	call	_ZN8opendnp39NumParser7OneByteEv@PLT
	jmp	.L43
	.p2align 4,,10
	.p2align 3
.L45:
	movzbl	10(%r15), %r9d
	leaq	16(%rsp), %r13
	movl	$120, %ecx
	xorl	%eax, %eax
	leaq	.LC2(%rip), %r8
	movl	$1, %edx
	movl	$120, %esi
	movq	%r13, %rdi
	call	__snprintf_chk@PLT
	movq	%r13, %rcx
	movq	%r12, %rsi
	movq	%rbp, %rdi
	leaq	.LC3(%rip), %rdx
	movl	$4, (%rsp)
	call	_ZN7openpal6Logger3LogERKNS_10LogFiltersEPKcS5_@PLT
	movl	$7, %eax
	jmp	.L19
.L44:
	call	__stack_chk_fail@PLT
	.cfi_endproc
.LFE2359:
	.size	_ZN8opendnp310APDUParser14ParseQualifierERN7openpal6RSliceEPNS1_6LoggerERKNS_12HeaderRecordERKNS_14ParserSettingsEPNS_12IAPDUHandlerE, .-_ZN8opendnp310APDUParser14ParseQualifierERN7openpal6RSliceEPNS1_6LoggerERKNS_12HeaderRecordERKNS_14ParserSettingsEPNS_12IAPDUHandlerE
	.section	.rodata.str1.1
.LC4:
	.string	"Unknown object %i / %i"
	.section	.rodata.str1.8
	.align 8
.LC5:
	.string	"/home/mimic/spire/spire-src-1.3/OpenPLC_v2/dnp3/cpp/libs/src/opendnp3/app/parsing/APDUParser.cpp(90)"
	.align 8
.LC6:
	.string	"Header (%i) w/ Object (%i,%i) and qualifier (%i) failed whitelist"
	.align 8
.LC7:
	.string	"/home/mimic/spire/spire-src-1.3/OpenPLC_v2/dnp3/cpp/libs/src/opendnp3/app/parsing/APDUParser.cpp(97)"
	.text
	.align 2
	.p2align 4
	.globl	_ZN8opendnp310APDUParser11ParseHeaderERN7openpal6RSliceEPNS1_6LoggerEjRKNS_14ParserSettingsEPNS_12IAPDUHandlerEPNS_10IWhiteListE
	.type	_ZN8opendnp310APDUParser11ParseHeaderERN7openpal6RSliceEPNS1_6LoggerEjRKNS_14ParserSettingsEPNS_12IAPDUHandlerEPNS_10IWhiteListE, @function
_ZN8opendnp310APDUParser11ParseHeaderERN7openpal6RSliceEPNS1_6LoggerEjRKNS_14ParserSettingsEPNS_12IAPDUHandlerEPNS_10IWhiteListE:
.LFB2358:
	.cfi_startproc
	endbr64
	pushq	%r15
	.cfi_def_cfa_offset 16
	.cfi_offset 15, -16
	movq	%rcx, %r15
	pushq	%r14
	.cfi_def_cfa_offset 24
	.cfi_offset 14, -24
	movl	%edx, %r14d
	pushq	%r13
	.cfi_def_cfa_offset 32
	.cfi_offset 13, -32
	movq	%r9, %r13
	pushq	%r12
	.cfi_def_cfa_offset 40
	.cfi_offset 12, -40
	movq	%rdi, %r12
	pushq	%rbp
	.cfi_def_cfa_offset 48
	.cfi_offset 6, -48
	movq	%rsi, %rbp
	pushq	%rbx
	.cfi_def_cfa_offset 56
	.cfi_offset 3, -56
	movq	%r8, %rbx
	subq	$184, %rsp
	.cfi_def_cfa_offset 240
	movq	%fs:40, %rax
	movq	%rax, 168(%rsp)
	xorl	%eax, %eax
	leaq	17(%rsp), %rdi
	movq	%rdi, 8(%rsp)
	call	_ZN8opendnp312ObjectHeaderC1Ev@PLT
	movq	8(%rsp), %rdi
	movq	%rbp, %rdx
	movq	%r12, %rsi
	call	_ZN8opendnp318ObjectHeaderParser17ParseObjectHeaderERNS_12ObjectHeaderERN7openpal6RSliceEPNS3_6LoggerE@PLT
	testb	%al, %al
	je	.L69
.L46:
	movq	168(%rsp), %rbx
	xorq	%fs:40, %rbx
	jne	.L70
	addq	$184, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 56
	popq	%rbx
	.cfi_def_cfa_offset 48
	popq	%rbp
	.cfi_def_cfa_offset 40
	popq	%r12
	.cfi_def_cfa_offset 32
	popq	%r13
	.cfi_def_cfa_offset 24
	popq	%r14
	.cfi_def_cfa_offset 16
	popq	%r15
	.cfi_def_cfa_offset 8
	ret
	.p2align 4,,10
	.p2align 3
.L69:
	.cfi_restore_state
	movzbl	18(%rsp), %esi
	movzbl	17(%rsp), %edi
	call	_ZN8opendnp320GroupVariationRecord9GetRecordEhh@PLT
	movq	%rax, 20(%rsp)
	movl	%edx, 28(%rsp)
	cmpw	$-1, %ax
	je	.L71
	movzbl	19(%rsp), %edx
	testq	%r13, %r13
	je	.L50
	movq	0(%r13), %rax
	movl	%edx, %edi
	movq	(%rax), %r8
	movq	%r8, 8(%rsp)
	call	_ZN8opendnp321QualifierCodeFromTypeEh@PLT
	movzwl	20(%rsp), %edx
	movl	%r14d, %esi
	movq	%r13, %rdi
	movq	8(%rsp), %r8
	movl	%eax, %ecx
	call	*%r8
	testb	%al, %al
	je	.L51
	movzbl	19(%rsp), %edx
.L50:
	leaq	32(%rsp), %r13
	leaq	20(%rsp), %rsi
	movl	%r14d, %ecx
	movq	%r13, %rdi
	call	_ZN8opendnp312HeaderRecordC1ERKNS_20GroupVariationRecordEhj@PLT
	movq	%rbx, %r8
	movq	%r15, %rcx
	movq	%r13, %rdx
	movq	%rbp, %rsi
	movq	%r12, %rdi
	call	_ZN8opendnp310APDUParser14ParseQualifierERN7openpal6RSliceEPNS1_6LoggerERKNS_12HeaderRecordERKNS_14ParserSettingsEPNS_12IAPDUHandlerE@PLT
	jmp	.L46
	.p2align 4,,10
	.p2align 3
.L51:
	testq	%rbp, %rbp
	je	.L68
	leaq	32(%rsp), %r12
	movq	%rbp, %rdi
	movl	$4, 32(%rsp)
	movq	%r12, %rsi
	call	_ZNK7openpal6Logger9IsEnabledERKNS_10LogFiltersE@PLT
	testb	%al, %al
	jne	.L72
.L68:
	movl	$1, %eax
	jmp	.L46
	.p2align 4,,10
	.p2align 3
.L71:
	testq	%rbp, %rbp
	je	.L49
	leaq	32(%rsp), %r12
	movq	%rbp, %rdi
	movl	$4, 32(%rsp)
	movq	%r12, %rsi
	call	_ZNK7openpal6Logger9IsEnabledERKNS_10LogFiltersE@PLT
	testb	%al, %al
	je	.L49
	leaq	48(%rsp), %r13
	subq	$8, %rsp
	.cfi_def_cfa_offset 248
	movl	$120, %ecx
	movl	$1, %edx
	movzbl	37(%rsp), %eax
	leaq	.LC4(%rip), %r8
	movl	$120, %esi
	movq	%r13, %rdi
	pushq	%rax
	.cfi_def_cfa_offset 256
	movzbl	44(%rsp), %r9d
	xorl	%eax, %eax
	call	__snprintf_chk@PLT
	movq	%r13, %rcx
	movq	%r12, %rsi
	movq	%rbp, %rdi
	movl	$4, 48(%rsp)
	popq	%rax
	.cfi_def_cfa_offset 248
	popq	%rdx
	.cfi_def_cfa_offset 240
	leaq	.LC5(%rip), %rdx
	call	_ZN7openpal6Logger3LogERKNS_10LogFiltersEPKcS5_@PLT
	movl	$6, %eax
	jmp	.L46
	.p2align 4,,10
	.p2align 3
.L49:
	movl	$6, %eax
	jmp	.L46
	.p2align 4,,10
	.p2align 3
.L72:
	leaq	48(%rsp), %r13
	subq	$8, %rsp
	.cfi_def_cfa_offset 248
	movl	%r14d, %r9d
	movl	$120, %ecx
	movzbl	27(%rsp), %eax
	movq	%r13, %rdi
	movl	$1, %edx
	leaq	.LC6(%rip), %r8
	movl	$120, %esi
	pushq	%rax
	.cfi_def_cfa_offset 256
	movzbl	34(%rsp), %eax
	pushq	%rax
	.cfi_def_cfa_offset 264
	movzbl	41(%rsp), %eax
	pushq	%rax
	.cfi_def_cfa_offset 272
	xorl	%eax, %eax
	call	__snprintf_chk@PLT
	movq	%r13, %rcx
	movq	%r12, %rsi
	movq	%rbp, %rdi
	movl	$4, 64(%rsp)
	leaq	.LC7(%rip), %rdx
	addq	$32, %rsp
	.cfi_def_cfa_offset 240
	call	_ZN7openpal6Logger3LogERKNS_10LogFiltersEPKcS5_@PLT
	jmp	.L68
.L70:
	call	__stack_chk_fail@PLT
	.cfi_endproc
.LFE2358:
	.size	_ZN8opendnp310APDUParser11ParseHeaderERN7openpal6RSliceEPNS1_6LoggerEjRKNS_14ParserSettingsEPNS_12IAPDUHandlerEPNS_10IWhiteListE, .-_ZN8opendnp310APDUParser11ParseHeaderERN7openpal6RSliceEPNS1_6LoggerEjRKNS_14ParserSettingsEPNS_12IAPDUHandlerEPNS_10IWhiteListE
	.align 2
	.p2align 4
	.globl	_ZN8opendnp310APDUParser15ParseSinglePassERKN7openpal6RSliceEPNS1_6LoggerEPNS_12IAPDUHandlerEPNS_10IWhiteListERKNS_14ParserSettingsE
	.type	_ZN8opendnp310APDUParser15ParseSinglePassERKN7openpal6RSliceEPNS1_6LoggerEPNS_12IAPDUHandlerEPNS_10IWhiteListERKNS_14ParserSettingsE, @function
_ZN8opendnp310APDUParser15ParseSinglePassERKN7openpal6RSliceEPNS1_6LoggerEPNS_12IAPDUHandlerEPNS_10IWhiteListERKNS_14ParserSettingsE:
.LFB2357:
	.cfi_startproc
	endbr64
	pushq	%r15
	.cfi_def_cfa_offset 16
	.cfi_offset 15, -16
	xorl	%r15d, %r15d
	pushq	%r14
	.cfi_def_cfa_offset 24
	.cfi_offset 14, -24
	movq	%rcx, %r14
	pushq	%r13
	.cfi_def_cfa_offset 32
	.cfi_offset 13, -32
	pushq	%r12
	.cfi_def_cfa_offset 40
	.cfi_offset 12, -40
	movq	%rsi, %r12
	pushq	%rbp
	.cfi_def_cfa_offset 48
	.cfi_offset 6, -48
	movq	%rdx, %rbp
	pushq	%rbx
	.cfi_def_cfa_offset 56
	.cfi_offset 3, -56
	movq	%r8, %rbx
	subq	$40, %rsp
	.cfi_def_cfa_offset 96
	movdqu	(%rdi), %xmm0
	movq	%fs:40, %rax
	movq	%rax, 24(%rsp)
	xorl	%eax, %eax
	movq	%rsp, %r13
	movaps	%xmm0, (%rsp)
	jmp	.L75
	.p2align 4,,10
	.p2align 3
.L81:
	movl	%r15d, %edx
	movq	%r14, %r9
	movq	%rbp, %r8
	movq	%rbx, %rcx
	movq	%r12, %rsi
	movq	%r13, %rdi
	addl	$1, %r15d
	call	_ZN8opendnp310APDUParser11ParseHeaderERN7openpal6RSliceEPNS1_6LoggerEjRKNS_14ParserSettingsEPNS_12IAPDUHandlerEPNS_10IWhiteListE@PLT
	testb	%al, %al
	jne	.L73
.L75:
	movl	(%rsp), %eax
	testl	%eax, %eax
	jne	.L81
	xorl	%eax, %eax
.L73:
	movq	24(%rsp), %rbx
	xorq	%fs:40, %rbx
	jne	.L82
	addq	$40, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 56
	popq	%rbx
	.cfi_def_cfa_offset 48
	popq	%rbp
	.cfi_def_cfa_offset 40
	popq	%r12
	.cfi_def_cfa_offset 32
	popq	%r13
	.cfi_def_cfa_offset 24
	popq	%r14
	.cfi_def_cfa_offset 16
	popq	%r15
	.cfi_def_cfa_offset 8
	ret
.L82:
	.cfi_restore_state
	call	__stack_chk_fail@PLT
	.cfi_endproc
.LFE2357:
	.size	_ZN8opendnp310APDUParser15ParseSinglePassERKN7openpal6RSliceEPNS1_6LoggerEPNS_12IAPDUHandlerEPNS_10IWhiteListERKNS_14ParserSettingsE, .-_ZN8opendnp310APDUParser15ParseSinglePassERKN7openpal6RSliceEPNS1_6LoggerEPNS_12IAPDUHandlerEPNS_10IWhiteListERKNS_14ParserSettingsE
	.align 2
	.p2align 4
	.globl	_ZN8opendnp310APDUParser5ParseERKN7openpal6RSliceERNS_12IAPDUHandlerEPNS1_6LoggerENS_14ParserSettingsE
	.type	_ZN8opendnp310APDUParser5ParseERKN7openpal6RSliceERNS_12IAPDUHandlerEPNS1_6LoggerENS_14ParserSettingsE, @function
_ZN8opendnp310APDUParser5ParseERKN7openpal6RSliceERNS_12IAPDUHandlerEPNS1_6LoggerENS_14ParserSettingsE:
.LFB2355:
	.cfi_startproc
	endbr64
	pushq	%r12
	.cfi_def_cfa_offset 16
	.cfi_offset 12, -16
	movq	%rsi, %r12
	movq	%rdx, %rsi
	xorl	%edx, %edx
	pushq	%rbp
	.cfi_def_cfa_offset 24
	.cfi_offset 6, -24
	movq	%rdi, %rbp
	pushq	%rbx
	.cfi_def_cfa_offset 32
	.cfi_offset 3, -32
	subq	$16, %rsp
	.cfi_def_cfa_offset 48
	leaq	8(%rsp), %rbx
	movq	%rcx, 8(%rsp)
	movq	%r12, %rcx
	movq	%rbx, %r8
	call	_ZN8opendnp310APDUParser15ParseSinglePassERKN7openpal6RSliceEPNS1_6LoggerEPNS_12IAPDUHandlerEPNS_10IWhiteListERKNS_14ParserSettingsE@PLT
	testb	%al, %al
	je	.L86
	addq	$16, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 32
	popq	%rbx
	.cfi_def_cfa_offset 24
	popq	%rbp
	.cfi_def_cfa_offset 16
	popq	%r12
	.cfi_def_cfa_offset 8
	ret
	.p2align 4,,10
	.p2align 3
.L86:
	.cfi_restore_state
	movq	%rbx, %r8
	movq	%r12, %rdx
	movq	%rbp, %rdi
	xorl	%ecx, %ecx
	xorl	%esi, %esi
	call	_ZN8opendnp310APDUParser15ParseSinglePassERKN7openpal6RSliceEPNS1_6LoggerEPNS_12IAPDUHandlerEPNS_10IWhiteListERKNS_14ParserSettingsE@PLT
	addq	$16, %rsp
	.cfi_def_cfa_offset 32
	popq	%rbx
	.cfi_def_cfa_offset 24
	popq	%rbp
	.cfi_def_cfa_offset 16
	popq	%r12
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE2355:
	.size	_ZN8opendnp310APDUParser5ParseERKN7openpal6RSliceERNS_12IAPDUHandlerEPNS1_6LoggerENS_14ParserSettingsE, .-_ZN8opendnp310APDUParser5ParseERKN7openpal6RSliceERNS_12IAPDUHandlerEPNS1_6LoggerENS_14ParserSettingsE
	.align 2
	.p2align 4
	.globl	_ZN8opendnp310APDUParser5ParseERKN7openpal6RSliceERNS_12IAPDUHandlerERNS1_6LoggerENS_14ParserSettingsE
	.type	_ZN8opendnp310APDUParser5ParseERKN7openpal6RSliceERNS_12IAPDUHandlerERNS1_6LoggerENS_14ParserSettingsE, @function
_ZN8opendnp310APDUParser5ParseERKN7openpal6RSliceERNS_12IAPDUHandlerERNS1_6LoggerENS_14ParserSettingsE:
.LFB2354:
	.cfi_startproc
	endbr64
	jmp	_ZN8opendnp310APDUParser5ParseERKN7openpal6RSliceERNS_12IAPDUHandlerEPNS1_6LoggerENS_14ParserSettingsE@PLT
	.cfi_endproc
.LFE2354:
	.size	_ZN8opendnp310APDUParser5ParseERKN7openpal6RSliceERNS_12IAPDUHandlerERNS1_6LoggerENS_14ParserSettingsE, .-_ZN8opendnp310APDUParser5ParseERKN7openpal6RSliceERNS_12IAPDUHandlerERNS1_6LoggerENS_14ParserSettingsE
	.align 2
	.p2align 4
	.globl	_ZN8opendnp310APDUParser14ParseAndLogAllERKN7openpal6RSliceEPNS1_6LoggerENS_14ParserSettingsE
	.type	_ZN8opendnp310APDUParser14ParseAndLogAllERKN7openpal6RSliceEPNS1_6LoggerENS_14ParserSettingsE, @function
_ZN8opendnp310APDUParser14ParseAndLogAllERKN7openpal6RSliceEPNS1_6LoggerENS_14ParserSettingsE:
.LFB2356:
	.cfi_startproc
	endbr64
	subq	$24, %rsp
	.cfi_def_cfa_offset 32
	xorl	%ecx, %ecx
	movq	%rdx, 8(%rsp)
	leaq	8(%rsp), %r8
	xorl	%edx, %edx
	call	_ZN8opendnp310APDUParser15ParseSinglePassERKN7openpal6RSliceEPNS1_6LoggerEPNS_12IAPDUHandlerEPNS_10IWhiteListERKNS_14ParserSettingsE@PLT
	addq	$24, %rsp
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE2356:
	.size	_ZN8opendnp310APDUParser14ParseAndLogAllERKN7openpal6RSliceEPNS1_6LoggerENS_14ParserSettingsE, .-_ZN8opendnp310APDUParser14ParseAndLogAllERKN7openpal6RSliceEPNS1_6LoggerENS_14ParserSettingsE
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
