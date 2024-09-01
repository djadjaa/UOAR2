#include <stdio.h>
#include <stdlib.h>

extern unsigned max_num(unsigned *xs, int n);

int main(){
    int n;
    scanf("%d",&n);
    unsigned *xs=NULL;
    xs=malloc(n*sizeof(unsigned));
    for(int i=0; i<n; i++){
        scanf("%u",&xs[i]);
    }
    printf("%u\n",max_num(xs,n));
    free(xs);
    return 0;
}
