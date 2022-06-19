
MAX=101

awk "
BEGIN {
	square_of_sums = $MAX * ($MAX - 1) * $MAX * ($MAX - 1) / 4
	
	for (i = 1; i < $MAX; i++) {
		sum_of_squares += i * i
	}
	
	print square_of_sums - sum_of_squares
}
"

