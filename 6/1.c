#include <stdio.h>

extern int savrsen(int);

int main(){

    int n;
    scanf("%d",&n);
    printf("%d\n",savrsen(n));
    return 0;
}
