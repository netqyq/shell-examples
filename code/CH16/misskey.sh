#!/bin/bash

set -n
var=0
while :
 if [ $var -gt 3] 
 then 
   break
 fi
let "var=var+1"
done
