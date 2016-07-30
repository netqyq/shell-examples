#!/bin/bash

# $@ each param is itself
# $* treat all params as one param



count=1
for param in "$@"
do
    echo "\$@ Parameter #$count = $param"
    count=$[$count + 1]
done


count=1
for param in "$*"
do
    echo "\$* Parameter #$count = $param"
    count=$[ $count + 1 ]
done


