#include <stdio.h>
int mx_strcmp(const char *s1, const char *s2);

int main() {
char s1[] = "hello2";
char s2[] = "hello1";
int c = mx_strcmp(s1, s2);
char s3[] = "hello1";
char s4[] = "hello2";
int c1 = mx_strcmp(s3, s4);
char s5[] = "hello";
char s6[] = "hello";
int c3 = mx_strcmp(s5, s6);
printf ("Difference case1 is %d\n", c);
printf ("Difference case2 is %d\n", c1);
printf ("Difference case3 is %d\n", c3);
}
