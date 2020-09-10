echo "Welcome to Arithmatic  Computation program"
 #!/bin/bash
read -p "Enter the first value 'a':" a
read -p "Enter the second value'b':" b
read -p "Enter the third value 'c':" c

x=$(( a + b *c ))
      echo "$a + $b * $c = $x"
y=$(( a * b + c ))
      echo "$a * $b +$c = $y"
z=`awk 'BEGIN{printf("%0.2f", '$c' + '$a' / '$b' )}'`
       echo "$c + $a / $b = $z"
q=$(( a % b + c ))
      echo "$a % $b + $c = $q "
declare -A computation
 computation[1]=$x
 computation[2]=$y
 computation[3]=$z
 computation[4]=$q
echo -e "values: ${computation[@]}\nkeys:${!computation[@]}"

for((count=1; count <= 4; count++))
do
	arr[$count]=${computation[$count]}
done
echo "Actual Array: ${arr[@]}"
arr2=($(echo ${arr[*]} | tr " " "\n" | sort -n))

echo "Sorting in Asecending Order"
echo "Sorted Array  : ${arr2[@]}"


arr3=($(echo ${arr[*]} | tr " " "\n" | sort -nr))

echo "Sorting in Descending Order"
echo "Sorted Array  : ${arr3[@]}"
