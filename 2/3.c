#include <stdio.h>

extern int max(int,int);

int main(){
    int a,b;
    scanf("%d%d",&a,&b);
    printf("%d\n",max(a,b));
    return 0;
}
