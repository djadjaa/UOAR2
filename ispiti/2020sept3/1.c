#include <stdio.h>
extern int izraz(int a,int b,int c);
int main(){
    int a,b,c;
    scanf("%d%d%d",&a,&b,&c);
    printf("%d",izraz(a,b,c));
    return 0;
}
