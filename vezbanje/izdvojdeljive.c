#include <stdio.h>
#include <stdlib.h>

extern void izdvoji_deljive(int *a, int na, int *b, int *nb);

int main(){
    int na,nb;
    scanf("%d",&na);
    int *a=malloc(na*sizeof(int));
    for(int i=0; i<na; i++){
        scanf("%d",&a[i]);
    }
    int *b=malloc(na*sizeof(int));
    izdvoji_deljive(a,na,b,&nb);
    for(int i=0; i<nb; i++){
        printf("%d ",b[i]);
    }
    free(a);
    free(b);
    return 0;
}
/*
void izdvoji_deljive(int *a, int na, int *b, int *nb){
    int j=0;
    for(int i=0; i<na; i++){
        if(a[i]%7==0){
            b[j]=a[i];
            j++;
        }
    }
    (*nb)=j;
}
*/
