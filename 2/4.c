#include <stdio.h>

extern int deljiv_4(int);

int main(){
    int x;
    scanf("%d",&x);
    if(deljiv_4(x)){
        printf("da\n");
    }else{
        printf("ne\n");
    }
    return 0;
}
