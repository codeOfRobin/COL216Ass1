	.section	__TEXT,__text,regular,pure_instructions
	.globl	_initMat1
	.align	4, 0x90
_initMat1:                              ## @initMat1
	.cfi_startproc
## BB#0:
	pushq	%rbp
Ltmp2:
	.cfi_def_cfa_offset 16
Ltmp3:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
Ltmp4:
	.cfi_def_cfa_register %rbp
	movl	$0, -4(%rbp)
LBB0_1:                                 ## =>This Loop Header: Depth=1
                                        ##     Child Loop BB0_3 Depth 2
	cmpl	$128, -4(%rbp)
	jge	LBB0_8
## BB#2:                                ##   in Loop: Header=BB0_1 Depth=1
	movl	$0, -8(%rbp)
LBB0_3:                                 ##   Parent Loop BB0_1 Depth=1
                                        ## =>  This Inner Loop Header: Depth=2
	cmpl	$128, -8(%rbp)
	jge	LBB0_6
## BB#4:                                ##   in Loop: Header=BB0_3 Depth=2
	movq	_a@GOTPCREL(%rip), %rax
	movl	$17, %ecx
	movl	-4(%rbp), %edx
	addl	-8(%rbp), %edx
	movq	%rax, -16(%rbp)         ## 8-byte Spill
	movl	%edx, %eax
	cltd
	idivl	%ecx
	movslq	-8(%rbp), %rsi
	movslq	-4(%rbp), %rdi
	shlq	$9, %rdi
	movq	-16(%rbp), %r8          ## 8-byte Reload
	addq	%rdi, %r8
	movl	%edx, (%r8,%rsi,4)
