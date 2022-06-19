
NUMBER=600851475143

awk "BEGIN {
	number = $NUMBER
	
	if (number % 2 == 0) {
		largest_prime_factor = 0
		while (number % 2) {
			number /= 2
		}
	} else {
		largest_prime_factor = 1
	}
	
	j = sqrt (number)
	for (i = 3; i < j; i++) {
		if (number % i == 0) {
			if (i > largest_prime_factor) {
				largest_prime_factor = i
			}
			while (number % i == 0) {
				number /= i
			}
		}
	}
	
	print largest_prime_factor
}"

