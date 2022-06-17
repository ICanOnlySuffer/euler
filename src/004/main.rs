
const MAX: u32 = 999;
const MIN: u32 = 100;

fn is_palindrome (mut number: u32) -> bool {
	let original: u32 = number;
	let mut reversed: u32 = 0;
	
	while number != 0 {
		reversed = reversed * 10 + number % 10;
		number /= 10;
	}
	
	return original == reversed;
}

fn main () {
	let mut largest: u32 = 0;
	
	for i in (MIN..=MAX).rev () {
		for j in (MIN..=MAX).rev () {
			let number: u32 = i * j;
			
			if number < largest {
				break;
			}
			if is_palindrome (number) {
				largest = number;
				break;
			}
		}
	}
	
	println! ("{}", largest);
}

