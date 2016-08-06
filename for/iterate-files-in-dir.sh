for file in /home/larry/*
do
    if [ -d "$file" ]    
    then
        echo "$file is a dir"
    elif [ -f "$file" ]
    then
        echo "$file is a file"
    fi
done
