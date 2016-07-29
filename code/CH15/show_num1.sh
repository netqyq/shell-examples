#show_num1.sh
#!/bin/bash

while [ "$#" -gt 0 ]
do
    echo $*
    shift
done
