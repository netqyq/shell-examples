#!/bin/bash

end=$1
#echo "end=$end"

cat $2 | tr -cs "[a-z][A-Z]" "[\012*]" |
  tr A-Z a-z |
    sort |
     uniq -c |
       sort -k1nr -k2 |
         head -n"$end"       
 # sed -n '1,$end'p
