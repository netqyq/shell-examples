#for_exam11.sh
#!/bin/bash

sum=0

for(( i = 1; i <= 100; i = i + 2 ))
do
     let "sum += i"
done

echo "sum=$sum"