## BB#5:                                ##   in Loop: Header=BB0_3 Depth=2
	movl	-8(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -8(%rbp)
	jmp	LBB0_3
LBB0_6:                                 ##   in Loop: Header=BB0_1 Depth=1
	jmp	LBB0_7
LBB0_7:                                 ##   in Loop: Header=BB0_1 Depth=1
	movl	-4(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -4(%rbp)
	jmp	LBB0_1
LBB0_8:
	popq	%rbp
	retq
	.cfi_endproc

	.globl	_initMat2
	.align	4, 0x90
_initMat2:                              ## @initMat2
	.cfi_startproc
## BB#0:
	pushq	%rbp
Ltmp7:
	.cfi_def_cfa_offset 16
Ltmp8:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
Ltmp9:
	.cfi_def_cfa_register %rbp
	movl	$0, -4(%rbp)
LBB1_1:                                 ## =>This Loop Header: Depth=1
                                        ##     Child Loop BB1_3 Depth 2
	cmpl	$128, -4(%rbp)
	jge	LBB1_8
## BB#2:                                ##   in Loop: Header=BB1_1 Depth=1
	movl	$0, -8(%rbp)
LBB1_3:                                 ##   Parent Loop BB1_1 Depth=1
                                        ## =>  This Inner Loop Header: Depth=2
	cmpl	$128, -8(%rbp)
	jge	LBB1_6
## BB#4:                                ##   in Loop: Header=BB1_3 Depth=2
	movq	_b@GOTPCREL(%rip), %rax
	movl	$8, %ecx
	movl	$6, %edx
	movl	-4(%rbp), %esi
	subl	-8(%rbp), %esi
	addl	$64, %esi
	movq	%rax, -16(%rbp)         ## 8-byte Spill
	movl	%esi, %eax
	movl	%edx, -20(%rbp)         ## 4-byte Spill
	cltd
	movl	-20(%rbp), %esi         ## 4-byte Reload
	idivl	%esi
	movl	-4(%rbp), %eax
	imull	-8(%rbp), %eax
	movl	%edx, -24(%rbp)         ## 4-byte Spill
	cltd
	idivl	%ecx
	movl	-24(%rbp), %eax         ## 4-byte Reload
	addl	%edx, %eax
	movslq	-8(%rbp), %rdi
	movslq	-4(%rbp), %r8
	shlq	$9, %r8
	movq	-16(%rbp), %r9          ## 8-byte Reload
	addq	%r8, %r9
	movl	%eax, (%r9,%rdi,4)
## BB#5:                                ##   in Loop: Header=BB1_3 Depth=2
	movl	-8(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -8(%rbp)
	jmp	LBB1_3
LBB1_6:                                 ##   in Loop: Header=BB1_1 Depth=1
	jmp	LBB1_7
LBB1_7:                                 ##   in Loop: Header=BB1_1 Depth=1
	movl	-4(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -4(%rbp)
	jmp	LBB1_1
LBB1_8:
	popq	%rbp
	retq
	.cfi_endproc

	.globl	_matMul
	.align	4, 0x90
_matMul:                                ## @matMul
	.cfi_startproc
## BB#0:
	pushq	%rbp
Ltmp12:
	.cfi_def_cfa_offset 16
Ltmp13:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
Ltmp14:
	.cfi_def_cfa_register %rbp
	movl	$0, -4(%rbp)
LBB2_1:                                 ## =>This Loop Header: Depth=1
                                        ##     Child Loop BB2_3 Depth 2
                                        ##       Child Loop BB2_5 Depth 3
	cmpl	$128, -4(%rbp)
	jge	LBB2_12
## BB#2:                                ##   in Loop: Header=BB2_1 Depth=1
	movl	$0, -8(%rbp)
LBB2_3:                                 ##   Parent Loop BB2_1 Depth=1
                                        ## =>  This Loop Header: Depth=2
                                        ##       Child Loop BB2_5 Depth 3
	cmpl	$128, -8(%rbp)
	jge	LBB2_10
## BB#4:                                ##   in Loop: Header=BB2_3 Depth=2
	movl	$0, -16(%rbp)
	movl	$0, -12(%rbp)
LBB2_5:                                 ##   Parent Loop BB2_1 Depth=1
                                        ##     Parent Loop BB2_3 Depth=2
                                        ## =>    This Inner Loop Header: Depth=3
	cmpl	$128, -12(%rbp)
	jge	LBB2_8
## BB#6:                                ##   in Loop: Header=BB2_5 Depth=3
	movq	_b@GOTPCREL(%rip), %rax
	movq	_a@GOTPCREL(%rip), %rcx
	movslq	-12(%rbp), %rdx
	movslq	-4(%rbp), %rsi
	shlq	$9, %rsi
	addq	%rsi, %rcx
	movl	(%rcx,%rdx,4), %edi
	movslq	-8(%rbp), %rcx
	movslq	-12(%rbp), %rdx
	shlq	$9, %rdx
	addq	%rdx, %rax
	imull	(%rax,%rcx,4), %edi
	movl	-16(%rbp), %r8d
	addl	%edi, %r8d
	movl	%r8d, -16(%rbp)
## BB#7:                                ##   in Loop: Header=BB2_5 Depth=3
	movl	-12(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -12(%rbp)
	jmp	LBB2_5
LBB2_8:                                 ##   in Loop: Header=BB2_3 Depth=2
	movq	_c@GOTPCREL(%rip), %rax
	movl	-16(%rbp), %ecx
	movslq	-8(%rbp), %rdx
	movslq	-4(%rbp), %rsi
	shlq	$9, %rsi
	addq	%rsi, %rax
	movl	%ecx, (%rax,%rdx,4)
## BB#9:                                ##   in Loop: Header=BB2_3 Depth=2
	movl	-8(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -8(%rbp)
	jmp	LBB2_3
LBB2_10:                                ##   in Loop: Header=BB2_1 Depth=1
	jmp	LBB2_11
LBB2_11:                                ##   in Loop: Header=BB2_1 Depth=1
	movl	-4(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -4(%rbp)
	jmp	LBB2_1
LBB2_12:
	popq	%rbp
	retq
	.cfi_endproc

	.globl	_matSum
	.align	4, 0x90
_matSum:                                ## @matSum
	.cfi_startproc
## BB#0:
	pushq	%rbp
Ltmp17:
	.cfi_def_cfa_offset 16
Ltmp18:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
Ltmp19:
	.cfi_def_cfa_register %rbp
	movl	$0, -12(%rbp)
	movl	$0, -4(%rbp)
LBB3_1:                                 ## =>This Loop Header: Depth=1
                                        ##     Child Loop BB3_3 Depth 2
	cmpl	$128, -4(%rbp)
	jge	LBB3_8
## BB#2:                                ##   in Loop: Header=BB3_1 Depth=1
	movl	$0, -8(%rbp)
LBB3_3:                                 ##   Parent Loop BB3_1 Depth=1
                                        ## =>  This Inner Loop Header: Depth=2
	cmpl	$128, -8(%rbp)
	jge	LBB3_6
## BB#4:                                ##   in Loop: Header=BB3_3 Depth=2
	movq	_c@GOTPCREL(%rip), %rax
	movslq	-8(%rbp), %rcx
	movslq	-4(%rbp), %rdx
	shlq	$9, %rdx
	addq	%rdx, %rax
	movl	(%rax,%rcx,4), %esi
	movl	-12(%rbp), %edi
	addl	%esi, %edi
	movl	%edi, -12(%rbp)
## BB#5:                                ##   in Loop: Header=BB3_3 Depth=2
	movl	-8(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -8(%rbp)
	jmp	LBB3_3
LBB3_6:                                 ##   in Loop: Header=BB3_1 Depth=1
	jmp	LBB3_7
LBB3_7:                                 ##   in Loop: Header=BB3_1 Depth=1
	movl	-4(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -4(%rbp)
	jmp	LBB3_1
LBB3_8:
	movl	-12(%rbp), %eax
	popq	%rbp
	retq
	.cfi_endproc

	.globl	_main
	.align	4, 0x90
_main:                                  ## @main
	.cfi_startproc
## BB#0:
	pushq	%rbp
Ltmp22:
	.cfi_def_cfa_offset 16
Ltmp23:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
Ltmp24:
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	callq	_initMat1
	callq	_initMat2
	callq	_matMul
	callq	_matSum
	leaq	L_.str(%rip), %rdi
	movl	%eax, -4(%rbp)
	movl	-4(%rbp), %esi
	movb	$0, %al
	callq	_printf
	movl	%eax, -8(%rbp)          ## 4-byte Spill
	addq	$16, %rsp
	popq	%rbp
	retq
	.cfi_endproc

	.comm	_a,65536,4              ## @a
	.comm	_b,65536,4              ## @b
	.comm	_c,65536,4              ## @c
	.section	__TEXT,__cstring,cstring_literals
L_.str:                                 ## @.str
	.asciz	"Sum is %d\n"


.subsections_via_symbols
