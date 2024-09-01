#include <stdio.h>
#include <stdlib.h>
#include <ctype.h>

extern int broj_ponavljanja(char *s,char c);

//extern char najcesci_karakter(char *haystack,char *needle);

int main(){

	//char *needle;
    char *haystack;
    char c;

	//scanf("%ms %ms", &haystack,&needle);
    scanf("%ms %c", &haystack,&c);
    printf("%d\n",broj_ponavljanja(haystack,c));
	//printf("%c\n",najcesci_karakter(haystack,needle));
    free(haystack);
	return 0;
}
