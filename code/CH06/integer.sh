#!/bin/bash

a=2009
let "a+=1"
echo "a=$a"

b=xx09
echo "b=$b"
declare -i b
echo "b=$b"

let "b+=1"
echo "b=$b"

exit 0
