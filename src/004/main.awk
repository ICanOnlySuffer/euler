
BEGIN {
	MAX = 999
	MIN = 100
	
	for (i = MAX; i >= MIN; i--) {
		for (j = MAX; j >= MIN; j--) {
			number = i * j
			
			if (number < largest) {
				break
			}
			if (is_palindrome(number)) {
				largest = number
				break
			}
		}
	}
	
	print largest
}

function is_palindrome (number) {
	original = number
	reversed = 0
	
	while (number) {
		reversed = reversed * 10 + number % 10
		number = int (number / 10)
	}
	
	return original == reversed
}

