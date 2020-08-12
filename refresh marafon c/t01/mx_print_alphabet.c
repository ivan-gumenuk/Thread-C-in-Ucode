void mx_printchar(char c);

void mx_print_alphabet(void) {
    char c = 'A';
    for (int i = 65; i <= 90; i++) {
        if (i % 2 != 0) {
            mx_printchar(c);
            c++;
        } else {
            mx_printchar(c + 32);
            c++;
        }
    }
    mx_printchar('\n');
}
