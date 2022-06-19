
struct Triplet {
	a: u32,
	b: u32,
	c: u32
}

fn get_pythagorean_triplet (sum: u32) -> Triplet {
	for a in 1..(sum / 3) {
		for b in (a + 1)..(sum / 2) {
			let c = sum - a - b;
			if a * a + b * b == c * c {
				return Triplet {a: a, b: b, c: c};
			}
		}
	}
	return Triplet {a: 0, b: 0, c: 0};
}

fn main () {
	const SUM: u32 = 1000;
	let triplet: Triplet = get_pythagorean_triplet (SUM);
	println! ("{}", triplet.a * triplet.b * triplet.c);
}

