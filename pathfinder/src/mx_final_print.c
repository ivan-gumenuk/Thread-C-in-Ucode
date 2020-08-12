#include "libmx.h"

static void one_print(t_tool *d, int *path, int i, int j);
static char **file_to_print(t_tool *d, int **path, int num);

void mx_final_print(t_tool *d) {
    int num;
    int **path;
    
    for (int i = 0; i < d->size; i++){
        for (int j = i + 1; j < d->size; j++) {
            num = mx_count_short_ways(d, i, j);
            path = mx_int_route(d, num, i, j);
            for (int c = 0; c < num; c++) {
                if (c > 0 && mx_memcmp(path[c - 1], path[c], d->size) == 0)
                    break;
                d->file = file_to_print(d, path, c);
                one_print(d, path[c], i, j);
                mx_del_strarr(&d->file);
            }
        }
    }       
}

static void one_print(t_tool *d, int *path, int i, int j) {
    mx_printstr("========================");
    mx_printstr("================\nPath: ");
    mx_printstr(d->top[i]);
    mx_printstr(" -> ");
    mx_printstr(d->top[j]);
    mx_printstr("\nRoute: ");
    mx_print_strarr(d->file, " -> ");
    mx_printstr("Distance: ");
    if(mx_arr_size(d->file) == 2)
        mx_printint(d->dist[i][j]);
    else 
        mx_print_distance(d, path, i, j);
    mx_printstr("\n====================");
    mx_printstr("====================\n");
}

static char **file_to_print(t_tool *d, int **path, int num) {
    char **nedlee;
    int i = 0;

    nedlee = malloc(sizeof(char *) * (d->size + 1));
    while(path[num][i] != -1)
        i++;
    for (int k = i - 1, c = 0; k >= 0; k--, c++)
        nedlee[c] = mx_strdup(d->top[path[num][k]]);

    return nedlee;
}
