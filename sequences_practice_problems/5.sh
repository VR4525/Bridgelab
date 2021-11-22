#!/bin/bash
echo "42 inch in feet will be:"
echo "scale=2;42/12" | bc -l

echo "25 plots of 60*40 feet -- area in acre will be"
echo "scale=3;60*40*25/43560" | bc -l

