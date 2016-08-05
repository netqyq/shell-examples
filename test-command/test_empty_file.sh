file=file1
touch $file

if [ -s $file ]
then
    echo "The $file file exists and has data in it"
else
    echo "The $file exists and is empty"
fi

date > $file

if [ -s $file ]
then
    echo "The $file file exists and has data in it"
else
    echo "The $file is still empty"
fi

