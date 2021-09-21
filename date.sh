hr = 'date +%T'
if [ $hr -ge 00:00:00 -a $hr -lt 11:59:59 ]; then
echo " Good Morning "
elif [ $hr -gt 12:00:00 -a $hr -lt 14:59:59 ]; then
echo " Good Afternoon "
elif [ $hr -ge 15:00:00 -a $hr -lt 17:59:59 ]; then
echo " Good Evening "
else
echo " Good Night"
fi