#!/bin/bash

fun1()
{
  echo "This is an correct function"
  var=2010
  return 0
}
trap 'echo "Line:$LINENO,var=$var"' EXIT
fun1
#var=2009
echo
echo
exit 0
