#getopts_exam1.sh
#!/bin/bash

func()
{
    echo " basename $0 -[a b] args." >&2
    exit 0
}

while getopts :ab: options
do
    case $options in
    a)
        echo "You enter -a as an option."
        ;;
    b)
        echo "You enter -b as an option."
        ;;
    \?)
        func
        ;;
    :)
        echo "No argument value for option $OPTARG"
        ;;
    esac
done
