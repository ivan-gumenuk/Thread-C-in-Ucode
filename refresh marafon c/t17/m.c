#include <stdio.h>

unsigned long mx_hex_to_nbr(const char *hex);

int main() {
    printf("Case1 (C4) -> %lu\n", mx_hex_to_nbr("C4"));
    printf("Case2 (0) -> %lu\n", mx_hex_to_nbr("0"));
    printf("Case3 (FADE) -> %lu\n", mx_hex_to_nbr("FADE"));
    printf("Case4 (ffffffffffff) -> %lu\n", mx_hex_to_nbr("ffffffffffff"));
    printf("Case5 ULONG_MAX(FFFFFFFF) -> %lu\n", mx_hex_to_nbr("FFFFFFFF"));
    printf("Case6 NULL -> %lu\n", mx_hex_to_nbr(NULL));
    return 0;
}
