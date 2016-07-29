#!/bin/bash

city=(Beijing Nanjing Shanghai)
person=(Cai [5]=Wu Tang)

declare -a combine
combine=(${city[@]} ${person[@]})
#combine=${city[@]}${person[@]}
element_count=${#combine[@]}
index=0
while [ "$index" -lt "$element_count" ]
do
   echo "Element[$index]=${combine[$index]}"
   let "index=$index+1"
done
echo
unset combine
combine[0]=${city[@]}
combine[1]=${person[@]}
element_count=${#combine[@]}
index=0
while [ "$index" -lt "$element_count" ]
do
   echo "Element[$index]=${combine[$index]}"
   let "index=$index+1"
done
echo
declare -a subcombine=${combine[1]}
element_count=${#subcombine[@]}
index=0
while [ "$index" -lt "$element_count" ]
do
   echo "Element[$index]=${subcombine[$index]}"
   let "index=$index+1"
done
