#file_exist_or_not1.sh
#!/bin/bash

if [ -f /home/wyq/shell/file_can_execute_or_not2.sh ]
then
    echo "Able to find The file /home/wyq/shell/file_can_execute_or_not2.sh !"
elif [ -f /home/wyq/shell/chapter16/file_can_execute_or_not2.sh ]
then
    echo "Able to find The file/home/wyq/shell/chapter16/file_can_execute_or_not2.sh !"
else
    echo "Unable to find the file file_can_execute_or_not2.sh ! "
fi
