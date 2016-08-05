testuser=rich

if [ $USER = $testuser ]
then
    echo "welcome $testuser"
elif [ $USER = "larry" ]
then
    echo "welcome larry"
fi
