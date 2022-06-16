
sum = 0

a, b = 1, 1
while b < 4000000:
	a, b = b, a + b
	if a % 2 == 0:
		sum += a

print (sum)

