#while_exam5.sh
#!/bin/bash

echo "Please input the num:"
read num

signal=0

while [[ "$signal" != 1 ]]
do 
   if [ "$num" -lt 4 ]
   then
        echo "Too small. Try again!"
        read num
   elif [ "$num" -gt 4 ]
   then
         echo "To high. Try again" 
         read num
    else
         signal=1
         echo " Congratulation, you are right! "
   fi
done
