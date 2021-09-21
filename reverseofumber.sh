echo "Enter A Number"
read num
while [$num -gt 0]
do
    rem=`expr $num%10`
    echo -e "$rem\c"
    num=`expr $num/10`
done