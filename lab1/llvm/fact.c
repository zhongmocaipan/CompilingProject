#include <stdio.h>

// 阶乘函数 fact
int fact(int n) {
    if (n == 0) {
        return 1;  // 基础情况：0! = 1
    } else {
        return n * fact(n - 1);  // 递归调用：n! = n * (n-1)!
    }
}

int main() {
    int num = 5;  // 可以更改这个数字来计算其他数的阶乘
    int result = fact(num);  // 调用 fact 函数
    printf("The factorial of %d is: %d\n", num, result);  // 输出结果
    return 0;
}
