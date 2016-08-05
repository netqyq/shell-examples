if [ ./test_file.sh -nt ./test_string.sh ]
then
    echo "test_file.sh is newer than test_string.sh"
else
    echo "test_file.sh is older than test_string.sh"
fi

if [ ./test_file.sh -ot ./test_string.sh ]
then
    echo "test_file.sh is older than test_string.sh"
else
    echo "test_file.sh is newer than test_string.sh"
fi
