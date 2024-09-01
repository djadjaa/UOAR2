#include <stdio.h>
extern void printbits(unsigned);
int main(){

    unsigned n;
    scanf("%u",&n);
    printbits(n);

    return 0;
}
