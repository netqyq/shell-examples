#!/bin/bash

# use mulit-process

for i in `seq 1 255`
do
{
    ping -c 1 192.168.0.$i > /dev/null 2>&1
    if [ $? -eq 0 ];then
        echo "192.168.0.$i UP"     
    else
        echo "192.168.0.$i DOWN"     
    fi
} &        
done
wait
