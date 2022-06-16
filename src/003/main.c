# include <stdio.h>
# include <math.h>

// compile with -lm

int main () {
	unsigned long number = 600851475143;
	unsigned long largest_prime_factor;
	
	if (number % 2 == 0) {
		largest_prime_factor = 0;
		while (number % 2 == 0) {
			number /= 2;
		}
	} else {
		largest_prime_factor = 1;
	}
	
	for (unsigned long i = 3, j = sqrt (number) + 1; i < j; i++) {
		if (number % i == 0) {
			if (i > largest_prime_factor) {
				largest_prime_factor = i;
			}
			while (number % i == 0) {
				number /= i;
			}
		}
	}
	
	printf ("%lu\n", largest_prime_factor);
}

