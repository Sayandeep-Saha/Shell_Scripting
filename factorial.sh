#Shell script to find the factorail of a number


fact ()
{
    if [ $i -gt 0 ]; then
        result=`expr $result \* $i`
        i=`expr $i - 1`
        fact #recursive call
    fi        
}
i=0
result=1
echo "Enter the number to find the factrial"
read data
if [ $data -eq 0 ]; then
    echo "factorial of $data is 1"
    exit
elif [ $data -lt 0 ]; then
    echo "Invalid Number"
    exit
else
    i=$data
    fact #calling the fact() function
fi
echo "FACTORIAL of $data is $result"