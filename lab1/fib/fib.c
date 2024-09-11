#include<stdio.h>

int main() {
    int a, b, i, t, n;
    a = 0;
    b = 1;
    i = 1;
    
    // 从用户输入中读取 n 的值
    scanf("%d", &n);
    
    // 打印前两个数字
    printf("%d\n", a);
    printf("%d\n", b);
    
    // 打印后续的斐波那契数列
    while(i < n) {
        t = b;
        b = a + b;
        printf("%d\n", b);
        a = t;
        i = i + 1;
    }
    
    return 0;
}
