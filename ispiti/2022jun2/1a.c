#include <stdio.h>
#include <stdlib.h>
extern int argmax(unsigned *a,int n);
int main(){

    int n;
    scanf("%d",&n);
    unsigned *a=malloc(n*sizeof(int));
    for(int i=0; i<n; i++){
        scanf("%d",&a[i]);
    }
    printf("%d\n",argmax(a,n));
    return 0;

}
