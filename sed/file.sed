[address]w filename

# write to file 'test'
sed '1,2w test' data7

# read a file insert to other file
sed '/number 2/r data12' data7

