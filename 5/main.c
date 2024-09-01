#include <stdio.h>
#include <stdlib.h>

void error(const char* msg);

extern int izdvoj_proste(int* a, int n, int *b);

int main(int argc, char const *argv[])
{
    int *a, n, *b;
    scanf("%d", &n);

    if((a = malloc(n * sizeof(int))) == NULL)
    {
        error("Nesupesna alokacija memorije!");
    }
    if((b = malloc(n * sizeof(int))) == NULL)
    {
        error("Nesupesna alokacija memorije!");
    }

    for (int i = 0; i < n; i++)
    {
        scanf("%d", &a[i]);
    }
    
    int n_b = izdvoj_proste(a, n, b);
    for (int i = 0; i < n_b; i++)
    {
        printf("%d ", b[i]);
    }
    
    free(a);
    free(b);

    return 0;
}

void error(const char* msg)
{
    fprintf(stderr, "Error: %s", msg);
    exit(EXIT_FAILURE);
}
