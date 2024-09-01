#include <stdio.h>
extern unsigned secret(unsigned);
int main(){

    unsigned n;
    scanf("%u",&n);
    printf("%u\n",secret(n));
//12345->1+2+3+4+5->15->1+5->6 (sabiramo cifre broja sve dok ne dodjemo do jednocifrenog

    return 0;
}
