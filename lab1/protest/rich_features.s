	.file	"rich_features.c"
	.text
	.globl	LIMIT
	.section	.rodata
	.align 4
	.type	LIMIT, @object
	.size	LIMIT, 4
LIMIT:
	.long	10
	.globl	global_var
	.data
	.align 4
	.type	global_var, @object
	.size	global_var, 4
global_var:
	.long	20
	.section	.rodata
.LC0:
	.string	"Enter a number: "
.LC1:
	.string	"%d"
	.align 8
.LC2:
	.string	"Input should be between 0 and %d.\n"
	.text
	.globl	main
	.type	main, @function
main:
.LFB0:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	movl	$0, -20(%rbp)
	leaq	.LC0(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
	leaq	-24(%rbp), %rax
	movq	%rax, %rsi
	leaq	.LC1(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	__isoc99_scanf@PLT
	movl	-24(%rbp), %eax
	testl	%eax, %eax
	js	.L2
	movl	-24(%rbp), %eax
	movl	$10, %edx
	cmpl	%edx, %eax
	jle	.L3
.L2:
	movl	$10, %eax
	movl	%eax, %esi
	leaq	.LC2(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
	movl	$-1, %eax
	jmp	.L7
.L3:
	movl	$1, -16(%rbp)
	jmp	.L5
.L6:
	movl	-16(%rbp), %eax
	addl	%eax, -20(%rbp)
	addl	$1, -16(%rbp)
.L5:
	movl	-24(%rbp), %eax
	cmpl	%eax, -16(%rbp)
	jle	.L6
	movl	-24(%rbp), %eax
	movl	%eax, %edi
	call	factorial
	movl	%eax, -12(%rbp)
	movl	-20(%rbp), %edx
	movl	-12(%rbp), %eax
	movl	%edx, %esi
	movl	%eax, %edi
	call	print_results
	movl	$0, %eax
.L7:
	movq	-8(%rbp), %rdx
	subq	%fs:40, %rdx
	je	.L8
	call	__stack_chk_fail@PLT
.L8:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE0:
	.size	main, .-main
	.globl	factorial
	.type	factorial, @function
factorial:
.LFB1:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movl	%edi, -4(%rbp)
	cmpl	$0, -4(%rbp)
	je	.L10
	cmpl	$1, -4(%rbp)
	jne	.L11
.L10:
	movl	$1, %eax
	jmp	.L12
.L11:
	movl	-4(%rbp), %eax
	subl	$1, %eax
	movl	%eax, %edi
	call	factorial
	imull	-4(%rbp), %eax
.L12:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1:
	.size	factorial, .-factorial
	.section	.rodata
.LC3:
	.string	"Factorial: %d\n"
.LC4:
	.string	"Sum of numbers: %d\n"
	.text
	.globl	print_results
	.type	print_results, @function
print_results:
.LFB2:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movl	%edi, -4(%rbp)
	movl	%esi, -8(%rbp)
	movl	-4(%rbp), %eax
	movl	%eax, %esi
	leaq	.LC3(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
	movl	-8(%rbp), %eax
	movl	%eax, %esi
	leaq	.LC4(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2:
	.size	print_results, .-print_results
	.ident	"GCC: (Ubuntu 11.4.0-1ubuntu1~22.04) 11.4.0"
	.section	.note.GNU-stack,"",@progbits
	.section	.note.gnu.property,"a"
	.align 8
	.long	1f - 0f
	.long	4f - 1f
	.long	5
0:
	.string	"GNU"
1:
	.align 8
	.long	0xc0000002
	.long	3f - 2f
2:
	.long	0x3
3:
	.align 8
4:
