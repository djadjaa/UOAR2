#include <stdio.h>

extern int broj_jedinica(unsigned);

int main(){

    unsigned x;
    scanf("%u",&x);
    printf("%d\n",broj_jedinica(x));
    return 0;
}


/*
 int broj_jedinica(unsigned x){
    int br=0;
    while(x){
        br++;
        x>>=1;
    }
    return br;
 }

*/
