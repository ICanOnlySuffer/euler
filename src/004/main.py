
RANGE = range (999, 99, -1)

largest = 0

def is_palindrome (number):
	original = number
	reversed = 0
	
	while number:
		reversed = reversed * 10 + number % 10
		number //= 10
	
	return original == reversed

for i in RANGE:
	for j in RANGE:
		number = i * j
		if number < largest:
			break
		if is_palindrome (number):
			largest = number
			break

print (largest)

