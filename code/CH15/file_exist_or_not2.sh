#file_exist_or_not2.sh
#!/bin/bash

echo "Please input the directory name: "
read dname

if [ ! -d $dname ]
then
    echo "Unable to read or find the directory ! "
fi

echo "Please input the file name: "
read fname

if [ -f "$dname/$fname" ]
then
    echo "Able to find the file $dname/$fname"
else
    echo "Unable to find the file $dname/$fname"
fi
