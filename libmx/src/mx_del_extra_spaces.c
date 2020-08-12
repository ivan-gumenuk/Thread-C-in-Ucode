#include "libmx.h"

static bool mx_isspace(char c) {
    if (c == '\t' || c == '\n' || c == '\v' 
    || c == '\f' || c == '\r' || c == ' ')
        return 1;
    else return 0;
}

char *mx_del_extra_spaces(const char *str) {
    char *res;
    char *s = mx_strnew(mx_strlen(str));
    int k = 0;
    for (int i = 0; str[i]; s[k++] = str[i++])
        if (mx_isspace(str[i])) {
            while (mx_isspace(str[++i]));
            s[k++] = ' ';
        }
    res = mx_strtrim(s);
    free(s);
    return res;
}
