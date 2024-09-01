#include <stdio.h>
#include <stdlib.h>

void error(const char *msg){
    fprintf(stderr,"%s",msg);
    exit(1);
}
extern void obrni(int *a, int n);

int main(){

    int n;
    int *a;
    scanf("%d",&n);
    if((a=malloc(n*sizeof(int)))==NULL){
        error("neuspesna alokacija\n");
    }
    int i;
    for(i=0; i<n; i++){
        scanf("%d",&a[i]);
    }
    obrni(a,n);
    for(i=0; i<n; i++){
        printf("%d ",a[i]);
    }
    putchar('\n');
    free(a);
    return 0;
}
