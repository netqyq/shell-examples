#function4.sh
#!/bin/bash

half()
{
     let "n = $1"
     let "n = n/2"
     echo "In function half() n is $n"
}

let "m = $1"
echo "Before the function half() is called, m is $m"
half $m
echo "After the function half() is called, m is $m"

