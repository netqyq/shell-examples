#!/bin/bash

trap "" QUIT
trap "echo 'You want to kill me'" TERM
#trap "echo 'You want to suspend this process!'" TERM
(./forever.sh)
