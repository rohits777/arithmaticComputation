echo "Welcome to Arithmatic  Computation program"
 #!/bin/bash
read -p "Enter the first value 'a':" a
read -p "Enter the second value'b':" b
read -p "Enter the third value 'c':" c

declare -A computation

x=$(( a + b *c ))
      echo "$a + $b * $c = $x"
y=$(( a * b + c ))
      echo "$a * $b +$c = $y"
z=`awk 'BEGIN{printf("%0.2f", '$c' + '$a' / '$b' )}'`
       echo "$c + $a / $b = $z"
q=$(( a % b + c ))
      echo "$a % $b + $c = $q "
 computation[first]=$x
 computation[second]=$y
 computation[Third]=$z
 computation[Fourth]=$q
echo -e "values: ${computation[@]}\nkeys:${!computation[@]}"
