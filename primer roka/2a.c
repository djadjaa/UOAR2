#include <stdio.h>

/**
 * @param n Broj ciji broj pravih delioca trazimo
 * @returns Broj pravih delioca broja n
*/
extern unsigned broj_pravih_delioca(unsigned n);

int main()
{
    unsigned n;
    scanf("%u", &n);
    printf("%u\n", broj_pravih_delioca(n));
    return 0;
}

/*
 int br=0;
 for(int i=1; i<=n; i++){
     if(n%i==0){
         br++;
    }
}
 return br;
 */
