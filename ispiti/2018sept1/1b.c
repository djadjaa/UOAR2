#include <stdio.h>
#include <stdlib.h>

extern unsigned transformisi_niz(unsigned *niz,unsigned n);

int main(){

    unsigned n;
    scanf("%u",&n);
    unsigned *niz=malloc(n*sizeof(int));
    for(int i=0; i<n; i++){
        scanf("%u",&niz[i]);
    }
    unsigned newLenArray = transformisi_niz(niz,n);
    for(int i=0; i<newLenArray; i++){
        printf("%u ",niz[i]);
    }
    printf("\n");
    free(niz);
    return 0;
}
