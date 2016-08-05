if [ -d $HOME ];then
    echo "your home dir exists"
    cd $HOME
    ls -a
else 
    echo "have problem"
fi 
