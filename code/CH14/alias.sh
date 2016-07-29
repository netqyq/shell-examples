#!/bin/bash

shopt -s expand_aliases
alias detail="ls -l"
detail /root/in*
echo
directory=/root/
prefix=in*
alias vardetail="ls -l $directory$prefix"
vardetail

echo "Deleting all aliases:"
unalias -a
detail
vardetail
