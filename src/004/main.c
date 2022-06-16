# include <stdbool.h>
# include <stdio.h>

# define MAX 999
# define MIN 100

unsigned int reverse (unsigned int number) {
	unsigned int reversed = 0;
	
	while (number) {
		reversed = reversed * 10 + (number % 10);
		number /= 10;
	}
	
	return reversed;
}

static inline bool is_palindrome (unsigned int number) {
	return reverse (number) == number;
}

int main () {
	unsigned int largest = 0;
	
	for (int i = MAX; i >= MIN; i--) {
		for (int j = MAX; j >= MIN; j--) {
			unsigned int number = i * j;
			
			if (is_palindrome (number) && number > largest) {
				largest = number;
				break;
			}
		}
	}
	
	printf ("%u\n", largest);
}

