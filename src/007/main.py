from sympy import isprime

NTH = 10001
number = 1

i = 1
while i < NTH:
	number += 2
	if isprime (number):
		i += 1

print (number)

