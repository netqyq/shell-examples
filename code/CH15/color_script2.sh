#color_script2.sh 
#!/bin/bash

echo "The arguments of this script: {Message} {FrontColor} {BackColor} {Style}"
echo  "first argument: {Message}:Message you want display"
echo  "second argument: {FrontColor}: FrontColor will display,values "
echo  "third argument: {BackColor}:BackColor will display,values "
echo "forth argument: {Style}: Style will display,values "

echo " First argument you want to input: {Message}"
read message

echo "Second argument you want to input: {FrontColor} will display ( Colors) or values(1-8)"
read frontcolor

case $frontcolor in
1 | black)        
    fStr="30"
    ;;
2 | red)         
     fStr="31"
     ;;
 3 | green)      
      fStr="32"
      ;;
 4 | brown)      
      fStr="33"
      ;;
5 | blue)         
     fStr="34"
     ;;
6 | purple)        
      fStr="35"
     ;;   
7 | cyan)         
      fStr="36"
     ;;
8 | white)        
      fStr="37"
     ;;    
*)
    fStr="0"
    ;;         
esac

echo "Third argument: you want to input: { BackColor } will display ( Colors) or values(1-8)"
read backcolor

case $backcolor in
1 | black)          
      bStr="40"
     ;;
2 | red)           
      bStr="41"
     ;;
3 | green)         
      bStr="42"
     ;;
4 | brown)        
      bStr="43"
     ;;
5 | blue)          
      bStr="44"
     ;;
6 | purple)       
      bStr="45"
     ;;
7 | cyan)         
      bStr="46"
     ;;
8 | white)       
      bStr="47"
     ;;    
*)
      bStr="0"
     ;;         
esac

echo "Fourth argument: you want to input {Style}: Style will display( styles ) or values( 1-4 ) "
read style


case $style in
1 | bold)           
     sStr="1"
   ;;
2 | underline)        
     sStr="4"
   ;;
3 | blink)           
     sStr="5"
   ;;
4 | inverse)         
     sStr="5"
   ;; 
*)
     sStr="0"
   ;;       
esac 


if [ $bStr -eq 0 ] && [ $sStr -eq 0 ]   
then
     rtnString="\e[${fStr}m"
elif [ $bStr -eq 0 ]          
then
     rtnString="\e[${fStr};${sStr}m"      
elif [ $sStr -eq 0 ]           
then
     rtnString="\e[${fStr};${bStr}m"
else                               
     rtnString="\e[${fStr};${bStr};${sStr}m"
fi    
    
echo -e "$rtnString$message\e[m"
exit 0


