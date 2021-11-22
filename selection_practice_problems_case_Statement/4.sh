#!/bin/bash
echo "1 - Feet to inch"
echo "2 - Feet to meter"
echo "3 - inch to feet"
echo "4 - meter to feet"
read -p "Enter conversion type num: " con
read -p "Enter value to convert: " num
  
#Pass the variable in string
case "$con" in
   1 ) echo $(($num*12));;
   2 ) echo "scale=2;$num*30/100" | bc -l;;
   3 ) echo "scale=2;$num*/12" | bc -l;;
   4 ) echo "scale=2;$num*328)/100" | bc -l;;
esac