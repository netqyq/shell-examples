
#function13.sh
#!/bin/bash

fact ()
{
    local num=$1
    
    if [ "$num" -eq 0 ]
    then
        factorial=1
    else
        let "decnum=num-1"

        fact $decnum

        let "factorial=$num * $?"
    fi
    return $factorial
}

fact $1
echo "Factorial of $1 is $?"

exit 0
