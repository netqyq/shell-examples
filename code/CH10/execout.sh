#!/bin/bash
exec 8>&1
exec > loggg
echo "Output of date command"
date
echo "Output of df command"
df

exec 1>&8 8>&-
echo "--------------------------------"
echo "Output of date command"
date
echo "Output of df command"
df

