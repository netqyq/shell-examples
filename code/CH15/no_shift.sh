
#no_shift.sh
#/bin/bash

echo "number of arguments is $#"

echo "What you input is: "

while [[ "$*" != "" ]]
do
    echo "$1"
done

