#subsenv.sh脚本：子Shell设定bash Shell选项
#!/bin/bash

(   #进入子Shell
set -C                        #开启-C选项，防止重定向时覆盖文件
:> outputnull                  #试图用冒号清空outputnull文件
)

#在父Shell覆盖一个文件，测试子Shell开启的-C选项是否对父Shell生效
cat subsenv.sh > outputnull

