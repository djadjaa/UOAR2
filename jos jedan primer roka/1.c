#include <stdio.h>
#include <stdlib.h>
#include <ctype.h>


extern int broj_ponavljanja(char *s,char c);

extern char najcesci_karakter(char *haystack,char *needle);

int main(){

	char *needle;
	char *haystack;
	
	scanf("%ms %ms", &haystack,&needle);
	
	
	
	printf("%c\n",najcesci_karakter(haystack,needle));
	
	
	return 0;
}
