#include <stdio.h>
extern int deljiv_16(int);
int main(){
    int n;
    scanf("%d",&n);
    printf("%d\n",deljiv_16(n));
    return 0;
}
/*
  int deljiv 16(int n){
    if(n%16==0){
        return 1;
    return 0;
  }
 */
