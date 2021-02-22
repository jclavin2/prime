	.file	"CRC.cpp"
	.text
	.align 2
	.p2align 4
	.globl	_ZN8opendnp33CRC7CalcCrcEPKhj
	.type	_ZN8opendnp33CRC7CalcCrcEPKhj, @function
_ZN8opendnp33CRC7CalcCrcEPKhj:
.LFB61:
	.cfi_startproc
	endbr64
	testl	%esi, %esi
	je	.L4
	leal	-1(%rsi), %eax
	movq	_ZN8opendnp33CRC8crcTableE@GOTPCREL(%rip), %rcx
	leaq	1(%rdi,%rax), %rsi
	xorl	%eax, %eax
	.p2align 4,,10
	.p2align 3
.L3:
	movzbl	(%rdi), %edx
	addq	$1, %rdi
	xorl	%eax, %edx
	movzbl	%ah, %eax
	movzbl	%dl, %edx
	xorw	(%rcx,%rdx,2), %ax
	cmpq	%rdi, %rsi
	jne	.L3
	notl	%eax
	ret
	.p2align 4,,10
	.p2align 3
.L4:
	movl	$-1, %eax
	ret
	.cfi_endproc
.LFE61:
	.size	_ZN8opendnp33CRC7CalcCrcEPKhj, .-_ZN8opendnp33CRC7CalcCrcEPKhj
	.align 2
	.p2align 4
	.globl	_ZN8opendnp33CRC7CalcCrcERKN7openpal6RSliceE
	.type	_ZN8opendnp33CRC7CalcCrcERKN7openpal6RSliceE, @function
_ZN8opendnp33CRC7CalcCrcERKN7openpal6RSliceE:
.LFB62:
	.cfi_startproc
	endbr64
	movq	8(%rdi), %r8
	movl	(%rdi), %esi
	movq	%r8, %rdi
	jmp	_ZN8opendnp33CRC7CalcCrcEPKhj@PLT
	.cfi_endproc
.LFE62:
	.size	_ZN8opendnp33CRC7CalcCrcERKN7openpal6RSliceE, .-_ZN8opendnp33CRC7CalcCrcERKN7openpal6RSliceE
	.align 2
	.p2align 4
	.globl	_ZN8opendnp33CRC6AddCrcEPhj
	.type	_ZN8opendnp33CRC6AddCrcEPhj, @function
_ZN8opendnp33CRC6AddCrcEPhj:
.LFB63:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rdi, %rbp
	pushq	%rbx
	.cfi_def_cfa_offset 24
	.cfi_offset 3, -24
	movl	%esi, %ebx
	movl	%ebx, %esi
	subq	$8, %rsp
	.cfi_def_cfa_offset 32
	call	_ZN8opendnp33CRC7CalcCrcEPKhj@PLT
	movw	%ax, 0(%rbp,%rbx)
	addq	$8, %rsp
	.cfi_def_cfa_offset 24
	popq	%rbx
	.cfi_def_cfa_offset 16
	popq	%rbp
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE63:
	.size	_ZN8opendnp33CRC6AddCrcEPhj, .-_ZN8opendnp33CRC6AddCrcEPhj
	.align 2
	.p2align 4
	.globl	_ZN8opendnp33CRC12IsCorrectCRCEPKhj
	.type	_ZN8opendnp33CRC12IsCorrectCRCEPKhj, @function
_ZN8opendnp33CRC12IsCorrectCRCEPKhj:
.LFB64:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movl	%esi, %ebp
	pushq	%rbx
	.cfi_def_cfa_offset 24
	.cfi_offset 3, -24
	movl	%ebp, %esi
	movq	%rdi, %rbx
	addq	%rbp, %rbx
	subq	$8, %rsp
	.cfi_def_cfa_offset 32
	call	_ZN8opendnp33CRC7CalcCrcEPKhj@PLT
	movl	%eax, %r8d
	movzbl	1(%rbx), %eax
	sall	$8, %eax
	movl	%eax, %edx
	movzbl	(%rbx), %eax
	orl	%edx, %eax
	cmpw	%r8w, %ax
	sete	%al
	addq	$8, %rsp
	.cfi_def_cfa_offset 24
	popq	%rbx
	.cfi_def_cfa_offset 16
	popq	%rbp
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE64:
	.size	_ZN8opendnp33CRC12IsCorrectCRCEPKhj, .-_ZN8opendnp33CRC12IsCorrectCRCEPKhj
	.globl	_ZN8opendnp33CRC8crcTableE
	.data
	.align 32
	.type	_ZN8opendnp33CRC8crcTableE, @object
	.size	_ZN8opendnp33CRC8crcTableE, 512
