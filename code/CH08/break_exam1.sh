#break_exam1.sh
#!/bin/bash

sum=0

for (( i=1; i <= 100; i++))
do 
    let "sum+=i"

    if [ "$sum" -gt 1000 ]
    then
        echo "1+2+...+$i=$sum"
        break
    fi
done
