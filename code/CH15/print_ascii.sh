#print-scii.sh: 
#!/bin/bash
 
start=48  
end=57

echo " Decimal   Hex     Character"   
echo " ------   ----     ---------"
   
for (( i=start; i <= end; i++ ))
do
    echo $i | awk '{printf("  %3d       %2x         %c\n", $1, $1, $1)}'
done
 
exit 0
