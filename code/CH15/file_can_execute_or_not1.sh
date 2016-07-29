
#file_can_execute_or_not1.sh
#!/bin/bash

if [ $# -lt 2 ]
then
    echo "The num of parameter is not right! "
    exit 0
fi

if [ ! -f "$1" ]
then
    echo "Unable to find the file $1"
fi

if [ ! -x "$1" ]
then
    echo "Unable to execute the file $1 ! "
else 
    echo " The file $1 can be executed! "
fi

if [ ! -f "$2" ]
then
    echo "Unable to find the file $2 !"
fi

if [ ! -x "$2" ]
then
    echo "Unable to execute the file $2 ! "
else 
    echo " The file $2 can be executed! "
fi
