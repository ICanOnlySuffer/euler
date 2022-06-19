
BEGIN {	
	N_DIGITS = 13
	getline file_read<ARGV[1]
	
	for (split(file_read, NUMBER, ""); i < length(NUMBER); i++) {
		current [i % N_DIGITS] = NUMBER [i]
		
		product = 1
		for (j = 0; j < N_DIGITS; j++) {
			product *= current [j]
		}
		
		if (product > largest) {
			largest = product
		}
	}
	
	print largest;
}

