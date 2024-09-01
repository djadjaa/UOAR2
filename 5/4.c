#include <stdio.h>
#include <stdlib.h>

void error(const char* msg);

extern void izbaci_neparne(int* a, int *n);

int main(int argc, char const *argv[])
{
    int *a, n;
    scanf("%d", &n);

    if((a = malloc(n * sizeof(int))) == NULL)
    {
        error("Nesupesna alokacija memorije!");
    }
    for (int i = 0; i < n; i++)
    {
       scanf("%d", &a[i]);
    }
    izbaci_neparne(a,&n);
    for (int i = 0; i < n; i++)
    {
        printf("%d ", a[i]);
    }

    free(a);

    return 0;
}

void error(const char* msg)
{
    fprintf(stderr, "Error: %s", msg);
    exit(EXIT_FAILURE);
}
