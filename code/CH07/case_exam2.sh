#case_exam2.sh: 
#!/bin/bash
  
echo "Please Input a score_type(A-E): "
read score_type

case "$score_type" in
A)
     echo "The range of score is from 90 to 100 !";;
B)
     echo "The range of score is from 80 to 89 !";;
C)
     echo "The range of score is from 70 to 79 !";;
D)
     echo "The range of score is from 60 to 69 !";;
E)
     echo "The range of score is from 0 to 59 !";;
*)
     echo "What you input is wrong !";;
esac

