.PHONY: pre, lexer, ast-gcc, ast-llvm, cfg, ir-gcc, ir-llvm, asm, obj, exe, antiobj, antiexe, clean, clean-all

# 预处理阶段
pre:
	gcc fib.c -E -o fib.i

# 词法分析阶段，使用 Clang 查看词法 token
lexer:
	clang -E -Xclang -dump-tokens fib.c

# 生成 AST 树，使用 GCC 生成原始抽象语法树
ast-gcc:
	gcc -fdump-tree-original-raw fib.c

# 生成 LLVM AST 树
ast-llvm:
	clang -E -Xclang -ast-dump fib.c

# 生成 CFG 文件，可以用 Graphviz 可视化
cfg:
	gcc -O0 -fdump-tree-all-graph fib.c

# 生成 GCC 的 RTL 文件
ir-gcc:
	gcc -O0 -fdump-rtl-all-graph fib.c

# 生成 LLVM IR
ir-llvm:
	clang -S -emit-llvm fib.c

# 生成汇编代码 (.S)
asm:
	gcc -O0 -o fib.S -S -masm=att fib.i

# 生成目标文件 (.o)
obj:
	gcc -O0 -c -o fib.o fib.S

# 反汇编目标文件，查看机器代码
antiobj:
	objdump -d fib.o > fib-anti-obj.S
	nm fib.o > fib-nm-obj.txt

# 链接生成可执行文件
exe:
	gcc -O0 -o fib fib.o

# 反汇编可执行文件
antiexe:
	objdump -d fib > fib-anti-exe.S
	nm fib > fib-nm-exe.txt

# 清理生成的临时文件
clean:
	rm -rf *.c.*

# 清理所有生成的文件
clean-all:
	rm -rf *.c.* *.o *.S *.dot *.out *.txt *.ll *.i fib
