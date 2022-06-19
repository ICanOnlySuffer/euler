from functools import reduce
from sys import argv

N_DIGITS = 13
largest = 0
current = [0] * N_DIGITS

with open (argv [1]) as file:
	NUMBER = file.read () [:-1]

for char in NUMBER:
	current = current [1:] + [int (char)]
	product = reduce (lambda a, b: a * b, current)
	
	if product > largest:
		largest = product

print (largest)

