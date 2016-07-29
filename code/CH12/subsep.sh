#!/bin/bash

echo "------------IN MAINSHELL---------------------"
outervar=OUTER
echo "outervar=$outervar"

(
echo "------------IN SUBSHELL---------------------"
innervar=INNER
echo "innervar=$innervar"
outervar=OUTER-INNER
echo "outervar=$outervar"
export innervar
export outervar
)

echo "------------RETURN TO  MAINSHELL----------------"

echo "innervar=$innervar"
echo "outervar=$outervar"
