void mx_printstr(const char *s);
void mx_printchar(char c);

int main(int c, char *s[]) {
    if (c < 2) return 0;
    for( int i = 1; i < c; i++) {
        mx_printstr(s[i]);
        mx_printchar('\n');
    }
    return 0;
}
