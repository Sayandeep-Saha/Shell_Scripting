eval echo \$$#>file1
cat file1
exec<file1
read x
while [ $# -gt 1 ]
do
    cal $1 $x
    shift
done
rm file1
echo -e "\n End of program"
