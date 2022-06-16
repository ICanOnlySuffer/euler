
for i in {0..1000}; do
	(( $i % 3 == 0 )) || (( $i % 5 == 0 )) && let sum+=$i
done

echo $sum

