# exit_exam: Use the command'exit' to exit the program
#!/bin/sh
echo "Please input a string: "
read str1
if [ -z "$str1" ]
then 
   echo "What you input is null!"
   exit 5
fi
