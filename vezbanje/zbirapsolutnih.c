#include <stdio.h>
#include <stdlib.h>
extern int zbir_apsolutnih(int *a, int n);

int main(){

    int n;
    scanf("%d",&n);
    int *a=malloc(n*sizeof(int));
    for(int i=0; i<n; i++){
        scanf("%d",&a[i]);
    }
    printf("%d\n",zbir_apsolutnih(a,n));
    free(a);
    return 0;
}

/*
    int abs(int x){
        if(x<0){
            return x*(-1);
        }
        return x;
    }


 int zbir apsolutnih(int ∗ A, int n){
    int suma=0;
    for(int i=0; i<n; i++){
        suma += abs(a[i]);

    }

 }


 */
