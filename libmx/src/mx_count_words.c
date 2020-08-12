#include "libmx.h"

int mx_count_words(const char *str, char c) {
    if (!str) return -1;
    int count = 0;
    
    while (*str != '\0') {  
        if (*str == c) //  Нашли разделитель!
            while (*str == c && *str != '\0')
                str++;
        if (*str != c && *str != '\0') { //  Нашли слово!
            count++;
            while (*str != c && *str != '\0')
                str++;
        }
    }
    return count;   
}
