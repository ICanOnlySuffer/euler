from functools import reduce
from sys import argv

SIZE = 4
with open (argv [1]) as file:
	lines = file.readlines ()
	GRID = list (map (lambda x: list (map (int, x.split ())), lines))

WIDTH = len (GRID [0])
HEIGHT = len (GRID)

largest = 0

def product (array):
	global largest
	largest = max (largest, reduce (lambda a, b: a * b, array))

# horizontal
for i in range (HEIGHT):
	for j in range (WIDTH - SIZE + 1):
		product (GRID[i][j + k] for k in range (SIZE))

# vertical
for i in range (HEIGHT - SIZE + 1):
	for j in range (WIDTH):
		product (GRID[i + k][j] for k in range (SIZE))

# diagonals
for i in range (HEIGHT - SIZE + 1):
	for j in range (WIDTH - SIZE + 1):
		product (GRID[i + k][SIZE - 1 + j - k] for k in range (SIZE))
		product (GRID[i + k][j + k] for k in range (SIZE))

print (largest)

