	.text
	.file	"fact.c"
	.globl	fact                            # -- Begin function fact
	.p2align	4, 0x90
	.type	fact,@function
fact:                                   # @fact
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	pushq	%rbx
	pushq	%rax
	.cfi_offset %rbx, -24
	movl	%edi, -12(%rbp)
	cmpl	$0, -12(%rbp)
	jne	.LBB0_2
# %bb.1:
	movl	$1, -16(%rbp)
	jmp	.LBB0_3
.LBB0_2:
	movl	-12(%rbp), %ebx
	movl	-12(%rbp), %edi
	subl	$1, %edi
	callq	fact
	imull	%eax, %ebx
	movl	%ebx, -16(%rbp)
.LBB0_3:
	movl	-16(%rbp), %eax
	addq	$8, %rsp
	popq	%rbx
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end0:
	.size	fact, .Lfunc_end0-fact
	.cfi_endproc
                                        # -- End function
	.globl	main                            # -- Begin function main
	.p2align	4, 0x90
	.type	main,@function
main:                                   # @main
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movl	$0, -12(%rbp)
	movl	$5, -4(%rbp)
	movl	-4(%rbp), %edi
	callq	fact
	movl	%eax, -8(%rbp)
	movl	-4(%rbp), %esi
	movl	-8(%rbp), %edx
	movabsq	$.L.str, %rdi
	movb	$0, %al
	callq	printf@PLT
	xorl	%eax, %eax
	addq	$16, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end1:
	.size	main, .Lfunc_end1-main
	.cfi_endproc
                                        # -- End function
	.type	.L.str,@object                  # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"The factorial of %d is: %d\n"
	.size	.L.str, 28

	.ident	"Ubuntu clang version 14.0.0-1ubuntu1.1"
	.section	".note.GNU-stack","",@progbits
