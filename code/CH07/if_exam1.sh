# if_exam1.sh:inputs a integer then compare with 15
#!/bin/sh
#if_exam1
echo "Please input a integer:"
read integer1
if [ "$integer1" -lt 15 ]
then echo "The integer which you input is lower than 15."
fi
