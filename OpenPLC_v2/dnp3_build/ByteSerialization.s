	.file	"ByteSerialization.cpp"
	.text
	.section	.text.startup,"ax",@progbits
	.p2align 4
	.type	_GLOBAL__sub_I_ByteSerialization.cpp, @function
_GLOBAL__sub_I_ByteSerialization.cpp:
.LFB39:
	.cfi_startproc
	endbr64
	subq	$8, %rsp
	.cfi_def_cfa_offset 16
	call	_ZN7openpal8MaxValueIhEET_v@PLT
	movq	_ZN7openpal11UInt8Simple3MaxE@GOTPCREL(%rip), %rdx
	movb	%al, (%rdx)
	call	_ZN7openpal8MinValueIhEET_v@PLT
	movq	_ZN7openpal11UInt8Simple3MinE@GOTPCREL(%rip), %rdx
	movb	%al, (%rdx)
	addq	$8, %rsp
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE39:
	.size	_GLOBAL__sub_I_ByteSerialization.cpp, .-_GLOBAL__sub_I_ByteSerialization.cpp
	.section	.init_array,"aw"
	.align 8
	.quad	_GLOBAL__sub_I_ByteSerialization.cpp
	.globl	_ZN7openpal11UInt8Simple3MinE
	.bss
	.type	_ZN7openpal11UInt8Simple3MinE, @object
	.size	_ZN7openpal11UInt8Simple3MinE, 1
_ZN7openpal11UInt8Simple3MinE:
	.zero	1
	.globl	_ZN7openpal11UInt8Simple3MaxE
	.type	_ZN7openpal11UInt8Simple3MaxE, @object
	.size	_ZN7openpal11UInt8Simple3MaxE, 1
_ZN7openpal11UInt8Simple3MaxE:
	.zero	1
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
