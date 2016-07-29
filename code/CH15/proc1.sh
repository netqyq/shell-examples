#proc1.sh
#!/bin/bash

argno=1  

if [ $# -ne $argno ]
then
    echo "Usage: ' basename $0' PID-number" >&2   
fi

if [ ! -f /proc/$1 ]
then 
    echo "Process #$1 is running"
else
    echo "No such process running! "
fi
