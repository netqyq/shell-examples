#!/bin/sh
echo "The script name is: $0"            #$0表示脚本本身
echo "Parameter #1：$1"
echo "Parameter #2：$2"
echo "Parameter #3：$3"
echo "Parameter #4：$4"
echo "Parameter #5：$5"
echo "Parameter #6：$6"
echo "Parameter #7：$7"
echo "Parameter #8：$8"
echo "Parameter #9：$9"
echo "Parameter #10：${10}"           #用大括号括起来

echo "-------------------------"
echo "All the command line parameters are: $*"
