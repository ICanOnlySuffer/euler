
fn main () {
	let mut number:u64 = 600851475143;
	let mut largest_prime_factor:u64;
	
	if number % 2 == 0 {
		largest_prime_factor = 0;
		while number % 2 == 0 {
			number /= 2;
		}
	} else {
		largest_prime_factor = 1;
	}
	
	let max:u64 = (number as f64).sqrt () as u64;
	for i in 3..=max {
		if number % i == 0 {
			if i > largest_prime_factor {
				largest_prime_factor = i;
			}
			while number % i == 0 {
				number /= i;
			}
		}
	}
	
	println! ("largest prime factor: {}", largest_prime_factor);
}

