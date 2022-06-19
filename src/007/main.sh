
NTH=10001

awk "
BEGIN {
	number = 1
	
	for (i = 1; i < $NTH; ) {
		number += 2
		if (is_prime(number)) {
			i++
		}
	}
	
	print number
}

function is_prime (number) {
	for (_ = 2; _ * _ <= number; _++) {
		if (number % _ == 0) {
			return 0
		}
	}
	return 1
}
"

