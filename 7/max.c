#include <stdio.h>
extern int max(int,int);
int main(){
    int x,y;
    scanf("%d%d",&x,&y);
    printf("%d\n",max(x,y));
    return 0;
}
