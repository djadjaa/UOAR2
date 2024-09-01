#include <stdio.h>

extern int deljiv(int a, int b);

int main(){

    int a,b;
    scanf("%d%d",&a,&b);
    printf("%d\n",deljiv(a,b));
    return 0;
}
/*
int deljiv(int a, int b){
    if(a%b==0){
        return 1;
    }
    return 0;
}
*/
