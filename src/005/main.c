# include <stdio.h>

typedef unsigned long u64;

u64 gcd (u64 a, u64 b) {
	while (a) {
		u64 c = a;
		a = b % a;
		b = c;
	}
	return b;
}

static inline u64 lcm (u64 a, u64 b) {
	return a * b / gcd (a, b);
}

int main () {
	u64 smallest = 1;
	for (u64 i = 2; i < 20; i++) {
		smallest = lcm (smallest, i);
	}
	printf ("%lu\n", smallest);
}


