#while_exam2.sh
#!/bin/bash

sum=0

i=1

while(( i <= 100 ))
do
     let "sum+=i"
     let "i += 2"   
done

echo "sum=$sum"
