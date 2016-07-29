
#file_can_execute_or_not2.sh
#!/bin/bash

if [ $# -lt 2 ]
then
    echo "The num of parameter is not right! "
    exit 0
fi

for fname in "$@"
do
    if [ -f "$fname" -a -x "$fname" ]
    then
        echo "The file $fname can be executed! "e
    elif [ ! -f "$fname" ]
    then
        echo "Unable to find the file $fname !"
     else
        echo "Unable to execute the file $fname ! "
     fi
done
