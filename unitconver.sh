echo "Select conversion type: "
echo "1.ft to in 2.ft to mts 3.sq.mts to acres"
read ct
case $ct in
   1)
	in=inches
	ft=feet
	n=42
	echo $n $in = $((n/12)) $ft
	;;
   2)
	mts=meters
	ft=feet
	echo 60 $ft = $((60*3/10)) $mts
	echo 40 $ft = $((40*3/10)) $mts
	;;
   3)
	mts=meters
	ft=feet
	sq=squaremeters
	ac=acres
	ft=feet
	length=$((60*3/10))
	echo 60 $ft = $length $mts
	breadth=$((40*3/10))
	echo 40 $ft = $breadth $mts
	rArea=$((length*breadth))
	echo "$length $mts* $breadth $mts = $rArea $sq"
	aOf25P=$((25*rArea))
	echo "25 * $rARea $sq = $aOf25P $sq"
	echo $aOf25P $sq = $((aOf25P/4047)) $ac
	;;
esac