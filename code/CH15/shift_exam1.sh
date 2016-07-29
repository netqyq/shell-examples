#shift_exam1.sh
#!/bin/bash

if [ "$#" -gt 3 ]
then
    echo "The parameter is higher than 3! "
    exit 1
fi

echo $*

if [ -n $2 ]
then
    shift
    echo $*
fi

if [ -n $2 ]
then
    shift
    echo $*
fi