_ZN8opendnp33CRC8crcTableE:
	.value	0
	.value	13918
	.value	27836
	.value	23266
	.value	-9864
	.value	-4314
	.value	-19004
	.value	-31846
	.value	-119
	.value	-13865
	.value	-27851
	.value	-23189
	.value	9969
	.value	4271
	.value	19021
	.value	31763
	.value	-19861
	.value	-31691
	.value	-8489
	.value	-6007
	.value	27411
	.value	23885
	.value	1967
	.value	12785
	.value	19938
	.value	31676
	.value	8542
	.value	5888
	.value	-27494
	.value	-23868
	.value	-2010
	.value	-12680
	.value	10671
	.value	8177
	.value	17683
	.value	29517
	.value	-3881
	.value	-14711
	.value	-25493
	.value	-21963
	.value	-10714
	.value	-8072
	.value	-17766
	.value	-29500
	.value	3934
	.value	14592
	.value	25570
	.value	21948
	.value	-25660
	.value	-21094
	.value	-2184
	.value	-16090
	.value	17084
	.value	29922
	.value	11776
	.value	6238
	.value	25677
	.value	21011
	.value	2289
	.value	16047
	.value	-17099
	.value	-29845
	.value	-11895
	.value	-6185
	.value	21342
	.value	25856
	.value	16354
	.value	2492
	.value	-30170
	.value	-17288
	.value	-6502
	.value	-12092
	.value	-21289
	.value	-25975
	.value	-16277
	.value	-2507
	.value	30127
	.value	17393
	.value	6419
	.value	12109
	.value	-7883
	.value	-10389
	.value	-29303
	.value	-17449
	.value	14413
	.value	3603
	.value	21745
	.value	25263
	.value	7868
	.value	10466
	.value	29184
	.value	17502
	.value	-14396
	.value	-3686
	.value	-21640
	.value	-25306
	.value	31473
	.value	19631
	.value	5709
	.value	8211
	.value	-23671
	.value	-27177
	.value	-12491
	.value	-1685
	.value	-31368
	.value	-19674
	.value	-5692
	.value	-8294
	.value	23552
	.value	27230
	.value	12476
	.value	1762
	.value	-14182
	.value	-316
	.value	-23514
	.value	-28040
	.value	4578
	.value	10172
	.value	32094
	.value	19200
	.value	14099
	.value	333
	.value	23471
	.value	28145
	.value	-4501
	.value	-10187
	.value	-32041
	.value	-19319
	.value	-22852
	.value	-28446
	.value	-13824
	.value	-930
	.value	32708
	.value	18842
	.value	4984
	.value	9510
	.value	22837
	.value	28523
	.value	13705
	.value	983
	.value	-32691
	.value	-18925
	.value	-4879
	.value	-9553
	.value	5335
	.value	8841
	.value	30827
	.value	20021
	.value	-12881
	.value	-1039
	.value	-24301
	.value	-26803
	.value	-5282
	.value	-8960
	.value	-30750
	.value	-20036
	.value	12838
	.value	1144
	.value	24218
	.value	26820
	.value	-28909
	.value	-18099
	.value	-7249
	.value	-10767
	.value	22123
	.value	24629
	.value	15063
	.value	3209
	.value	28826
	.value	18116
	.value	7206
	.value	10872
	.value	-22046
	.value	-24644
	.value	-15010
	.value	-3328
	.value	15736
	.value	2854
	.value	20932
	.value	26522
	.value	-7168
	.value	-11682
	.value	-30532
	.value	-16670
	.value	-15631
	.value	-2897
	.value	-20915
	.value	-26605
	.value	7049
	.value	11735
	.value	30517
	.value	16747
	.value	-2590
	.value	-15428
	.value	-26274
	.value	-20736
	.value	11418
	.value	6852
	.value	16422
	.value	30328
	.value	2667
	.value	15413
	.value	26327
	.value	20617
	.value	-11501
	.value	-6835
	.value	-16465
	.value	-30223
	.value	18313
	.value	29143
	.value	11061
	.value	7531
	.value	-24847
	.value	-22353
	.value	-3507
	.value	-15341
	.value	-18432
	.value	-29090
	.value	-11076
	.value	-7454
	.value	24952
	.value	22310
	.value	3524
	.value	15258
	.value	-9139
	.value	-5613
	.value	-20239
	.value	-31057
	.value	1333
	.value	13163
	.value	27017
	.value	24535
	.value	9156
	.value	5530
	.value	20344
	.value	31014
	.value	-1348
	.value	-13086
	.value	-27136
	.value	-24482
	.value	28198
	.value	22648
	.value	666
	.value	13508
	.value	-18594
	.value	-32512
	.value	-9246
	.value	-4676
	.value	-28241
	.value	-22543
	.value	-749
	.value	-13491
	.value	18647
	.value	32393
	.value	9323
	.value	4661
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
