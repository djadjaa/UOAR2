#include <stdio.h>
#include <stdlib.h>

#define ASSERT(uslov) if (!(uslov)) { fputs("-1\n", stderr); exit(-1); }

extern int najduzi_vektor(int **a, int n, int m); /* {
    int max = skalarni_proizvod(a[0], a[0], m);
    int max_i = 0;

    for (int i = 1; i < n; ++i) {
        int tmp = skalarni_proizvod(a[i], a[i], m);
        if (tmp > max) {
            max = tmp;
            max_i = i;
        }
    }

    return max_i;
} */

int main() {
    int n, m;
    scanf("%d%d", &n, &m);

    int **a = malloc(n * sizeof(*a));
    ASSERT(a != NULL);
    for (int i = 0; i < n; ++i) {
         a[i] = malloc(m * sizeof(*a[0]));
        ASSERT(a[i] != NULL);

        for (int j = 0; j < m; ++j) {
            scanf("%d", &a[i][j]);
        }
    }

    printf("%d\n", najduzi_vektor(a, n, m));

    return 0;
}
