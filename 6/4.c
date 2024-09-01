#include <stdio.h>
#include <stdlib.h>

void error(const char* msg);

extern void napravi_niz(int* a,int *b,int n, int *c,int nc);

int main(int argc, char const *argv[])
{
    int *a,*b;
    int n;
    scanf("%d", &n);

    if((a = malloc(n*sizeof(*a))) == NULL) error("Neuspela alokacija memorije!");
    if((b = malloc(n*sizeof(*b))) == NULL) error("Neuspela alokacija memorije!");
    for (int i = 0; i < n; i++)
    {
        scanf("%d", &a[i]);
    }
    for (int i = 0; i < n; i++)
    {
        scanf("%d", &b[i]);
    }
    int nc;
    scanf("%d",&nc);
    int *c;
    if((c = malloc(nc*sizeof(*c))) == NULL) error("Neuspela alokacija memorije!");
    for (int i = 0; i < nc; i++)
    {
        scanf("%d", &c[i]);
    }
    napravi_niz(a,b,n,c,nc);
    for (int i = 0; i < nc; i++)
    {
        printf("%d ", c[i]);
    }

    free(a);
    free(b);
    free(c);
    return 0;
}

void error(const char* msg)
{
    fprintf(stderr, "Greska: %s", msg);
    exit(EXIT_FAILURE);
}
