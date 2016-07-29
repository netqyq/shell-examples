
#root_or_not.sh
#!/bin/bash

exitcode=5

message="Sorry, you are not root..exiting"

if [ $UID -ne 0 ]
then
    echo "$message" >&2
    exit $exitcode
fi
 
echo "If the user is root, will execute this row. "

# script_end
