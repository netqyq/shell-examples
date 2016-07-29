#!/bin/bash

filename=$1
column=$2

tempvar=${!column}
echo $column
echo $2
echo $filename
awk 'BEGIN {FS=","} 
  {print NR,$tempvar}' $filename
