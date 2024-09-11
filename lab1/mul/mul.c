#include <stdio.h>
#define pi 3.14
int main() {
    int i, n, f;
    scanf("%d", &n);  // 使用 scanf 代替 cin
    i = 2;
    f = 1;
    while (i <= n) {
        f = f * i;
        i = i + 1;
    }
    printf("%d\n", f);  // 使用 printf 代替 cout
}
