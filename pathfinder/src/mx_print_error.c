#include "libmx.h"

void mx_print_error(enum e_eror errors, char **a, int i) {
    if (errors == INVALID_NUMBER) {
        mx_printerr("usage: ./pathfinder [filename]\n");
    } else if (errors == NOT_EXIST) {
        mx_printerr("error: file ");
        mx_printerr(a[1]);
        mx_printerr(" doesn't exist\n");
    } else if (errors == EMPTY) {
        mx_printerr("error: file ");
        mx_printerr(a[1]);
        mx_printerr(" is empty\n");
    } else if (errors == LINE1_INVALID) {
            mx_printerr("error: line 1 isn't valid\n");
    } else if (errors == LINE_INVALID) {
        mx_printerr("error: line ");
        mx_printerr(mx_itoa(i + 1));
        mx_printerr(" isn't valid\n");
    } else if (errors == ISLANDS_INVALID)
        mx_printerr("error: invalid number of islands\n");
    exit(1);
}
