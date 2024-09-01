#include <stdio.h>
#include <stdlib.h>

void error(const char* msg);

extern int smesti(int* a, int n, int* b);

int main(int argc, char const *argv[])
{
    int *a, *b;
    int n, nb;
    scanf("%d", &n);

    if((a = malloc(n*sizeof(*a))) == NULL) error("Neuspela alokacija memorije!");
    if((b = malloc(n*sizeof(*b))) == NULL) error("Neuspela alokacija memorije!");

    for (int i = 0; i < n; i++)
    {
        scanf("%d", &a[i]);
    }

    nb = smesti(a, n, b);

    for (int i = 0; i < nb; i++)
    {
        printf("%d ", b[i]);
    }


    free(a);
    free(b);
    return 0;
}

void error(const char* msg)
{
    fprintf(stderr, "Greska: %s", msg);
    exit(EXIT_FAILURE);
}
