#!/bin/bash

MAX=5
i=1

echo "$MAX random numbers are generated:"
while [ "$i" -le $MAX ]
do
 number=$RANDOM
 echo $number
 let "i=i+1"
done
