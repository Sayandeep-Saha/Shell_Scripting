echo "Enter the file name"
read fnm
echo "The file contains the following numbers"
cat $fnm
echo "The second largest number is: "
cat $fnm | sort -nr | head -2 | tail -1
