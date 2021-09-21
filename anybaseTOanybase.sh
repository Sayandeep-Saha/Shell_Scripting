echo -e "Enter input base : \c"
read i
echo -e "Enter output base : \c"
read o
echo -e "Enter number : \c"
read n
n=`echo $n|tr '[a-z]' '[A-Z]'`
echo "ibase=$i">tmp1
echo $n>>tmp1
x=`bc<tmp1`
echo "obase=$o">tmp2
echo $x>>tmp2
y=`bc<tmp2`
echo "$n with input base $i changed to $y with output base $o"
rm tmp1
rm tmp2