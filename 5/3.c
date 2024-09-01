#include <stdio.h>

extern int savrsen_stepen(unsigned int,unsigned int*,unsigned int*);

int main(){
    unsigned int n,m,k;
    scanf("%u",&n);
    if(savrsen_stepen(n,&m,&k)){
        printf("%u=%u^%u\n",n,m,k);
    }else{
        printf("jok:(\n)");
    }
    return 0;
}
