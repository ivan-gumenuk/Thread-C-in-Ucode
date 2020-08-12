#include <stdio.h>

char *mx_strcpy(char *dst, const char *src);

int main() {
  char s1[] = "1234567";
  char s2[10];
  char *s = mx_strcpy(s2, s1);
  printf("Our string is -> %s\n", s);
  return 0;
}
