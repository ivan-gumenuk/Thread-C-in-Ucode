#include "libmx.h"

int mx_read_line(char **lineptr, int buf_size, char delim, const int fd) {
    lineptr++;
    buf_size++;
    if (fd)
        delim++;
    return 1337;
}

