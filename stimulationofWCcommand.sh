
case $1 in

    '-l') nol=0
    while read line         # each line in read
    do
        nol=`expr $nol + 1`
    done<$2                      # To fetch the data from file that we want to execute ``  
    echo "No. of lines $nol "
    ;;

    '-w') now=0
    while read line
    do
        set $line                # set by set command
        now=`expr $now + $#`     #  $# Reads the number of arguments in $line   
    done<$2
    echo "No. of words $now "
    ;;

    '-c') noc=0
    while read line
    do
        set $line
        for word in $*      # here $ acts as pointer and * uses to fetch the words from the file.
        do
            ch=`expr length "$word"`    #length is used as per expr command to get length of each word.
            ch=`expr $ch + 1`           # ch is increased by 1 to get next word as 
                                        # there is space between two words generally.
            noc=`expr $ch + $noc`
        done
    done<$2
    echo "No. of characters $noc"
    ;;
esac