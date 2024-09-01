#include <stdio.h>

extern int clan_niza(int);

int main(){

    int n;
    scanf("%d",&n);
    printf("%d\n",clan_niza(n));
    return 0;
}
//A0 = 1, An = 4 ∗ An−1 + 3
/*
int clan_niza(int n){
    int tmp=1;
    int rez=1;
    for(int i=1; i<=n; i++){
        rez=4*tmp+3;
        tmp=rez;
        printf("%d\n",rez);
    }
    return rez;
}
*/
