#include <stdio.h>
#include <stdlib.h>
extern int skalarni_proizvod(int* a, int* b, int n);
int main(){
    int n;
    scanf("%d",&n);
    int *a=malloc(n*sizeof(int));
    int *b=malloc(n*sizeof(int));
    for(int i=0; i<n; i++){
        scanf("%d",&a[i]);
    }
    for(int i=0; i<n; i++){
        scanf("%d",&b[i]);
    }
    printf("%d\n",skalarni_proizvod(a,b,n));
    free(a);
    free(b);
    return 0;
}
