
RANGE = 999.downto 100

largest = 0

def is_palindrome number
	original = number
	reversed = 0
	
	until number.zero? do
		reversed = reversed * 10 + number % 10
		number /= 10
	end
	
	original == reversed
end

RANGE.each do |i|
	RANGE.each do |j|
		number = i * j
		break if number < largest
		break largest = number if is_palindrome number
	end
end

puts largest

