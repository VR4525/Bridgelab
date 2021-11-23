echo "Enter three numbers : "
read a
read b
read c
 
echo "Enter Choice :"
echo "1. a + b * c"
echo "2. a * b + c"
echo "3. c + a / b"
echo "4. a % b + c"
read ch
 
case $ch in
  1)res=`echo $a + $b * $c`
  ;;
  2)res=`echo $a * $b + $c`
  ;;
  3)res=`echo $c + $a / $b`
  ;;
  4)res=`echo $a % $b + $c`
  ;;
esac
echo "Result : $res"