#!/bin/bash
# have bug

while [ -n "$1" ]
do  
    case "$1" in 
    -a) echo "found -a option";;
    -b) echo "found -b option";;
    -c) echo "found -c option";;
    --) shift
        break;;
    esac
    shift
done


count=1
for param in $@
do
    echo "Parameter #$count: $param"
    count=$[ $count + 1 ]
done

