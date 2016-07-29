#!/bin/awk -f
BEGIN {FS=","}
{split($1,name," ");for(i in name) print name[i]}
