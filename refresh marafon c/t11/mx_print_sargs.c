void mx_printchar(char c);
void mx_printstr(const char *s);
int mx_strcmp(const char *s1, const char *s2);

int main(int n, char *s[]) {
    if (n < 2) return 0;
    for (int i = 1; i < n - 1; i++) {
        int m = i;
        for (int j = i + 1; j < n; j++) {
            if (mx_strcmp(s[m], s[j]) > 0) 
                m = j;
        }
        char *t = s[m];
        s[m] = s[i];
        s[i] = t;
    }
        for( int i = 1; i < n; i++) {
        mx_printstr(s[i]);
        mx_printchar('\n');
    }
    return 0;
}
