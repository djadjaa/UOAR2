#include <stdio.h>
#include <stdlib.h>

void error(const char* msg);

extern int sadrzi(int* a,int n,int c);

int main(int argc, char const *argv[])
{
    int *a;
    int n;
    scanf("%d", &n);

    if((a = malloc(n*sizeof(*a))) == NULL) error("Neuspela alokacija memorije!");

    for (int i = 0; i < n; i++)
    {
        scanf("%d",&a[i]);
    }
    int c;
    scanf("%d",&c);
    printf("%d",sadrzi(a,n,c));
    free(a);
    return 0;
}

void error(const char* msg)
{
    fprintf(stderr, "Greska: %s", msg);
    exit(EXIT_FAILURE);
}
