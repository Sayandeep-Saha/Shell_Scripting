#shell script to reverse the file content

echo "enter file name"
read fnm
echo "ORIGINAL FILE CONTENT"
cat $fnm
count=0
while read line
do
    let count=count+1 #calculating the number of lines
done $fnm
echo "FILE CONTENT IN REVERSE ORDER"
while [ count -ge 0 ]
do
    echo `head -$count $fnm | tail -1`
    let count=count-1
done