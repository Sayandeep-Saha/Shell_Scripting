echo "ENTER THE SOURCE FILENAME"
read fnm
while read line
do
    set $line
    newline=`echo $line | sed 's/unix/dos/g'`
    echo $newline >> newfile
done < $fnm
echo "FILE CONTENT BEFORE CHANGE"
cat $fnm
echo "FILE CONTENT AFETR REPLACING UNIX WITH DOS"
cat newfile
rm newfile