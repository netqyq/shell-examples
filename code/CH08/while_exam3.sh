le_exam3.sh
#!/bin/bash

echo "Please input the num(1-10) "
read num

while [[ "$num" != 4 ]]
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
       exit 0
    fi
done 

echo "Congratulation, you are right! "
