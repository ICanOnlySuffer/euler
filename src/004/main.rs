
const MAX: u32 = 999;
const MIN: u32 = 100;

fn reverse (mut number: u32) -> u32 {
	let mut reversed: u32 = 0;
	
	while number != 0 {
		reversed = reversed * 10 + (number % 10);
		number /= 10;
	}
	
	return reversed;
}

#[inline]
fn is_palindrome (number: u32) -> bool {
	return reverse (number) == number;
}

fn main () {
	let mut largest: u32 = 0;
	
	for i in MIN..=MAX {
		for j in MIN..=MAX {
			let number: u32 = i * j;
			
			if is_palindrome (number) && number > largest {
				largest = number;
				break;
			}
		}
	}
	
	println! ("{}", largest);
}

