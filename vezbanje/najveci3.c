#include <stdio.h>
#include <stdlib.h>

extern int najveci_3(int *a, int n);

int main(){

    int n;
    scanf("%d",&n);
    int *a=malloc(n*sizeof(int));
    for(int i=0; i<n; i++){
        scanf("%d",&a[i]);
    }
    printf("%d\n",najveci_3(a,n));
    free(a);
    return 0;
}
/*
int najveci_3(int *a, int n){
    int max=a[i];
    for(i=1; i<n; i++){
        if(a[i]>max){
            if(a[i]%3==0){
                max=a[i];
            }
        }
    }
    return max;
}
*/
