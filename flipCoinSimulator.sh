read -p "Enter the number how many times the coin flip: " n

h_ct=0
t_ct=0
for (( i=0; i<n; i++ ))
do
    coin=$((RANDOM%2))
    if [ $coin == 0 ]
    then
	((h_ct++)) 
	if [ $h_ct == 21 ]
	then
	    echo Heads Count: $h_ct
	    echo Heads won by flipping coin by $i times
            break 
	fi 
    else
	((t_ct++))
	if [ $t_ct == 21 ]
	then
	    echo Tails Count: $t_ct
	    echo Tails won by flipping coin by $i times
            break 
        fi
    fi
done
for (( i=0; i<=n; i++ ))
do
if [[ $h_ct == 21 || $t_ct == 21 ]]
then
    break
else
    if [ $h_ct -gt $t_ct ]
    then
        diff_ct=$((h_ct-t_ct))
        echo Heads Count: $h_ct
        echo Tails Count: $t_ct
        echo Heads won by $diff_ct points on flipping coin $n times
	break
    elif [ $h_ct -lt $t_ct ]
    then
        diff_ct=$((t_ct-h_ct))
        echo Heads Count: $h_ct
        echo Tails Count: $t_ct
        echo Tails won by $diff_ct points on flipping coin $n times
	break
    else
        for (( i=0; i<=n; i++ ))
        do
           coin=$((RANDOM%2))
           if [ $coin == 0 ]
           then
	       ((h_ct++))
	       diff_ct=$((h_ct-t_ct))
               if [ $diff_ct -eq 2 ]
               then
	           echo Total Heads Count: $h_ct
	           echo Total Tails Count: $t_ct
	           echo Heads won by 2 points on flipping coin $((i+n)) times
	           break
               fi    
    	   else
	       ((h_ct++))
	       diff_ct=$((h_ct-t_ct))
               if [ $diff_ct -eq 2 ]
               then
		   echo Total Heads Count: $h_ct
		   echo Total Tails Count: $t_ct
		   echo Heads won by 2 points on flipping coin $((i+n)) times
		   break
	      fi
           fi
       done
    fi
fi
done