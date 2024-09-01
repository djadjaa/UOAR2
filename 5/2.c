#include <stdio.h>
#include <stdlib.h>

extern int izdvoj_proste(int *a, int *b, int n);

int main(){
    int n;
    scanf("%d",&n);
    int *a=malloc(n*sizeof(int));
    int *b=malloc(n*sizeof(int));
    for(int i=0; i<n; i++){
        scanf("%d",&a[i]);
    }
    int n_b=izdvoj_proste(a,b,n);
    for(int i=0; i<n_b; i++){
        printf("%d ",b[i]);
    }
    putchar('\n');
    free(a);
    free(b);
    return 0;
}
