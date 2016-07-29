#for_exam8.sh
#!/bin/bash

echo "number of arguments is $#"

echo "What you input is: "

for argument in "$*"
do
    echo "$argument"
done
