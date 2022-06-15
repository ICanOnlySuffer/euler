
sum=0

for i in {0..1000}
do
	if (( $i % 3 == 0 )) || (( $i % 5 == 0 ))
	then
		let sum+=$i
	fi
done

echo "sum: $sum"

