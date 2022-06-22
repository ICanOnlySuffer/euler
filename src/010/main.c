# include <stdbool.h>
# include <stdio.h>

typedef unsigned long u64;

bool is_prime (u64 number) {
	for (u64 i = 2; i * i <= number; i++) {
		if (number % i == 0) {
			return false;
		}
	}
	return true;
}

int main () {
	const u64 MAX = 2000000;
	u64 sum = 0;
	
	for (u64 i = 2; i < MAX; i++) {
		if (is_prime (i)) {
			sum += i;
		}
	}
	
	printf ("%lu\n", sum);
}

