#include <stdio.h>
#include <stdlib.h>

extern void transformisi(char *s);

int main(){
    char *s;
    scanf("%ms",&s);
    transformisi(s);
    printf("%s",s);
    free(s);
    return 0;
}
