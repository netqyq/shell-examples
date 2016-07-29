#!/bin/bash
count=1
MAX=5

while [ "$SECONDS" -le "$MAX" ];do
  echo "This is the $count time to sleep."
  let count=$count+1
  sleep 2
done

echo "The running time of this script is $SECONDS"
