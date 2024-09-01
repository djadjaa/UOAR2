#include <stdio.h>
#include <stdlib.h>

void error(const char *msg){
    fprintf(stderr,"%s",msg);
    exit(1);
}
extern void fibonaci(int *a, int n);
int main(){

    int n;
    int *a;
    scanf("%d",&n);
    if((a=malloc(n*sizeof(int)))==NULL){
        error("neuspesna alokacija\n");
    }
    int i;
    fibonaci(a,n);
    for(i=0; i<n; i++){
        printf("%d ",a[i]);
    }
    putchar('\n');
    free(a);
    return 0;
}
