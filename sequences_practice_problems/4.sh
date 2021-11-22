#!/bin/bash
nums=()
for i in {1..5}; do
    nums+=("$(shuf -i 10-99 -n 1)")
done
echo ${nums[@]}
sum=0;
for i in "${nums[@]}"
do
    sum=$(($i+$sum))
done

# Output results:
echo "sum is: $sum"
echo "avg is"
echo "scale=2;$sum/5" | bc -l