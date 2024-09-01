#include <stdio.h>
#include <stdlib.h>

void error(const char* msg);

extern int napravi_niz(int* a,int n);

int main(int argc, char const *argv[])
{
    int *a;
    int n;
    scanf("%d", &n);

    if((a = malloc(n*sizeof(*a))) == NULL) error("Neuspela alokacija memorije!");
    int n_s=napravi_niz(a,n);
    for (int i = 0; i < n_s; i++)
    {
        printf("%d ", a[i]);
    }

    free(a);
    return 0;
}

void error(const char* msg)
{
    fprintf(stderr, "Greska: %s", msg);
    exit(EXIT_FAILURE);
}
