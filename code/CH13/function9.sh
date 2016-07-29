
#function9.sh
#!/bin/bash

square()
{
    echo "Please input the num: "
    read num1
    
    let "squ=num1 * num1"

    echo "Square of $num1 is $squ. "
}

cube()
{
    echo "Please input the num: "
    read num2
    
    let "c=num2 * num2 * num2"

    echo "Cube of $num2 is $c. "
}

power()
{
    echo "Please input the num: "
    read num3
    echo "Please input the power: "
    read p
    
    let "temp = 1"
    for (( i=1; i <= $p; i++ ))
    do
        let "temp=temp*num3"
    done 
    echo "power $p of $num3 is $temp. "
}

choice()
{
    echo "Please input the choice of operate(s for square; c for cube and p for power): "
    read char
   
    case $char  in
    s)
        square;;
    c)
        cube;;
    p) 
        power;;
    *)
        echo "What you input is wrong! ";;
   esac
}

choice

