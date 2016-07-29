#!/bin/bash

TMOUT=3
echo "What is your name?"
read fname

if [ -z "$fname" ]; then
   fname="(no answer)"
fi

echo "Your name is $fname"
