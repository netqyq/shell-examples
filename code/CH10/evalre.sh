#!/bin/bash

while read NAME VALUE
do
  eval "${NAME}=${VALUE}"
#${NAME}=${VALUE}
done <evalsource
echo "var1=$var1"
echo "var2=$var2" 
echo "var3=$var3" 
echo "var4=$var4" 
echo "var5=$var5" 
