
#no_break_exam.sh
#!/bin/bash

sum=0

for (( i=1; i <= 100; i++))
do 
    let "sum+=i"
done

echo "1+2+...+100=$sum"
