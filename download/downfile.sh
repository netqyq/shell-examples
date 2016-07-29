#!/bin/bash
url=$1
dir=$2
download()
  {
    cd $dir >> /dev/null 2>&1
    if [ $? -ne 0 ];then
        read -p "$dir No such file or directory,create?(y/n)" answer
    if [ "$answer" == "y" ];then
        mkdir -p $dir
        cd $dir
        wget $url 1> /dev/null 2>&1
    if [ $? -ne 0 ]; then
        return "52"
    fi
    else
    return "51"
    fi
    fi
}
download $url $dir
echo $?
