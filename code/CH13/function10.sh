
#function10.sh
#!/bin/bash

count_of_int()
{
    if [ $1 -gt 9999 ]
    then
        let "place=5"
    elif [ $1 -gt 999 ]
    then
        let "place=4"
    elif [ $1 -gt 99 ]
    then
        let "place=3"
    elif [ $1 -gt 9 ]
    then
       let "place=2"
    else
        let "place=1"
    fi
    
    echo "The place of the $1 is $place."
} 

num_of_int()
{
    let "ten_thousand = $1/10000"
    let "thousand =$1/1000%10"
    let "hundred = $1/100%10"
    let "ten = $1%100/10"
    let "indiv = $1%10"

    if [ $ten_thousand -ne 0 ]
    then
       echo "$ten_thousand  $thousand  $hundred  $ten  $indiv"
    elif [ $thousand -ne 0 ]
    then
        echo "$thousand  $hundred  $ten  $indiv"
    elif [ $hundred -ne 0 ]
    then
        echo "$hundred  $ten  $indiv"
    elif [ $ten -ne 0 ]
    then
       echo "$ten  $indiv"
    else
       echo "$indiv"
    fi
}

show()
{
    echo "Please input the number: "
    read num
   
    count_of_int $num
    num_of_int $num
}

show

