
fn gcd (mut a: u64, mut b: u64) -> u64 {
	while a != 0 {
		(a, b) = (b % a, a);
	}
	return b;
}

#[inline]
fn lcm (a: u64, b: u64) -> u64 {
	return a * b / gcd (a, b);
}

fn main () {
	let mut smallest: u64 = 1;
	for i in 2..=20 {
		smallest = lcm (smallest, i);
	}
	println! ("{}", smallest);
}


