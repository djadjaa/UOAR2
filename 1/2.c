#include <stdio.h>

extern int suma(int, int);

int main()
{
    int x, y;
    printf("Unesite dva cela broja: ");
    scanf("%d%d", &x, &y);
    int zbir = suma(x, y);
    printf("%d + %d = %d", x, y, zbir);
    return 0;
}
