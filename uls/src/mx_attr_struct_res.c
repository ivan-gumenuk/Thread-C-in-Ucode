#include "uls.h"

static char first_type(struct stat sb) {
    return MX_ISREG(sb.st_mode) ? '-'
        : MX_ISDIR(sb.st_mode) ? 'd'
        : MX_ISBLK(sb.st_mode) ? 'b'
        : MX_ISCHR(sb.st_mode) ? 'c'
        : MX_ISLNK(sb.st_mode) ? 'l'
        : MX_ISFIFO(sb.st_mode) ? 'p'
        : MX_ISSOCK(sb.st_mode) ? 's'
        : MX_ISWHT(sb.st_mode) ? 'w'
        : '?';
}

static char at_plus_space(char *file) {
    acl_t acl = acl_get_file(file, ACL_TYPE_EXTENDED);
    ssize_t xattr = listxattr(file, NULL, 0, XATTR_NOFOLLOW);
    char chr = ' ';

    if (xattr > 0)
        chr = '@';
    else if (acl != NULL)
        chr = '+';
    acl_free(acl);
    return chr;
}

char *mx_eleven_chars_code(struct stat sb, char *file) {
    char *res = mx_strnew(11);

    res[0] = first_type(sb);
    res[1] = (MX_IRURS & sb.st_mode) ? 'r' : '-';
    res[2] = (MX_IWURS & sb.st_mode) ? 'w' : '-';
    res[3] = (MX_ISUID & sb.st_mode) ? ((MX_IXURS & sb.st_mode) ? 's' : 'S')
        : ((MX_IXURS & sb.st_mode) ? 'x' : '-');
    res[4] = (MX_IRGRP & sb.st_mode) ? 'r' : '-';
    res[5] = (MX_IWGRP & sb.st_mode) ? 'w' : '-';
    res[6] = (MX_ISGID & sb.st_mode) ? ((MX_IXGRP & sb.st_mode) ? 's' : 'S')
        : ((MX_IXGRP & sb.st_mode) ? 'x' : '-');
    res[7] = (MX_IROTH & sb.st_mode) ? 'r' : '-';
    res[8] = (MX_IWOTH & sb.st_mode) ? 'w' : '-';
    res[9] = (MX_ISVTX & sb.st_mode) ? ((MX_IXOTH & sb.st_mode) ? 't' : 'T')
        : (MX_IXOTH & sb.st_mode) ? 'x' : '-';
    res[10] = at_plus_space(file);
    return res;
}

char *mx_get_user(uid_t uid) {
    struct passwd *pws;
    
    pws = getpwuid(uid);
    return mx_strdup(pws->pw_name);
}

char *mx_get_group(gid_t gid) {
    struct group *g;

    if ((g = getgrgid(gid)) != NULL)
        return mx_strdup(g->gr_name);
    else
        return mx_itoa(gid);
}
