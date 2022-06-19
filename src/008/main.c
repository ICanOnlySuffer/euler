# include <stdbool.h>
# include <stdlib.h>
# include <stdio.h>

typedef unsigned long u64;
typedef unsigned char u08;

int main (int argc, char * args []) {
	const int N_DIGITS = 13;
	u08 * current = malloc (N_DIGITS * sizeof (u08));
	u64 largest = 0;
	
	for (int i = 0; i < N_DIGITS; i++) {
		current [i] = 0;
	}
	
	FILE * file = fopen (args [1], "r");
	for (int index = 0; true; index = (index + 1) % N_DIGITS) {
		char c = fgetc (file);
		
		if (c == '\n' || c == EOF) {
			break;
		}
		
		current [index] = c - 48;
		
		u64 product = 1;
		for (u64 i = 0; i < N_DIGITS; i++) {	
			product *= current [i];
		}
		
		if (product > largest) {
			largest = product;
		}
	}
	
	fclose (file);
	free (current);
	
	printf ("%lu\n", largest);
}

