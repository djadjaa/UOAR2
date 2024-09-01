#include <stdio.h>

extern unsigned prost(unsigned);

int main(){
    unsigned x;
    scanf("%u",&x);
    printf("%u\n",prost(x));
    return 0;
}

/*
 unsigned prost(unsigned x){
    for(i=2; i<x; i++){
        if(x%i==0)
            return 0;
    }
    return 1;
 }

 */
