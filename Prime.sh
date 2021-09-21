clear
echo "Enter the number"
read n
f=0					
for((i=2;i<n;i++))
do
	let x=n%i			
	if [ $x -eq  0 ]		# Condition for not prime
	then
		f=1
		break
	fi
done
if [ $f -eq 0 ]
then 
	echo "$n is a prime number"
else
	echo "$n is a not a prime number"
fi 	