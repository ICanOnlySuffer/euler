
const MAX: u32 = 101;

fn main () {
	let square_of_sums: u32 = MAX * (MAX - 1) * MAX * (MAX - 1) / 4;
	let mut sum_of_squares: u32 = 0;
	
	for i in 1..MAX {
		sum_of_squares += i * i;
	}
	
	println! ("{}", square_of_sums - sum_of_squares);
}

