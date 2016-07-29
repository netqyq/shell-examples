#!/bin/bash

echo "Father Process ID is $$"
localvar="Define a local variable."
echo "localvar=$localvar"
ENVVAR="Define a environment variable."
export ENVVAR
echo "ENVVAR=$ENVVAR"
$PWD/child.sh
echo "Return to father process: $$"
echo "localvar=$localvar"
echo "ENVVAR=$ENVVAR"
