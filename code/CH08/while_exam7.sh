#while_exam7.sh
#!/bin/bash

echo "number of arguments is $#"

echo "What you input is: "

while [[ "$*" != "" ]]
do
    echo "$1"
    shift
done
