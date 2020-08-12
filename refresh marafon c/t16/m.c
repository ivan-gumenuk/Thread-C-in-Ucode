#include <stdio.h>
#include <stdlib.h>

char *mx_strdup(const char *str);

int main() {
    char *s = "Hello!";
    char *d = mx_strdup(s);
    printf("%s\n", d);
    free(d);
    return 0;
}
