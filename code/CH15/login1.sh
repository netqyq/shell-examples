
#login1.sh:
#!/bin/bash

flag=0;

for ((i=0 ; i < 3 ; i++))
do
    read username
    read password

    if test "$username" = "user" -a "$password" = "pwd" 
    then
        echo "login success"
        flag=1;
        break;
    fi
done

if [ "$flag" -eq "0" ]
then
    echo "You have tried 3 times. Login fail!"
fi

