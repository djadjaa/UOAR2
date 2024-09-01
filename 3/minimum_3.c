#include <stdio.h>

extern unsigned min(unsigned, unsigned, unsigned);

int main(){
    unsigned a,b,c;
    scanf("%u%u%u",&a,&b,&c);
    printf("%u\n",min(a,b,c));
    return 0;
}

/*
 unsigned min(unsigned a, unsigned b, unsigned c){
 int min;
    if(a<=b){
        if(a<=c){
            min=a;
        }
    }
    else if(b<=a){
        if(b<=c){
            min=b;
        }
    }
    else{
        min=c;
    }
    return min;
 }*/
