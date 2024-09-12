#include <stdio.h>

// 宏定义不同的数据量
#ifndef N
#define N 1000  // 默认数据量
#endif

int main() {
    int i, n, f;
    n = N;  // 使用宏定义的 N 值
    i = 2;
    f = 1;
    while (i <= n) {
        f = f * i;
        i = i + 1;
    }
    printf("n = %d, factorial = %d\n", n, f);  // 输出 n 和结果
    return 0;
}
