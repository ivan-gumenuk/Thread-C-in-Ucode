#include <stdio.h>

int mx_factorial_iter(int n);

int main() {
    printf("Case1 factorial = %d\n", mx_factorial_iter(0));
    printf("Case2 factorial = %d\n", mx_factorial_iter(1));
    printf("Case3 factorial = %d\n", mx_factorial_iter(2));
    printf("Case4 factorial = %d\n", mx_factorial_iter(5));
    printf("Case5 factorial = %d\n", mx_factorial_iter(12));
    printf("Case5 factorial = %d\n", mx_factorial_iter(13));
    printf("Case5 factorial = %d\n", mx_factorial_iter(-5));
    return 0;
}
