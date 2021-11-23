s=0
c=0
n=5
while [ $c -lt $n ]
do
num=$((((RANDOM%100))+10))
echo $num
s=$(($s+$num))
((c++))
done
echo "sum: $s"
avg=$(($s/$n))
echo "average: $avg"
