use std::io::BufReader;
use std::io::BufRead;
use std::fs::File;

fn main () {
	const N_DIGITS: usize = 13;
	let mut current: [u8; N_DIGITS] = [0; N_DIGITS];
	let mut largest: u64 = 0;
	
	let args: Vec<String> = std::env::args ().collect ();
	let buffer = BufReader::new (File::open (&args [1]).unwrap ());
	
	let mut index: usize = 0;
	for line in buffer.lines () {
		for c in line.unwrap ().chars () {
			current [index] = c.to_digit (10).unwrap () as u8;
			index = (index + 1) % N_DIGITS;
			
			let mut product: u64 = 1;
			for i in current {
				product *= i as u64;
			}
			
			if product > largest {
				largest = product;
			}
			
			index = (index + 1) % N_DIGITS;
		}
	}
	
	println! ("{}", largest);
}

