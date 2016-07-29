#for_exam12.sh
#!/bin/bash

LIMIT=5

for(( a=1, b=5; a <= LIMIT; a++, b-- ))
do
    let "temp=a-b"
    echo "$a-$b=$temp"
done
