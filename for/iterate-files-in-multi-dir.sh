for file in /home/larry/* /tmp/*
do  
    if [ -d "$file" ];then
        echo "$file is a dir"
    elif [ -f "$file" ];then
        echo "$file is a file"
    else
        echo "$file does not exists"
    fi

done
