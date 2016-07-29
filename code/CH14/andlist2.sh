#!/bin/bash

MAXARGS=3
ERROR=68
test $# -ne $MAXARGS  && echo "Usage: `basename $0` $MAXARGS arguments" && exit $ERROR
echo "Less than $MAXARGS arguments are passed to this script."
exit 0

