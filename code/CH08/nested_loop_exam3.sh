#nested_loop_exam3.sh£º
#!/bin/bash


i=1

while (( "$i" <= 9 ))
do 
  
    j=1
    
  
    while (("$j" <= "$i" ))
    do
        echo -n "*"
        let "j++"
    done
    let "i++"

    echo ""
done

