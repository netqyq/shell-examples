#!/bin/bash -r

echo "Changing current work directory"
cd /etc
echo "Now in $PWD"

echo "Trying to change \$SHELL"
SHELL="/bin/sh"
echo "\$SHELL=$SHELL"
echo
echo "Trying to redirect output to a file"
who > outputnull
ls -l outputnull

