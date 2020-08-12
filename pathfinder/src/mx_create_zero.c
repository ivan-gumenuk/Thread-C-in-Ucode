#include "libmx.h"

int **mx_create_zero_matrix(int size) {
    int INF = 999999999;
    int **res = (int**) malloc(sizeof(int*) * size);

    for(int i = 0; i < size; i++) {
        res[i] = (int*) malloc(sizeof(int) * size);
        for(int j = 0; j < size; j++)
            res[i][j] =  INF;
    }
    for(int i = 0; i < size; i++)
        res[i][i] = 0;
    return res;
}
