#include <stdio.h>
#include <stdlib.h>
extern unsigned izbaci_proste(unsigned a[],unsigned n);

int main(){
    unsigned n;
    scanf("%u",&n);
    unsigned *a=malloc(n*sizeof(int));
    for(int i=0; i<n; i++){
        scanf("%u",&a[i]);
    }
    unsigned newLen = izbaci_proste(a,n);
    printf("%u",newLen);
    for(int i=0; i<newLen; i++){
        printf("%u ",a[i]);
    }
    free(a);
    return 0;
}
