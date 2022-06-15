
sum=0
a=1
b=1

while [ $b -lt 4000000 ]
do
	c=$a
	a=$b
	let b+=$c
	
	if (( $a % 2 == 0 ))
	then
		let sum+=$a
	fi
done

echo "sum: $sum"

