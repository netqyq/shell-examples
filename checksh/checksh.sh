#!/bin/bash
read -p "please input check script->" file
if [ -f $file ]; then
    sh -n $file > /dev/null 2>&1
if [ $? -ne 0 ]; then
    read -p “You input $file syntax error,[Type q to exit or Type vim toedit]” answer
    case $answer in
    q | Q)
exit 0
;;
vim)
