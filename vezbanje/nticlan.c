#include <stdio.h>

extern int n_ti_clan(int a, int b, int n);

int main(){

    int a,b,n;
    scanf("%d%d%d",&a,&b,&n);
    printf("%d\n",n_ti_clan(a,b,n));
    return 0;
}

int n_ti_clan(int a, int b, int n){
    int prvi=a;
    int drugi=b;
    int rez;
    for(int i=2; i<=n; i++){
        rez=32*drugi-prvi;
        prvi=drugi;
        drugi=rez;
    }
    int rez;
}
