#ifelifelse_exam2.sh: 
#!/bin/sh
  
echo "Please Input a year: "
read year

let "n1=$year % 4"
let "n2=$year % 100"
let "n3=$year % 400"
if [ "$n1" -ne 0 ]
then
    leap=0
elif [ "$n2" -ne 0 ]
then
    leap=1
elif [ "$n3" -ne 0 ]
then
    leap=0
else
    leap=1
fi

if [ "$leap" -eq 1 ]
then
    echo "$year is a leap year!"
else
    echo "$year is not a leap year!"
fi

