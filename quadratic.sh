echo "Enter the value of a,b,c"
read a
read b
read c
k=`expr $b \* $b`
j=`expr 4 \* $a \* $c`
l=`expr $k - $j`
if [ $l -lt 0 ]
  then
         l=`expr -1 \* $l`
         d=$(echo "scale=0;sqrt($l)" | bc -l)
         echo "determinant" $d
         echo "roots are imaginary"
    exit
fi
d=$(echo"scale=0;sqrt($l)" | bc -l)
echo "discriminant" $d
if [ $d -gt 0 ]
  then 
      u=`expr -1 \* $b + $d`
      u1=`expr 2 \* $a`
      x1=`expr $u / $u1`
       v=`expr -1 \* $b -$d`
       x2=`expr $v / $u1`
       echo "roots are real and unequal and the value: $x1,$x2"
    exit
fi
if [ $d -eq 0 ]
     then
            u3=`expr 2 \* $a`
            x=$(echo "scale=2;-1 * $b/$u3" | bc -l)
            echo "roots are real and equal and the value:" $x
      exit 
fi
