touch outfile                                  #touch to create empty file named as 'outfile' where the output will be saved 

echo "Enter the name of the file to be converted"

read name

dd if=$name of=outfile conv=ucase               # lcase is used to covert the text of the file into lowercase   
                                                # ucase is used to convert the text of the file into uppercase

tput bold ;echo "AFTER CONVERSION"; tput sgr0   #tput bold is used here to convert AFTER CONVERSION text into bold

cat outfile                                     #cat outfile means to view content of the file 'outfile'