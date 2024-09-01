#include <stdio.h>

extern unsigned nzd(unsigned,unsigned);

int main(){

    unsigned a,b;
    scanf("%u%u",&a,&b);
    printf("%u\n",nzd(a,b));
    return 0;
}
