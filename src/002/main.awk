
awk '
BEGIN {
	a = 1
	b = 1
	
	while (b < 4000000) {
		c = a
		a = b
		b += c
		
		if (a % 2 == 0) {
			sum += a
		}
	}
	
	print sum
}
'

