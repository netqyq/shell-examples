#!/bin/bash
# using one command line parameter

factorial=1

for((i=1; i <= $1; i++ ))
do
    factorial=$[ $factorial * $i]
done

echo "the value of factorial $1 is $factorial"
