require 'prime'

MAX = 2_000_000
sum = 0

Prime.each do |i|
	break if i > MAX
	sum += i
end

puts sum

