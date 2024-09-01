#include <stdio.h>

extern unsigned izraz(unsigned x,unsigned y);

int main(){
    unsigned x,y;
    scanf("%u%u",&x,&y);
    printf("%u\n",izraz(x,y));
    return 0;
}
