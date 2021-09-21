echo "Enter the file name: "
read fnm
echo "The replaced file is: "
cat $fnm | sed 's/UNIX/DOS/g'