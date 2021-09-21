echo "How many numbers: "
read n
i=0
echo "Now enter numbers"
while [ $i -lt $n ]
do	
     read arr[$i]         #taking the numbers in array
      let i=i+1
done
i=0
echo "Numbers before sorting"
while [ $i -lt $n ]
do
     echo ${arr[$i]}
     let i=i+1
done
i=0
j=0
while [ $i -lt $n ]
do
      let j=i+1
           while [ $j -lt $n ]
           do
                if [ ${arr[$i]} -gt ${arr[$j]} ]
                    then
                        tmp=${arr[$i]}
                        arr[$i]=${arr[$j]}
                        arr[$j]=$tmp
                 fi
             let j=j+1
          done
      let i=i+1
   done
i=0
echo "Numbers after sorting"
while [ $i -lt $n ]
do
  echo ${arr[$i]}
  let i=i+1
done
