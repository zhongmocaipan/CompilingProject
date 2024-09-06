#include <stdio.h>   // 头文件

#define MAX_VAL 100   // 宏定义
const int LIMIT = 10; // 常量定义

// 全局变量
int global_var = 20;

// 函数声明
int factorial(int n);
void print_results(int fact, int sum);

// 主函数
int main() {
    int n, sum = 0;
    
    printf("Enter a number: ");
    scanf("%d", &n);

    if (n < 0 || n > LIMIT) {
        printf("Input should be between 0 and %d.\n", LIMIT);
        return -1;
    }

    for (int i = 1; i <= n; i++) {
        sum += i;
    }

    int fact = factorial(n);
    
    print_results(fact, sum);
    
    return 0;
}

// 计算阶乘的函数
int factorial(int n) {
    if (n == 0 || n == 1) {
        return 1;
    }
    return n * factorial(n - 1);
}

// 打印结果的函数
void print_results(int fact, int sum) {
    printf("Factorial: %d\n", fact);
    printf("Sum of numbers: %d\n", sum);
}
