
BEGIN {
	MAX = 2000000
	sum = 2
	
	for (i = 3; i < MAX; i += 2) {
		if (is_prime(i)) {	
			sum += i
		}
	}
	
	print sum
}

function is_prime (number) {
	if (number % 2) {
		max = int (sqrt (number))
		for (_ = 3; _ <= max; _ += 2) {
			if (number % _ == 0) {
				return 0
			}
		}
	}
	return 1
}

