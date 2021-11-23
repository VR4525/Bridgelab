dice1=$((((RANDOM&6))+1))
echo $dice1
dice2=$((((RANDOM%6))+1))
echo $dice2
result=$(($dice1+$dice2))
echo "result: $dice1+$dice2 = " $result