#!/bin/bash

trap 'echo "before execute line:$LINENO, a=$a,b=$b,c=$c"' DEBUG
a=0
b=2
c=100
while :                          #冒号相当于TRUE
do
    if ((a >= 10))                 #i大于等于10时，跳出while循环
 then
        break
    fi

let "a=a+2"
let "b=b*2"
let "c=c-10"
done
