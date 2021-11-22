#!/bin/bash
read -p "Enter a: " a
read -p "Enter b: " b
read -p "Enter c: " c

nums=()
nums+=("$(($a+$b*$c))")
nums+=("$(($a%$b+$c))")
nums+=("$(($c+$a/$b))")
nums+=("$(($a*$b+$c))")


max=${nums[0]}
min=${nums[0]}

# Loop through all elements in the array
for i in "${nums[@]}"
do
    # Update max if applicable
    if [[ "$i" -gt "$max" ]]; then
        max="$i"
    fi

    # Update min if applicable
    if [[ "$i" -lt "$min" ]]; then
        min="$i"
    fi
done

# Output results:
echo "Max is: $max"
echo "Min is: $min"