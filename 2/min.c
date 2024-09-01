#include <stdio.h>

extern int min(int,int);

int main(){

    int a,b;
    scanf("%d%d",&a,&b);
    printf("%d\n",min(a,b));
    return 0;
}
