#include <stdio.h>

extern int add(int,int);
int main(){

    int x,y;
    scanf("%d%d",&x,&y);
    printf("%d\n",add(x,y));
    return 0;
}
