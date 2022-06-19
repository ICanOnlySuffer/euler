
BEGIN {
	for (a = b = 1; b < 4000000; b += c) {
		c = a
		a = b
		
		if (a % 2 == 0) {
			sum += a
		}
	}
	
	print sum
}

