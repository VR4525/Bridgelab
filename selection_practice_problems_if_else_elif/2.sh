#!/bin/bash
echo "script for displaying weekdays"
read -p "Enter single digit number: " num


if (($num < 1 || $num > 7 )); then
    echo "Not a weekday"
elif (($num == 1)); then
    echo "Sun"
elif (($num == 2)); then
    echo "Mon"
elif (($num == 3)); then
    echo "Tues"
elif (($num == 4)); then
    echo "Wed"
elif (($num == 5)); then
    echo "Thru"
elif (($num == 6)); then
    echo "Fri"
elif (($num == 7)); then
    echo "Sat"
fi