#include "libmx.h"

static int get_num_str(char *island_tmp);

int **mx_create_matrix(char **top, char **str, int size) {
    int i = 0;
    int j = 0;
    int **matrix = mx_create_zero_matrix(size);

    for (int line = 1; str[line] != NULL; line++) {
        i = 0;
        j = 0;
        while (i < size) {
            if (mx_memcmp(str[line], top[i], mx_strlen(top[i])) == 0)
                break;
            i++;
        }
        char *word2 = mx_memchr(str[line], '-', mx_strlen(str[line]));
        while (j < size) {
            if (mx_memcmp(word2 + 1, top[j], mx_strlen(top[j])) == 0)
                break;
            j++;
        }
        matrix[i][j] = get_num_str(str[line]);
        matrix[j][i] = matrix[i][j];
    }
    return matrix;
}

static int get_num_str(char *island_tmp) {
    int ind = mx_get_char_index(island_tmp, ',') + 1;
    return mx_atoi(&island_tmp[ind]);
}
