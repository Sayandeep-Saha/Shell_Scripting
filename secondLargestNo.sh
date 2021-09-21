#Shell Script to find out 2nd largest elements of n numbers without using any sorting algorithm 


echo -e "Enter Number Of Elements:   \c"
read n
echo "Enter $n Number:"

while [ $n -gt 0 ]
do
    read num
    echo $num >> fnm        #   To create a file named fnm
    let n=n-1
done

echo "Entered Numbers:"
cat fnm                     #   To show the content of the file named as fnm


#   To show the 2nd largest number

echo "2nd Largest Number:"
echo `sort -nr fnm | head -2 | tail -1`
rm fnm