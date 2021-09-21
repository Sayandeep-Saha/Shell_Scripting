echo "Enter a value: "

read a

echo "Enter a value: "

read b

echo "Enter a value: "

read c

x1= echo "scale=7; (-$b+sqrt($b^2-4*$a*$c))/(2*$a)"|bc'

x2= echo "scale=7; (-$b-sqrt($b^2-4*$a*$c))/(2*$a)"|bc'

echo $x1

echo $x2