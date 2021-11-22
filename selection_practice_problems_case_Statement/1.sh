#!/bin/bash
read -p "Enter single digit number: " num
  
#Pass the variable in string
case "$num" in
   1 ) echo "One" ;;
   2 ) echo "two" ;;
   3 ) echo "three" ;;
   4 ) echo "four" ;;
   5 ) echo "five" ;;
   6 ) echo "six" ;;
   7 ) echo "seven" ;;
   8 ) echo "eight" ;;
   9 ) echo "nine" ;;
   0 ) echo "zero" ;;
esac