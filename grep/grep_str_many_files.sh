#!/bin/bash
# Purpose: find string "POSIX" in many C source files.

for file in *
do
  if grep -l POSIX $file
  then
    more $file
  fi
done
