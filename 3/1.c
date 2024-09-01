#include <stdio.h>

extern int prestupna(unsigned);

int main(){
    unsigned x;
    scanf("%u",&x);
    if(prestupna(x)){
        printf("da\n");
    }else{
        printf("ne\n");
    }

    return 0;
}
