#function3.sh
#!/bin/bash

directory()
{
    let "filenum = 0"
    let "dirnum = 0"
    
    ls
    echo ""
    
    for file in $( ls )
    do
        if [ -d $file ]
        then
            let "dirnum = dirnum + 1"
        else
           let "filenum = filenum + 1"
        fi
    done

    echo "The number of directory is $dirnum"
    echo "The number of file is $filenum"
}

directory 
