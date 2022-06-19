
N_DIGITS = 13
NUMBER = File.read ARGV.first

largest = 0

NUMBER.chars.reduce [0] * N_DIGITS do |current, i|
	current = current [1..] + [i.to_i]
	product = current.reduce :*
	largest = product if product > largest
	current
end

puts largest

