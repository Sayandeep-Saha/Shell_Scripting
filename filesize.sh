clear
for f in *                     # '*' represents all files and directories under pwd
do
    if [ -f $f ]; then          # '-f' means files
        count=`wc -c $f|cut -f1 -d" "`
        if [ $count -ge 200 ]; then 
            echo "$f has file size $count"
        fi
        if [ -d $f ]; then          # '-d' means directories
            echo "$f is Directory"
        fi
    fi
done