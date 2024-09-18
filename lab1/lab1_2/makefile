# Makefile for compiling SysY files

# Path to SysY compiler
SYSY_COMPILER = /mnt/d/2024fall/编译/lab/lab1/CompilingProject/flex-bison-example/SysY/bin

# Source file
SRC = factorial.sy

# Output file
OUT = factorial

# Targets and rules
all: $(OUT)

$(OUT): $(SRC)
	$(SYSY_COMPILER) $(SRC) -o $(OUT)

clean:
	rm -f $(OUT)

.PHONY: all clean
