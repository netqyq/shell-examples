#!/bin/bash

#RANDOM=$$

PIPS=6
MAX=1000
throw=1

one=0
two=0
three=0
four=0
five=0
six=0

count()
{
case "$1" in
 0) let "one=one+1";;
 1) let "two=two+1";;
 2) let "three=three+1";;
 3) let "four=four+1";;
 4) let "five=five+1";;
 5) let "six=six+1";;
esac
}

while [ "$throw" -le "$MAX" ]
do
  let "dice=RANDOM % $PIPS"
  count $dice
  let "throw=throw+1"
done

echo "The statistics results are as follows:"
echo "one=$one"
echo "two=$two"
echo "three=$three"
echo "four=$four"
echo "five=$five"
echo "six=$six"

