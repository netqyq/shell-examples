
#login2.sh
#!/bin/bash

flag=0;

echo "This script is used to username and password what you input is right or wrong. "

for ((i=0 ; i < 3 ; i++))
do
    echo -n "Please input your name: "
    read username

    echo -n "Please input your password: "
    read password

    if test "$username" = "user" -a "$password" = "pwd" 
    then
        echo "login success"
        flag=1
        break
    else 
        echo "The username or password is wrong!"
    fi
done

if [ "$flag" -eq "0" ]
then
    echo "You have tried 3 times. Login fail!"
fi

