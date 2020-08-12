int mx_factorial_iter(int n) {
    if (n < 0 || n > 12) return 0;
    
    int i;
    for(i = 1; n > 1; i *= (n--));
    
    return i;
}
