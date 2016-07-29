#!/bin/bash

MYSQL=`which mysql`

statement="select * from people where sex='f';"

$MYSQL test -u mysql -p -e "$statement" | tr "[\011]" ":"| awk -F":" '{printf ("%-8s\t%s\n",$1,$4)}'
