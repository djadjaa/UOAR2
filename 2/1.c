#include <stdio.h>

extern int f(int,int,int,int,int,int,int,int);

int main(){
    printf("%d\n",f(1,2,3,4,5,6,7,8));
    return 0;
}
