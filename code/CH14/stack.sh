#!/bin/bash

MAXTOP=50

TOP=$MAXTOP

TEMP=
declare -a STACK

push()
{
if [ -z "$1" ]
then
   return
fi

#echo $#
#for ((i=1; i<=$#; i++))
until [ $# -eq 0 ]
do
let TOP=TOP-1

STACK[$TOP]=$1
shift

done

return
}

pop()
{
TEMP=

if [ "$TOP" -eq "$MAXTOP" ]
then
 return
fi

TEMP=${STACK[$TOP]}
unset STACK[$TOP]
let TOP=TOP+1
return
}

status()
{

echo "=========================="
echo "==========STACK=========="
for i in ${STACK[@]}                                
do
echo $i
done
echo
echo "Stack Pointer=$TOP"
echo "Just popped \""$TEMP"\" off the stack"
echo "=========================="
echo

}

push yukicaiqing
status
push zawuster robin tang
status

pop
pop
status
push Knuth
push Ullman Yanchun
status


