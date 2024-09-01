#include <stdio.h>

extern unsigned suma_cifara(unsigned n);
int main(){

    unsigned n;
    scanf("%u",&n);
    printf("%u\n",suma_cifara(n));
    return 0;
}
/*
unsigned suma cifara(unsigned n){
    int suma=0,cif;
    while(n!=0){
        cif = n%10;
        suma += cif;
        n /= 10;
    }
    return suma;
}
*/
