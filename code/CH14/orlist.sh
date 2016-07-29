#!/bin/bash

MAXARGS=3
ERROR=68
test $# -eq $MAXARGS  || (echo "Usage: `basename $0` $MAXARGS arguments" && false) || exit $ERROR
echo "Correct arguments are passed to this script."
exit 0

