
trait Prime {
	fn is_prime (&self) -> bool;
}

impl Prime for u64 {
	fn is_prime (&self) -> bool {
		if *self % 2 != 0 {
			let max = (*self as f64).sqrt () as u64;
			for i in (3..=max).step_by (2) {
				if *self % i == 0 {
					return false;
				}
			}
		}
		return true;
	}
}

fn main () {
	const MAX: u64 = 2000000;
	let mut sum: u64 = 2;
	
	for i in (3..MAX).step_by (2) {
		if i.is_prime () {
			sum += i;
		}
	}
	
	println! ("{}", sum);
}

