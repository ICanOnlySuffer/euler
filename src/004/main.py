
RANGE = range (999, 99, -1)

largest = 0

for i in RANGE:
	for j in RANGE:
		number = i * j
		string = str (number)
		if string == string [::-1] and number > largest:
			largest = number
			break

print (largest)

