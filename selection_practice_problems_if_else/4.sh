#!/bin/bash
RANDOM=$$

if [ $(($RANDOM % 2)) -eq 0 ] 
then 
    echo "Head"
else
    echo "Tail"
fi