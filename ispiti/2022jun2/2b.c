#include <stdio.h>
#include <stdlib.h>
#include <math.h>
extern int find_power(int n, int k, int *ms, int nm);

void error()
{
    fprintf(stderr, "-1");
    exit(EXIT_FAILURE);
}

int main()
{
    int n, k;
    int *ms;
    int nm;
    scanf("%d%d", &n, &k);
    scanf("%d", &nm);

    ms = malloc(nm * sizeof(int));
    if (ms == NULL)
        error();

    for (int i = 0; i < nm; i++)
    {
        scanf("%d", &ms[i]);
    }

    printf("%d", find_power(n, k, ms, nm));

    free(ms);

    return 0;
}
