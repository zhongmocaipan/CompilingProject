	.text
	.file	"factorial.ll"
	.globl	factorial                       # -- Begin function factorial
	.p2align	4, 0x90
	.type	factorial,@function
factorial:                              # @factorial
	.cfi_startproc
# %bb.0:                                # %entry
	movl	%edi, -4(%rsp)
	movl	$1, -12(%rsp)
	movl	$2, -8(%rsp)
	.p2align	4, 0x90
.LBB0_1:                                # %loop
                                        # =>This Inner Loop Header: Depth=1
	movl	-8(%rsp), %eax
	cmpl	-4(%rsp), %eax
	jg	.LBB0_3
# %bb.2:                                # %body
                                        #   in Loop: Header=BB0_1 Depth=1
	movl	-12(%rsp), %ecx
	imull	%eax, %ecx
	movl	%ecx, -12(%rsp)
	incl	%eax
	movl	%eax, -8(%rsp)
	jmp	.LBB0_1
.LBB0_3:                                # %end
	movl	-12(%rsp), %eax
	retq
.Lfunc_end0:
	.size	factorial, .Lfunc_end0-factorial
	.cfi_endproc
                                        # -- End function
	.globl	main                            # -- Begin function main
	.p2align	4, 0x90
	.type	main,@function
main:                                   # @main
	.cfi_startproc
# %bb.0:                                # %entry
	pushq	%rax
	.cfi_def_cfa_offset 16
	movl	$5, 4(%rsp)
	movl	$5, %edi
	callq	factorial@PLT
	popq	%rcx
	.cfi_def_cfa_offset 8
	retq
.Lfunc_end1:
	.size	main, .Lfunc_end1-main
	.cfi_endproc
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
