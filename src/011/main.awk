
BEGIN {
	for (height = 0; getline line<ARGV[1]; height++) {
		split (line, strings, " ")
		for (width = 0; width < length (strings); width++) {
			values [height][width] = strings [width]
		}
	}
	
	SIZE = 4
	
	# horizontal
	for (i = 0; i < height; i++) {
		for (j = 0; j < width - 3; j++) {
			product = 1
			for (k = 0; k < SIZE; k++) {
				product *= values [i][j + k]
			}
			largest = max(largest, product)
		}
	}
	
	# vertical
	for (i = 0; i < height - 3; i++) {
		for (j = 0; j < width; j++) {
			product = 1
			for (k = 0; k < SIZE; k++) {
				product *= values [i + k][j]
			}
			largest = max(largest, product)
		}
	}
	
	# diagonals
	for (i = 0; i < height - 3; i++) {
		for (j = 0; j < width - 3; j++) {
			product = 1
			for (k = 0; k < SIZE; k++) {
				product *= values [i + k][SIZE - 1 + j - k]
			}
			largest = max(largest, product)
			
			product = 1
			for (k = 0; k < SIZE; k++) {
				product *= values [i + k][j + k]
			}
			largest = max(largest, product)
		}
	}
	
	print largest
}

function max (_1, _2) {
	return _1 > _2 ? _1 : _2
}

