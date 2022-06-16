
fn main () {
	let mut sum: u32 = 0;
	let mut a: u32 = 1;
	let mut b: u32 = 1;
	
	while b < 4_000_000 {
		let c: u32 = a;
		a = b;
		b += c;
		
		if a % 2 == 0 {
			sum += a;
		}
	}
	
	println! ("{}", sum);
}

