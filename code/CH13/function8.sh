
#function9.sh
#!/bin/bash

show_week()
{
    for day in Monday Tuesday Wednesday Thursday Friday Saturday Sunday
    do
        echo  -n "$day "
    done
    echo ""
}

show_number()
{
    for(( integer = 1; integer <= 7; integer++ ))
    do
        echo -n "$integer "
    done
     
    echo ""
}

show_square()
{
    i=0
    
    until [[ "$i" -gt 7 ]]
    do
        let "square=i*i"
        echo "$i * $i = $square"
        let "i++"
    done
}

show_week
show_number
show_square
