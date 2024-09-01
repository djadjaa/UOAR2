#include <stdio.h>

extern unsigned suma(unsigned);

int main(){

    unsigned n;
    scanf("%u",&n);
    printf("%u\n",suma(n));
    return 0;
}
