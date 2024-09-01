#include <stdio.h>
#include <stdlib.h>

extern void argmaxes(unsigned **A, int n, int m, int *args);

void error()
{
    fprintf(stderr, "-1");
    exit(EXIT_FAILURE);
}

int main()
{
    int n, m;
    unsigned **A;
    int *args;
    scanf("%d%d", &n, &m);

    A = malloc(n * sizeof(unsigned *));
    if (A == NULL)
        error();

    args = malloc(n * sizeof(int));
    if (args == NULL)
        error();

    for (int i = 0; i < n; i++)
    {
        A[i] = malloc(m * sizeof(unsigned));
        if (A[i] == NULL)
        {
            for (int j = 0; j < i; j++)
            {
                free(A[i]);
            }
            free(A);
            error();
        }
    }

    for (int i = 0; i < n; i++)
    {
        for (int j = 0; j < m; j++)
        {
            scanf("%u", &A[i][j]);
        }
    }

    argmaxes(A, n, m, args);

    for (int i = 0; i < n; i++)
    {
        printf("%d ", args[i]);
    }
    printf("\n");

    for (int i = 0; i < n; i++)
    {
        free(A[i]);
    }
    free(A);
    free(args);

    return 0;
}
