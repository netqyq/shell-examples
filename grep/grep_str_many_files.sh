#!/bin/bash


# case 1, Purpose: find string "POSIX" in many C source files, and print the matched file name and file content.
for file in *
do
  if grep -l POSIX $file
  then
    more $file
  fi
done

# one line shell, function equals to above.
# for file in *; do if grep -l hello $file; then more $file; fi; done



find ./ -name "*" | xargs grep ""
