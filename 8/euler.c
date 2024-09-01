#include <stdio.h>
extern int nzd(int,int);
int main(){
    int x,y;
    scanf("%d%d",&x,&y);
    printf("%d\n",nzd(x,y));
    return 0;
}
