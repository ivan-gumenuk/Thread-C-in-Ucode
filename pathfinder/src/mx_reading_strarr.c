#include "libmx.h"

static void first_word(char *str, char **result, int *num);
static void second_word(char *str, char **result, int *num);

char **mx_read_arguments(char **str, int size) {
    char **result = malloc((size + 1)*sizeof(char*));
    result[size] = NULL;
    int line = 0;
    int num = 0;

    if (size < 2)
        mx_print_error(ISLANDS_INVALID, NULL, 0);
    for (; line < size; line++)
        result[line] = "";
    for (line = 1; str[line] != NULL; line++)
        if (mx_line_check(str[line], line)) {
            if (num > size)
                mx_print_error(ISLANDS_INVALID, NULL, 0);
            first_word(str[line], result, &num);
            if (num > size)
                mx_print_error(ISLANDS_INVALID, NULL, 0);
            second_word(str[line], result, &num);
        }
    if (num != size)
        mx_print_error(ISLANDS_INVALID, NULL, 0);
    return result;
}

static void first_word(char *str, char **result, int *num) {
    int end = mx_get_char_index(str, '-');
    char *res = mx_strndup(str, end);
    int index = 0;

    while (index < *num && result[index] != NULL) {
        if (mx_strcmp(result[index], res) == 0) {
            free(res);
            res = NULL;
            break;
        }
        index++;
    }    
    if (res != NULL) {
        result[*num] = res;
        (*num)++;
    }
}

static void second_word(char *str, char **result, int *num) {
    int start = mx_get_char_index(str, '-');
    int end = mx_get_char_index(str, ',');
    char *res = mx_strndup(&str[start + 1], end - start - 1);
    int index = 0;

    while (index < *num && result[index] != NULL) {
        if (mx_strcmp(result[index], res) == 0) {
            free(res);
            res = NULL;
            break;
        }
        index++;
    }
    if (res != NULL) {
        result[*num] = res;
        (*num)++;
    }
}
