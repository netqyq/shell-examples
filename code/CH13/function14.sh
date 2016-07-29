
#function14.sh
#!/bin/bash

move=0

dohanoi() 
{
    if [ $1 -eq 0 ]
    then
       echo "" 
    else
        dohanoi "$(($1-1))" $2 $4 $3
        echo "move $2 ----> $3"
        
        let "move=move+1"

        dohanoi "$(($1-1))" $4 $3 $2
    fi
    
    if [ $# -eq 1 ]
    then
        if [ "$(( $1 > 1 ))" -eq 1 ]
        then
            dohanoi $1 A C B
            echo "Total moves  = $move"
        else
           echo "The number of disk which you input is illegal! "
         fi
    fi
}

echo "Please input the num of disk:"
read num
dohanoi $num 'A' 'B' 'C'


