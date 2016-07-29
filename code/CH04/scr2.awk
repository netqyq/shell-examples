#!/bin/awk -f
BEGIN {FS=","}
{total=$4+$5+$6+$7+$8 
avg=total/5
print $1,avg}
