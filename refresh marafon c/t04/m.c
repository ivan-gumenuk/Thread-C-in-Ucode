#include <stdio.h>

void mx_printint(int n);
void mx_printchar(char c);

int main() {
    mx_printint(0);
    mx_printchar('\n');
    mx_printint(-1);
    mx_printchar('\n');
    mx_printint(123);
    mx_printchar('\n');
    mx_printint(-2147483648);
    mx_printchar('\n');
    mx_printint(2147483647);
    mx_printchar('\n');
    return 0;
}
