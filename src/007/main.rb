require 'prime'

NTH = 10001
number = 1

i = 1
while i < NTH
	number += 2
	i += 1 if number.prime?
end

puts number

