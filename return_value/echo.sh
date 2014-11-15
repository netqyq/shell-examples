#!/bin/bash
# using the echo to return a value

function db1 {
	read -p 'enter a value: ' value
	echo $[ $value * 2 ]
}

result=`db1`
echo "the new value is $result"

