#include <stdio.h>

#ifndef N
#define N 1000  
#endif

int main() {
    int i, n;
    long long factorial[N+1];  // 用于存储阶乘结果的数组

    n = N;  
    factorial[0] = 1;  // 0! 定义为 1

    for (i = 1; i <= n; i++) {
        factorial[i] = factorial[i - 1] * i;  // 使用前一个阶乘值计算当前阶乘
    }

    // 输出 n 和结果
    printf("%d! = %lld\n", n, factorial[n]);

    return 0;
}
