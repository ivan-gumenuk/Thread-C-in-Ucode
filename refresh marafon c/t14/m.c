#include <stdio.h>

int mx_binary_search(char **arr, int size, const char *s, int *count);

int main() {
    char *arr[] = {"222", "Abcd", "aBc", "ab", "az", "z"};
    int count = 0;
    printf ("Case 1:\nPosition is %d\n", mx_binary_search(arr, 6, "ab", &count));
    printf ("Count is %d\n", count);
    count = 0;
    printf ("Case 2:\nPosition is %d\n", mx_binary_search(arr, 6, "aBc", &count));
    printf ("Count is %d\n", count);
    count = 0;
    printf ("Case 3:\nPosition is %d\n", mx_binary_search(arr, 6, "z", &count));
    printf ("Count is %d\n", count);
    count = 0;
    printf ("Case 4:\nPosition is %d\n", mx_binary_search(arr, 6, "111", &count));
    printf ("Count is %d\n", count);
    return 0;
}
