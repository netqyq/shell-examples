#!/bin/bash

#city[0]=Nanjing
#city[1]=Beijing
#city[9]=Melbourne
#city[15]=NewYork

city=(Nanjing Atlanta Massachusetts Marseilles)

echo "Extracting Substring"
echo ${city[*]:0}
echo ${city[*]:1}
echo ${city[*]:3}
echo ${city[*]:0:2}
echo
echo "Removing Substring"
echo ${city[*]#M*a}
echo ${city[*]##M*a}
echo
echo "Replcing Substring"
echo ${city[*]/M*s/Year}
echo ${city[*]//M*s/Year}
