#!/bin/bash
for ip in `seq 1 255`
  do
    {
     ping -c 1 192.168.0.$ip > /dev/null 2>&1
     if [ $? -eq 0 ]; then
          echo 192.168.0.$ip UP
     else
          echo 192.168.0.$ip DOWN
     fi
   }&
done
wait
exit 0
