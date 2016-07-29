#for_exam4
#!/bin/bash

sum=0

for i in $(seq 1 2 100)
do
     let "sum+=i"
done
    
echo "sum=$sum"
