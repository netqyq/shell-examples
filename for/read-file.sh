#!/bin/bash

file="states"

for state in `cat $file`
do
    echo "Visit beautiful $state"
done

