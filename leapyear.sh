read -p "enter the 4 digit year: " year;
if [[ $year%4 -eq 0 && $year%100 -ne 0 || $year%400 -eq 0 ]]
then
     echo "$year year is a leap year";
else
     echo "$year year is not a leap year";
fi