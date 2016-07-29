#bad_style_indent.sh
#!/bin/bash
power()
{
x=$1 
y=$2 
count=1
result=1 
while [ $count -le $y ] 
do 
let "result=result * x"
let "count=count + 1"
done 
return $result 
} 
echo "Enter two numbers" 
read num1 num2 
power $num1 $num2 
answer=$? 
echo "$num1 to $num2 is $answer" 

