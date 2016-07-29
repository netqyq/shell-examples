#function2.sh
#!/bin/bash

output()
{
     for(( num1 = 1; num1 <= 5; num1++ ))
     do
         echo -n "$num1 "
     done 
}

let "num2=1"
while [ "$num2" -le 5 ]
do
    output
    echo ""
    let "num2=num2 + 1"
done

