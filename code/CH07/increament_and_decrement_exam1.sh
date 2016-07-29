#increment_and_decrease_exam1.sh: 
#!/bin/sh
 
 num1=5

 let "a=5+(++num1) "
 echo "a=$a"

 num2=5

 let  "b=5+(num2++) "
 echo "b=$b"
