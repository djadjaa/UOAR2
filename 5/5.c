#include <stdio.h>
extern int najcesca_cifra(unsigned);
int main(){

    unsigned n;
    scanf("%u",&n);
    printf("%d\n",najcesca_cifra(n));
    return 0;
}
