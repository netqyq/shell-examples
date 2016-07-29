#!/bin/bash
echo "Pls. choose your profession?"
select var in "Worker" "Doctor" "Teacher" "Student" "Other"
do
   echo "The \$REPLY is $REPLY."  
   echo "Your preofession is $var."
break
done

