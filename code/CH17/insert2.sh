#!/bin/bash

MYSQL=`which mysql`

if [ $# -ne 4 ]
then
  echo "Usage:insert2.sh name sex birth birthaddr"
else
  statement="insert into people values ('$1','$2','$3','$4');"
$MYSQL test -u mysql -p <<EOF
$statement
#select * from people;
EOF
 if [ $? -eq 0 ]
 then
  echo "Data sucessfully added."
else
 echo "Problem adding data"
 fi
fi
