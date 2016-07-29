#refor.sh脚本：for循环的重定向
#!/bin/bash

#将ls /etc的结果写到loggg文件中
ls /etc > loggg

#计算loggg文件的最大行数，并赋给maxline变量
#这是与while和until循环最大的区别
#灵活运用了输入重定向符号<，类似用法可以参见图10-25的例子
maxline=$(wc -l < loggg)              

#搜索loggg文件中与rc.d所匹配的行，输出匹配行的行数
for filename in `seq $maxline`       #利用seq命令产生循环参数
do
 read filename                   #按行读取loggg中的数据

#let "count +=1"

#for循环中需要有if语句指定跳出循环的条件
 if [ "$filename" = "rc.d" ]
 then
   break
 else
   let "count +=1"
 fi
done < loggg                    #将标准输入重定向到loggg文件

echo "$count times read"

#测试循环体外面的标准输入是否被重定向
echo -n "-----Pls. Input Data:-----"
read test
echo $test

