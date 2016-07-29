#ifelse_exam.sh
#!/bin/sh

echo "Please input the file which you want to delete:"
read file

if rm -f "$file"
then
  echo "Delete the file $file  sucessfully!"
else
  echo "Delete the file $file failed!"
fi
