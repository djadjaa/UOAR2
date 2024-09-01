#include <stdio.h>
extern unsigned prost(unsigned a);
int main(){

    unsigned a;
    scanf("%u",&a);
    printf("%u\n",prost(a));
    return 0;
}
/*
unsigned prost(unsigned a){
    for(int i=2; i<a; i++){
        if(a%i==0){
            return 1;
        }
    }
    return 0;
}
*/
