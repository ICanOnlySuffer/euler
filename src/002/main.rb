
sum = 0

a, b = 1, 1
while b < 4_000_000
	a, b = b, a + b
	sum += a if a % 2 == 0
end

puts "sum: #{sum}"

