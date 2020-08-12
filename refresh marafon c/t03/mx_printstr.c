#include <unistd.h>

int mx_strlen(const char *s); 

void mx_printstr(const char *s) {
    int a = mx_strlen(s);
    for (int i = 0; i < a; i++) 
        write(1, &s[i], 1);
}
