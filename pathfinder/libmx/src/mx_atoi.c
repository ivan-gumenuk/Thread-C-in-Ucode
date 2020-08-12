#include "libmx.h" 

bool mx_isalpha(int c) {
	if ((c >= 65 && c <= 122) || (c >= 97 && c <= 122))
		return true;
	else
		return false;
}

bool mx_isdigit(int c) {
    if (c >= 48 && c <= 57)
        return true;
    else
        return false;
}

bool mx_isspace(char c) {
    if (c == '\t' || c == '\n' || c == '\v' 
    || c == '\f' || c == '\r' || c == ' ')
        return 1;
    else return 0;
}

int mx_atoi(const char *str) {
    int i = 0;
    int n = 0;
    int sign = 1;

    while (mx_isspace(str[i]))
        i++;
    if (str[i] == '-' || str[i] == '+') {
        if (str[i] == '-')
            sign = -1;
        i++;
    }
    while (mx_isdigit(str[i])) { 
        n = n * 10 + (str[i] - 48) * sign;
        i++;
    }
    return n;
}
