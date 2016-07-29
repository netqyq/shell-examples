# ifelse_exam1: input a file name and test the file exist or not.
#!/bin/sh
if [ ! -e "$1" ]
then
   echo "file $1 do not exist."
   exit 1
else
   echo "file $1 exits."
fi

