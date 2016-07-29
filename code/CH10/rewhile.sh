#!/bin/bash

ls /etc > loggg

while [ "$filename" != "rc.d" ]; do
 read filename
 let "count +=1"
done < loggg

echo "$count times read"
echo -n "-----Pls. Input Data:-----"
read test
echo $test

