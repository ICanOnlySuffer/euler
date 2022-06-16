# include <stdio.h>

int main () {
	unsigned int sum = 0;
	unsigned int a = 1;
	unsigned int b = 1;
	
	while (b < 4000000) {
		unsigned int c = a;
		a = b;
		b += c;
		
		if (a % 2 == 0) {
			sum += a;
		}
	}
	printf ("%u\n", sum);
}

