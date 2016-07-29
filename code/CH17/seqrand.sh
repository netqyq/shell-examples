#!/bin/bash

length=6
i=1

seq=(0 1 2 3 4 5 6 7 8 9 a b c d e f g h i j k l m n o p q r s t u v w x y z A B C D E F G H I J K L M N O P Q R S T U V W X Y Z)

num_seq=${#seq[@]}

while [ "$i" -le "$length" ]
do
 seqrand[$i]=${seq[$((RANDOM%num_seq))]}
 let "i=i+1"
done

echo "The random string is:"
for j in ${seqrand[@]}
do
 echo -n $j
done
echo
