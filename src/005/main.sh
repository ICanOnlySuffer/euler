
awk '
BEGIN {
	smallest = 1
	for (i = 2; i < 20; i++) {
		smallest = lcm(smallest, i)
	}
	print smallest
}

function gcd (a, b) {
	while (a) {
		c = a
		a = b % a
		b = c
	}
	return b
}

function lcm (a, b) {
	return a * b / gcd(a, b)
}
'

