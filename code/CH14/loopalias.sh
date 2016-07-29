#!/bin/bash

alias copy=cp

count=0
while :; do
# alias copy=cp
 alias ipconfig=ifconfig
 let count=count+1
 if [ $count -ge 2 ]
 then
 echo "Using alias in if/then structure"
 ipconfig
 break
 fi
echo "Using alias in while loop stucture"
copy output outputnew
done
