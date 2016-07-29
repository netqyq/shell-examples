#while_exam4.sh
#!/bin/bash

echo "Please input the num "
read num

factorial=1

while [ "$num" -gt 0 ]
do
    let "factorial= factorial*num"
    let "num--"
done

echo "The factorial is $factorial"
