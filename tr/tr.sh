# del \n and \t
tr -d "\n\t"

# replace mutiple spaces to one space 
tr -s ' '
sed 's/[ ]\+/ /g'
