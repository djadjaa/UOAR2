#include <stdio.h>
extern int transformisi(int n);
int main(){

    int n;
    scanf("%d",&n);
    printf("%d\n",transformisi(n));

    return 0;
}
/*
int transformisi(int n){
    int kop=n,novibr=0,cif;
    while(kop){
        cif=kop%10;
        if(cif%2==1){
            rez += cif*10;
        }
        kop /= 10;
    }
    return rez;
}
*/
