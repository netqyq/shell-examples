
#function7.sh
#!/bin/bash

show_week()
{
     echo -n "What you input is: "
     echo "$1"

    case $1 in 
    0)
        echo "Today is Sunday. "
        return 0;;
    1)
        echo "Today is Monday. "
        return 0;;
    2)
        echo "Today is Tuesday. "
        return 0;;
    3)
        echo "Today is Wednesday. "
        return 0;;
    4)
        echo "Today is Thursday. "
        return 0;;
    5)
        echo "Today is Friday. "
        return 0;;
    6)
        echo "Today is Saturday. "
        return 0;;
    *)
        return 1;;
    esac
}

if show_week "$1"
then
    echo "What you input is right! "
else 
    echo "What you input is wrong! "
fi
exit 0



