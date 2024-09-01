#include <stdio.h>
extern unsigned fact(unsigned);
int main(){
    unsigned n;
    scanf("%u",&n);
    printf("%u\n",fact(n));
    return 0;
}
