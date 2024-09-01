#include <stdio.h>

extern void bitovska_aritmetika(unsigned a, unsigned b, unsigned *k, unsigned *d, unsigned *e, unsigned *n);
// k - konjunkcija, d - disjunkcija,e - ekskluzivna disjunkcija n - negacija prvog argumenta.
int main(){

    unsigned a,b,k,d,e,n;
    scanf("%u%u",&a,&b);
    bitovska_aritmetika(a,b,&k,&d,&e,&n);
    printf("%u %u %u %u\n",k,d,e,n);
    return 0;
}
/*
 int k=a&b
 int d=a|b
 int e=a^b
 int n =~a


 */
