#include <stdio.h>

/*
void min_max_digit(unsigned x, unsigned *p_min, unsigned *p_max){
    *p_min=9,*p_max=0;
    int cif;
    while(x){
        cif = x%10;
        if(cif>*p_max){
            *p_max=cif;
        }if(cif<*p_min){
            *p_min=cif;
        }
        x /= 10;
    }
}
*/

extern void min_max_digit(unsigned x, unsigned *p_min, unsigned *p_max);

int main(){

    unsigned int n;
    scanf("%u",&n);
    unsigned p_min,p_max;
    min_max_digit(n,&p_min,&p_max);
    printf("%u %u\n",p_min,p_max);
    return 0;
}
