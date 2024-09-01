#include <stdio.h>

extern unsigned stepen(unsigned n, unsigned a);

int main(){
    unsigned n;
    scanf("%u",&n);
    unsigned a;
    scanf("%u",&a);
    printf("%u\n",stepen(n,a));
    return 0;
}
/*
 unsigned stepen(unsigned n, unsigned a){ //n^a
    unsigned rez=1;
    for(int i=0; i<a; i++){
        rez *= n;
    }
    return rez;
}
 */
