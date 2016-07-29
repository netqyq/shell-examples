#!/bin/bash

if [ -n "$1" ] && echo "The 1st argument=$1" && [ -n "$2" ] && echo "The 2nd argument=$2"
then
  echo "At least TWO arguments are passed to this script."
else
 echo "Less than TWO arguments are passed to this script."
fi
exit 0
