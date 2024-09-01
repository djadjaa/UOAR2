#include <stdio.h>
#include <stdlib.h>
extern int sumarazlika(int *a, int n);
int main(){

    int n;
    scanf("%d",&n);
    int *a=malloc(n*sizeof(int));
    for(int i=0; i<n; i++){
        scanf("%d",&a[i]);
    }
    printf("%d\n",sumarazlika(a,n));
    free(a);
    return 0;
}

