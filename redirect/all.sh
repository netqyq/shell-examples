#  default
# fd
# 0  stdin - keyboard
# 1  stdout - screen
# 2  stderr - screen

# redirect all messages to one file
ls -al test test2 test3 badtest &> test7

# 
ls -al test test2 test3 badtest 2> test6 1> test7

#
cat < file

# 
cat file > file2


# temporary redirect
echo "This is an error message" >&2 


## permanent redirect
#!/bin/bash
exec 1>testout
exec 2>testerr
# end of bash file

# delete FD
exec 3>&-

