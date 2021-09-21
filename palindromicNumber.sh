echo "Enter Lower Range"
read lr 
echo "Enter Upper Range"
read ur
while [ $lr -le $ur ]
do
    num=$lr    
    number=$num
    sum=0
    while [ $num -gt 0 ]  
    do  
        rem=`expr $num % 10`
        sum=`expr $sum \* 10 + $rem`
        num=`expr $num / 10`
    done
    if [ $sum -eq $number ]
    then
        echo "palindrome $number"
    fi
    lr=`expr $lr + 1`
done