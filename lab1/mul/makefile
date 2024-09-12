# Makefile to test mul program with different N values

# 编译选项
CC = gcc
CFLAGS = -O2

# 程序名
TARGET = mul

# 测试不同的N值
NVALUES = 10 50 100 500 1000

# 编译生成可执行文件
$(TARGET): mul.c
	$(CC) $(CFLAGS) mul.c -o $(TARGET)

# 批量测试并生成结果
test: $(TARGET)
	@for N in $(NVALUES); do \
		echo "Testing with N = $$N"; \
		$(CC) mul.c -o $(TARGET)-$$N -DN=$$N; \
		./$(TARGET)-$$N > result-$$N.txt; \
	done

# 清除生成的文件
clean:
	rm -f $(TARGET) $(TARGET)-* result-*.txt
