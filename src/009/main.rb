
def get_pythagorean_triplet sum
	for a in 1...(sum / 3)
		for b in a.next...(sum / 2)
			c = sum - a - b
			return [a, b, c] if a * a + b * b == c * c
		end
	end
	nil
end

TRIPLET = get_pythagorean_triplet 1000
puts TRIPLET.reduce :*

