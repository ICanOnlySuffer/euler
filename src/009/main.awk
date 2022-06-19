
BEGIN {
	SUM = 1000
	
	for (a = 1; a < SUM / 3; a++) {
		for (b = a + 1; b < SUM / 2; b++) {
			c = SUM - a - b
			if (a * a + b * b == c * c) {
				print a * b * c
				exit
			}
		}
	}
}

