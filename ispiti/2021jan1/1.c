#include <stdio.h>

extern unsigned int izracunaj(unsigned n,int a,int b);

int main(){

    unsigned n;
    int a,b;
    scanf("%u%d%d",&n,&a,&b);
    printf("%u",izracunaj(n,a,b));

    return 0;
}
