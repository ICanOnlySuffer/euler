
trait Prime {
	fn is_prime (&self) -> bool;
}

impl Prime for u64 {
	fn is_prime (&self) -> bool {
		let mut i: u64 = 2;
		while i * i <= *self {
			if *self % i == 0 {
				return false;
			}
			i += 1;
		}
		return true;
	}
}

fn main () {
	const MAX: u64 = 2000000;
	let mut sum: u64 = 0;
	
	for i in 2..MAX {
		if i.is_prime () {
			sum += i;
		}
	}
	
	println! ("{}", sum);
}

