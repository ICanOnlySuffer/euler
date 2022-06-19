# include <stdio.h>

typedef unsigned int u32;

const u32 MAX = 101;

int main () {
	u32 square_of_sums = MAX * (MAX - 1) * MAX * (MAX - 1) / 4;
	u32 sum_of_squares = 0;
	
	for (u32 i = 1; i < MAX; i++) {
		sum_of_squares += i * i;
	}
	
	printf ("%u\n", square_of_sums - sum_of_squares);
}

