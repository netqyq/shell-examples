#!/bin/bash
exec 8<&0
exec < hfile
read a
read b

echo "---------------------------"
echo $a
echo $b

echo "Close FD 8:"
exec 0<&8 8<&-
echo -n "Pls. Enter Data:"
read c
echo $c
