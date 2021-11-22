#!/bin/bash
echo "script to check if date is between March 20 to June 20"
read -p "Enter day: " day
read -p "Enter month: " month


if (($month >= 3 && $month <= 6 ))
then
    if (($month == 3 && $day >= 20 && $day <= 31)); then
        echo "true"
    elif (($month == 6 && $day >= 1 && $day <= 20)); then
        echo "true"
    elif (($day >= 1 && $day <= 30)); then
        echo "true"
    else
        echo "false"
    fi
else
    echo "false"
fi