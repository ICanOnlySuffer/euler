
RANGE = 999.downto 100

largest = 0

RANGE.each do |i|
	RANGE.each do |j|
		number = i * j
		string = number.to_s
		if string == string.reverse and number > largest
			break largest = number
		end
	end
end

puts largest

