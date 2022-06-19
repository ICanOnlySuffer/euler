# include <stdio.h>

typedef unsigned int u32;

struct triplet {
	u32 a;
	u32 b;
	u32 c;
} get_pythagorean_triplet (u32 sum) {
	for (u32 a = 1; a < sum / 3; a++) {
		for (u32 b = a + 1; b < sum / 2; b++) {
			u32 c = sum - a - b;
			if (a * a + b * b == c * c) {
				return (struct triplet) {a, b, c};
			}
		}
	}
	return (struct triplet) {0, 0, 0};
}

int main () {
	const u32 SUM = 1000;
	const struct triplet TRIPLET = get_pythagorean_triplet (SUM);
	printf ("%u\n", TRIPLET.a * TRIPLET.b * TRIPLET.c);
}

