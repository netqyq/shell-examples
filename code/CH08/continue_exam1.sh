#continue_exam1.sh
#!/bin/bash

m=1

for (( i=1; i < 100; i++ ))
do
    
     let "temp1=i%7"
 
    if [ "$temp1" -ne 0 ]
    then
        continue
    fi
    
    echo -n "$i  "
    
    let "temp2=m%7"
    
    if  [ "$temp2" -eq 0 ]
    then
        echo ""
    fi
    
    let "m++"
done
