
BEGIN {
	MAX = 2000000
	
	for (i = 2; i < MAX; i++) {
		if (is_prime(i)) {	
			sum += i
		}
	}
	
	print sum
}

function is_prime (number) {
	for (_ = 2; _ * _ <= number; _++) {
		if (number % _ == 0) {
			return 0
		}
	}
	return 1
}

