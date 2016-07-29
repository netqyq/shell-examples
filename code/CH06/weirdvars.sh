#!/bin/bash

variable="(]\\{}\$\""
echo $variable
echo "$variable"

IFS='\'
echo $variable
echo "$variable"
exit 0
