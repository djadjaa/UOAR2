#include <stdio.h>

extern unsigned negacija(unsigned);

void printbits(unsigned x){
    unsigned mask=1<<(sizeof(int)*8-1);
    while(mask){
        if(mask&x){
            putchar('1');
        }else{
            putchar('0');
        }
        mask >>= 1;
    }
    putchar('\n');
}

int main(){

    unsigned x;
    scanf("%u",&x);
    printbits(x);
    printbits(negacija(x));
    return 0;
}
