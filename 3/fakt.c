#include <stdio.h>

extern unsigned faktorijel(unsigned);
int main(){
    unsigned x;
    scanf("%u",&x);
    printf("%u\n",faktorijel(x));
    return 0;
}

/*
 unsigned faktorijel(unsigned x){
    int proizvod=1;
    for(int i=x; i>0; i--){
        proizvod *= i;
    }
    return proizvod
 }

 */
