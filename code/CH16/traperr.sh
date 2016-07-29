#!/bin/bash

fun2()
{
  echo "This is an error function"
  var=2010
  return 1
}
trap 'echo "Line:$LINENO,var=$var"' ERR
fun2
ipconfig
