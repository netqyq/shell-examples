#!/bin/bash
(grep -r "root" /etc/* | sort > part1) &
(grep -r "root" /usr/local/* | sort > part2) &
(grep -r "root" /lib/* | sort > part3) &

wait
cat part1 part2 part3 | sort > parttotal
echo "Run time of this script is:$SECONDS"
