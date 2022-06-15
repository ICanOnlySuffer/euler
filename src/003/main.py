from math import sqrt

NUMBER = 600851475143

if NUMBER % 2 == 0:
	LARGEST_PRIME_FACTOR = 0
	while NUMBER % 2 == 0:
		NUMBER /= 2
else:
	LARGEST_PRIME_FACTOR = 1

for i in range (3, int (sqrt (NUMBER)) + 1, 2):
	if NUMBER % i == 0:
		if i > LARGEST_PRIME_FACTOR:
			LARGEST_PRIME_FACTOR = i
		while NUMBER % i == 0:
			NUMBER /= i

print ("largest prime factor:", LARGEST_PRIME_FACTOR)

