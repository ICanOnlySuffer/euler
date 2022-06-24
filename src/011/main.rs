
use std::io::BufReader;
use std::io::BufRead;
use std::fs::File;
use std::cmp::max;

struct Grid {
	nums: Vec<Vec<u8>>,
	width: usize,
	height: usize
}

impl Grid {
	fn read (filename: String) -> Vec<Vec<u8>> {
		return BufReader::new (
			File::open (filename).expect ("can't open file")
		).lines ().map (|line|
			line.expect ("can't get line").split (' ').map (|num|
				num.parse::<u8> ().expect ("can't parse String to u8")
			).collect ()
		).collect ();
	}
	
	pub fn open (filename: String) -> Self {
		let nums = Grid::read (filename);
		let width = nums [0].len ();
		let height = nums.len ();
		Self {
			nums: nums,
			width: width,
			height: height
		}
	}
}

fn main () {
	let grid = Grid::open (
		std::env::args ().nth (1).expect ("args [1]")
	);
	
	const SIZE: usize = 4;
	let mut largest: u64 = 0;
	let mut product: u64;
	
	// horizontal
	for i in 0..grid.height {
		for j in 0..(grid.width - 3) {
			product = 1;
			for k in 0..SIZE {
				product *= grid.nums [i][j + k] as u64;
			}
			largest = max (largest, product);
		}
	}
	
	// vertical
	for i in 0..(grid.height - 3) {
		for j in 0..grid.width {
			product = 1;
			for k in 0..SIZE {
				product *= grid.nums [i + k][j] as u64;
			}
			largest = max (largest, product);
		}
	}
	
	// diagonals
	for i in 0..(grid.height - 3) {
		for j in 0..(grid.width - 3) {
			product = 1;
			for k in 0..SIZE {
				product *= grid.nums [i + k][SIZE - 1 + j - k] as u64;
			}
			largest = max (largest, product);
			
			product = 1;
			for k in 0..SIZE {
				product *= grid.nums [i + k][j + k] as u64;
			}
			largest = max (largest, product);
		}
	}
	
	println! ("{}", largest);
}

