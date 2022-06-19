# include <stdbool.h>
# include <stdio.h>

typedef unsigned int u32;

bool is_prime (u32 number) {
	for (u32 i = 2; i * i <= number; i++) {
		if (number % i == 0) {
			return false;
		}
	}
	return true;
}

int main () {
	const u32 nth = 10001;
	u32 number = 1;
	
	for (u32 i = 1; i < nth; ) {
		number += 2;
		if (is_prime (number)) {
			i++;
		}
	}
	
	printf ("%u\n", number);
}

