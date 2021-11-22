#!/bin/bash
nums=()
for i in {1..5}; do
    read -p "$i. Enter number: " num
    nums+=("$num")
done

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