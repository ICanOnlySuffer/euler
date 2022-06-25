# include <stdbool.h>
# include <stdio.h>

typedef unsigned long u64;
typedef unsigned int u32;

// SOURCE: https://stackoverflow.com/a/34187992
u32 fast_sqrt (u32 number) {
	u32 a = 1255;
	u32 b = number / a;
	
	a = (a + b) / 2;
	b = number / a;
	a = (a + b) / 2;
	b = number / a;
	a = (a + b) / 2;
	
	return a;
}

bool is_prime (u32 number) {
	if (number % 2) {
		u32 max = fast_sqrt (number);
		if (max > number / 2) {
			max = number / 2;
		}
		for (u32 i = 3; i <= max; i += 2) {
			if (number % i == 0) {
				return false;
			}
		}
	}
	return true;
}

int main () {
	const u32 MAX = 2000000;
	u64 sum = 2;
	
	for (u32 i = 3; i < MAX; i += 2) {
		if (is_prime (i)) {
			sum += i;
		}
	}
	
	printf ("%lu\n", sum);
}

