#include <unistd.h>

void mx_foreach(int *arr, int size, void (*f)(int));

void mx_printchar(char c) {
    write(1, &c, 1);
}

void mx_printint(int n) {
    int tens = 1;
    int flag = 1;

    if (n < 0) {
        flag = -1;
        mx_printchar('-');
    }
    for (int i = n; i / 10 != 0; i /= 10)
        tens *= 10;
    for (int i = n; tens != 0; i %= tens, tens /= 10)
        mx_printchar(i / tens * flag + '0');
}


int main () {
    int arr[] = {1, 2, 3, 4, 5};
    mx_foreach(arr, 5, mx_printint);
    return 0;
}
