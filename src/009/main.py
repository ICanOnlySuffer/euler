
def get_pythagorean_triplet (sum):
	for a in range (1, sum // 3):
		for b in range (a + 1, sum // 2):
			c = sum - a - b
			if a * a + b * b == c * c:
				return [a, b, c]

SUM = 1000
TRIPLET = get_pythagorean_triplet (SUM)
print (TRIPLET[0] * TRIPLET[1] * TRIPLET[2])

