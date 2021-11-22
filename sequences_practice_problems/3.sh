#!/bin/bash
num1=$(shuf -i 1-6 -n 1)
num2=$(shuf -i 1-6 -n 1)
echo "$(($num1+$num2))"

