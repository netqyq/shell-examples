#!/bin/bash

localIP=`cat /etc/sysconfig/network-scripts/ifcfg-eth0 | tee debug.txt | grep 'IPADDR' | tee -a debug.txt | cut -d= -f2 | tee -a debug.txt`
echo "The local IP is: $localIP"
