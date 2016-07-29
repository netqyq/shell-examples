#!/bin/bash

echo "Changing current work directory"
cd /etc
echo "Now in $PWD"

set -r
echo "---------IN RESTRICTED MODE------------"
echo "Trying to change current work directory"
cd /usr/local
echo "Now in `pwd`"
echo
echo "Trying to change \$SHELL"
SHELL="/bin/sh"
echo "\$SHELL=$SHELL"
echo
echo "Trying to redirect output to a file"
who > outputnull
ls -l outputnull

