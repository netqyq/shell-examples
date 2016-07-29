#!/bin/bash

city[1]="Hong Kong"
city[100]=Massachusetts
city[101]="New York"
city[10000]=Atlanta

for i in "${city[*]}"
do
echo $i
done

