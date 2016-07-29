#!/bin/bash

ARGS=1
E_BADARGS=55
E_NOFILE=56

if [ $# -ne "$ARGS" ]
then
  echo "Usage: `basename $0` filename"
  exit $E_BADARGS
fi

if [ ! -f "$1" ]
then
  echo "File \"$1\" does not exits."
  exit $E_NOFILE
fi

sed -e 's/\.//g' -e 's/\,//g' -e 's/\://g' -e 's/ /\n/g' "$1" | sort | uniq -c | sort -nr
