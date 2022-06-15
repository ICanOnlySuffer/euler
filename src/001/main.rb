
SUM = 1000.times.sum {(_1 % 3 == 0 or _1 % 5 == 0) ? _1 : 0}
puts "sum: #{SUM}"

