#include "libmx.h"

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
