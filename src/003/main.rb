require 'prime'

NUMBER = 600_851_475_143
LARGEST_PRIME_FACTOR = (NUMBER.prime_division.map &:first).max

puts LARGEST_PRIME_FACTOR

