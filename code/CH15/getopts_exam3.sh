#getopt_exam2.sh
#!/bin/bash

boolean="no"

func()
{
    echo " 'basename $0' -[c b] args." >&2
    exit 0
}


while getopts bc: options 
do 
    case $options 
    in 
        c) 
            let "copy1=options"
            ;; 
        b) 
            boolean="yes"
            ;; 
        \?) 
           func
           exit 1
           ;; 
    esac 
done

shift 'expr $options -1' 
 
copy=0 
  
while [ $copy1 -gt $copy ] 
do 
    let "copy=copy+1" 
    cp $file $$ 
    if [ boolean = "yes" ] 
    then 
        echo $$ 
    fi 
done
