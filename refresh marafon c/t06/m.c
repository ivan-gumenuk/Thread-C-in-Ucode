#include <stdio.h>
int mx_sqrt(int x);

int main() {
    printf("Square root of 0 is %d\n", mx_sqrt(0));
    printf("Square root of 1 is %d\n", mx_sqrt(1));
    printf("Square root of 3 is %d\n", mx_sqrt(3));
    printf("Square root of 4 is %d\n", mx_sqrt(4));
    printf("Square root of 193600 is %d\n", mx_sqrt(-193600));
    printf("Square root of max_int(2147483647) is %d\n", mx_sqrt(2147483647));
    printf("Square root of max_true_int(2147395600) is %d\n", mx_sqrt(2147395600));
    return 0;
}
