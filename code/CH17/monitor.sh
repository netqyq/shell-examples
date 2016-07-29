#!/bin/bash

sed '1,/<CLUSTER/d' gmond_msg_1.txt > machine_record
record="Recording each line!"
MYSQL=`which mysql`

while [ -n "$record" ]
do

read record
first_field=`echo $record | cut -d" " -f1`
#echo $first_field
#let "count+=1"
#if [ $count -ge 1 ]
#then
#break
#fi


if [ "$first_field" = "<HOST" ]
then
echo "Processing HOST and IP"
index=0

VAR[$index]=`echo $record | cut -d" " -f2 | sed -e 's/^.*=\"//' -e 's/\"//'`
#HOST=`echo $record | cut -d" " -f2 | sed -e 's/^.*=\"//' -e 's/\"//'`
#echo "HOSTNAME=$HOST"
#echo ${VAR[$index]}
let "index+=1"
VAR[$index]=`echo $record | cut -d" " -f3 | sed -e 's/^.*=\"//' -e 's/\"//'`
#echo ${VAR[$index]}

let "index+=1"

elif [ "$first_field" = "<METRIC" ]
then
#echo "Processing concreate!"

 #  if [ -z ${METRIC[0]} ]                          #METRIC and UNITS have not been inisilized
 #  then
 #   METRIC[$i]=`echo $record | cut -d" " -f2 | sed -e 's/^.*=\"//' -e 's/\"//'`
 #   UNITS[$i]=`echo $record | cut -d" " -f5 | sed -e 's/^.*=\"//' -e 's/\"//'`
 #   let "i+=1"
 #  fi
VAR[$index]=`echo $record | cut -d" " -f3 | sed -e 's/^.*=\"//' -e 's/\"//'`
let "index+=1"

elif [ "$first_field" = "</HOST>" ]
then
echo "Writing into Database"
statement="insert into resource values ("
for j in ${VAR[@]}
do
# echo $j
 statement=$statement\'$j\',
done
statement=${statement%,}\)\;
echo $statement
$MYSQL test -u mysql  <<EOF
#insert into people values ('Z Wu','m','1982-09-11','China');
$statement
EOF
fi

done < machine_record
