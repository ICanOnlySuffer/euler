from math import sqrt

number = 600851475143

if number % 2 == 0:
	largest_prime_factor = 0
	while number % 2 == 0:
		number /= 2
else:
	largest_prime_factor = 1

for i in range (3, int (sqrt (number)) + 1, 2):
	if number % i == 0:
		if i > largest_prime_factor:
			largest_prime_factor = i
		while number % i == 0:
			number /= i

print (largest_prime_factor)

