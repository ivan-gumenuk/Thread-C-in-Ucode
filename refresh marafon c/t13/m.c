#include <stdio.h>

int mx_bubble_sort(char **arr, int size);

int main() {
    char *arr[] = {"abc", "xyz", "ghi", "def"};
    printf("Number of case1 swap operations is %d\n", mx_bubble_sort(arr, 4));
    char *arr2[] = {"444", "222", "333", "111"};
    printf("Number of case2 swap operations is %d\n", mx_bubble_sort(arr2, 4));
    char *arr3[] = {"111", "222", "333", "444"};
    printf("Number of case3 swap operations is %d\n", mx_bubble_sort(arr3, 4));
}
