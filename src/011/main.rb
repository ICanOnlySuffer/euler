
SIZE = 4
GRID = (File.readlines ARGV.first).map do |line|
	line.split.map &:to_i
end

WIDTH = GRID.first.length
HEIGHT = GRID.length

$largest = 0

def product &block
	$largest = [$largest, ((SIZE.times.map &block).reduce :*)].max
end

# horizontal
HEIGHT.times do |i|
	(WIDTH - SIZE.pred).times do |j|
		product {|k| GRID[i][j + k]}
	end
end

# vertical
(HEIGHT - SIZE.pred).times do |i|
	WIDTH.times do |j|
		product {|k| GRID[i + k][j]}
	end
end

# diagonals
(HEIGHT - SIZE.pred).times do |i|
	(WIDTH - SIZE.pred).times do |j|
		product {|k| GRID[i + k][SIZE.pred + j - k]}
		product {|k| GRID[i + k][j + k]}
	end
end

puts $largest

