#!/bin/bash

#declare -a arrivedcity

echo "What city have you been arrived?"
echo "The input should be separated from each other by a SPACE"
read -a arrivedcity
echo
for i in "${arrivedcity[@]}"
do
  echo "$i"
done

echo "The length of this array is ${#arrivedcity[@]}."
echo "Executing UNSET operation........."
unset arrivedcity[1]
echo "The length of this array is ${#arrivedcity[@]}."
echo "Executing UNSET operation........."
unset arrivedcity
echo "The length of this array is ${#arrivedcity[@]}."
