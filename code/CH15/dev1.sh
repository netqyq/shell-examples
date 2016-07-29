#dev1.sh
#!/bin/bash
  

ROOT_UID=0      
  
FILE=/swap

BLOCKSIZE=1024
MINBLOCKS=40
 
SUCCESS=0

if [ "$UID" -ne "$ROOT_UID" ]
then
    echo "You are not the user of root "
fi  
 
if [ -n "$1" ]
then
    blocks=$1
else
   blocks=$MINBLOCKS
fi

if [ "$blocks" -lt $MINBLOCKS ]
then
    blocks=$MINBLOCKS             
fi  
 
echo "Creating swap file of size $blocks blocks (KB)."

dd if=/dev/zero of=$FILE bs=$BLOCKSIZE count=$blocks  

mkswap $FILE $blocks   
       
swapon $FILE                   

echo "Swap file created and activated."


