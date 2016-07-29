#dev2.sh
#!/bin/bash

if [ -f file1.sh ]
then
    rm -f file1.sh
fi

ln -s /dev/null file1.sh
echo "Successful! "
