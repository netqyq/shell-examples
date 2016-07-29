#ifelse_exam3.sh
#!/bin/sh
if [ "$1" ]
then   
    echo "What you input is not null!"
    if [ -e "$1" ]
    then
        echo "The file $1 is existence !"
    else
        echo " The file $1 is not existence !"
    fi
else
     echo "what you input is null!"
fi
