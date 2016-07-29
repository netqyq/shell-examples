#if_exam2.sh: first creates a file,and  test the file is existence,
# then test the file's authority.
#!/bin/sh
touch if_file1
if [ -e if_file1 ]
then echo "The file if_file1 is created successfully!"
fi
if [ -r if_file1 ]
then echo "The file can read."
fi
if [ -w if_file1 ]
then echo "The file can write."
fi
if [ -x if_file ]
then echo "The file can execute."
fi
