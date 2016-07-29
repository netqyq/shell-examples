#!/bin/bash

echo -n "What is your name?"
read
echo "Your name is $REPLY"

echo -n "What is the name of your father?"
read fname
echo "Your father's name is $fname"
echo "But the \$REPLY is $REPLY"
