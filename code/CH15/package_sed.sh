#package_sed.sh
#!/bin/bash

echo  "Please input the file which you want to change: "
read file


if [ -f "$file" ]
then
    file_name=$file
else
    echo "File \"$file\" does not exist."
    exit $bad_parameter
fi

echo "Please input the old pattern of string: "
read old_pattern

echo "Please input the string which you want to modify: "
read  new_pattern

sed -e "s/$old_pattern/$new_pattern/g" $file_name

exit 0 
