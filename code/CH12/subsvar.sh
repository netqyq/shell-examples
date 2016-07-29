#!/bin/bash

echo "The level of father Shell is: $BASH_SUBSHELL"
outervar=OUTER

(
echo "The level of SubShell is: $BASH_SUBSHELL"
innervar=INNER
echo "innervar=$innervar"
echo "outervar=$outervar"
)

echo "The level of father Shell is: $BASH_SUBSHELL"

if [ -z "$innervar" ]
then
  echo "The \$innervar is not defined in main body."
else
   echo "The \$innervar is defined in main body."
fi
