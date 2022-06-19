
fn is_prime (number: u32) -> bool {
	let mut i: u32 = 2;
	while i * i <= number {
		if number % i == 0 {
			return false;
		}
		i += 1;
	}
	return true;
}

fn main () {
	const NTH: u32 = 10001;
	let mut number: u32 = 1;
	let mut i: u32 = 1;
	
	while i < NTH {
		number += 2;
		if is_prime (number) {
			i += 1;
		}
	}
	
	println! ("{}", number);
}

