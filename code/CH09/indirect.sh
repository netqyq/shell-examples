#!/bin/bash
variable1=variable2
variable2=Hadoop
echo "varialbe1=$variable1"

eval tempvar=\$$variable1
echo "tempvar=$tempvar"

echo "Indirect ref variable1 is :${!variable1}"
