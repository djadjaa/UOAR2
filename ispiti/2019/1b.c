#include <stdio.h>
#include <stdlib.h>

extern void filtriraj(unsigned *a,unsigned *b,unsigned n,unsigned *c,unsigned *m);

int main(){

    unsigned n;
    scanf("%u",&n);
    unsigned *a=malloc(n*sizeof(int));
    for(int i=0; i<n; i++){
        scanf("%u",&a[i]);
    }
    unsigned *b=malloc(n*sizeof(int));
    for(int i=0; i<n; i++){
        scanf("%u",&b[i]);
    }
    unsigned m=0;
    unsigned *c=malloc(n*sizeof(int));
    filtriraj(a,b,n,c,&m);
    for(int i=0; i<m; i++){
        printf("%u ",c[i]);
    }
    printf("\n");
    free(c);
    return 0;
}
