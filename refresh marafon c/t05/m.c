#include <stdio.h>

double mx_pow(double n, unsigned int pow);

int main() {
    printf("Case 1 -> %f\n", mx_pow(3, -3));
    printf("Case 2 -> %f\n", mx_pow(2.5, 3));
    printf("Case 3 -> %f\n", mx_pow(2, 0));
    printf("Case 4 -> %f\n", mx_pow(0, 0));
}
