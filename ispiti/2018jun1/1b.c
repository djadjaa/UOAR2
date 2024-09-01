#include <stdio.h>
#include <stdlib.h>

extern void transformisi_niz(unsigned *niz,unsigned n,unsigned a);

int main(){

    unsigned a;
    scanf("%u",&a);
    unsigned n;
    scanf("%u",&n);
    unsigned *niz=malloc(n*sizeof(int));
    for(int i=0; i<n; i++){
        scanf("%u",&niz[i]);
    }
    transformisi_niz(niz,n,a);
    for(int i=0; i<n; i++){
        printf("%u ",niz[i]);
    }
    printf("\n");
    free(niz);
    return 0;
}
