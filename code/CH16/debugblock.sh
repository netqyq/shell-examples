#!/bin/bash

DEBUG()
{
 if [ "$DEBUG" = "true" ]
 then
    $@
 fi
}

a=0
b=2
c=100
DEBUG echo "a=$a b=$b c=$c"
while :                         
do
  DEBUG echo "a=$a b=$b c=$c"  
  if ((a >= 10))                 #当a大于等于10时，跳出while循环
 then
        break
    fi

let "a=a+2"                       #a、b、c值不断变化
let "b=b*2"
let "c=c-10"
done
