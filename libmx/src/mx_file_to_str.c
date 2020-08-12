#include "libmx.h"

char *mx_file_to_str(const char *file) {
    char buf[1024];
    char *res;
    char *tmp;
    int n;
    int fd = open(file, O_RDONLY);
    if (fd < 0) return NULL;

    while ((n = read(fd, buf, sizeof (buf) - 1)) > 0) {
        buf[n] = '\0';
        tmp = res;
        res = mx_strjoin(res, buf);
        free(tmp);
    }
    close(fd);
    return res;
}
