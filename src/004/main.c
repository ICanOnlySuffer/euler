# include <stdbool.h>
# include <stdio.h>

# define MAX 999
# define MIN 100

bool is_palindrome (unsigned int number) {
	unsigned int original = number;
	unsigned int reversed = 0;
	
	while (number) {
		reversed = reversed * 10 + number % 10;
		number /= 10;
	}
	
	return original == reversed;
}

int main () {
	unsigned int largest = 0;
	
	for (int i = MAX; i >= MIN; i--) {
		for (int j = MAX; j >= MIN; j--) {
			unsigned int number = i * j;
			
			if (number < largest) {
				break;
			}
			if (is_palindrome (number)) {
				largest = number;
				break;
			}
		}
	}
	
	printf ("%u\n", largest);
}

