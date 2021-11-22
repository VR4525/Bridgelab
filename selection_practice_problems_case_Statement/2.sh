#!/bin/bash
read -p "Enter single digit number: " num
  
#Pass the variable in string
case "$num" in
   1 ) echo "Sunday" ;;
   2 ) echo "mon" ;;
   3 ) echo "tues" ;;
   4 ) echo "wed" ;;
   5 ) echo "thrus" ;;
   6 ) echo "fri" ;;
   7 ) echo "sat" ;;
esac