#!/bin/bash

#定义行数、列数，及数组名
ROW=5
COL=5
declare -a MATRIX
 
 load_alpha ()
 {
 local rc=0
 local index
  
#for循环将A-Y这25个字符存储到MATRIX数组
 for i in A B C D E F G H I J K L M N O P Q R S T U V W X Y
  do
    local row=`expr $rc / $COL`
    local column=`expr $rc % $ROW`
    let "index = $row * $Rows + $column"
    alpha[$index]=$i
    let "rc += 1"
  done  
  }
  
  print_alpha ()
  {
  local row=0
  local index
 
  echo
  
  #逐行打印MATRIX数组
  while [ "$row" -lt "$ROW" ] 
  do                           
    local column=0
    echo -n "       " 
    while [ "$column" -lt "$COL" ]
    do
      let "index = $row * $Rows + $column"
      echo -n "${alpha[index]} " 
      let "column += 1"
    done
    let "row += 1"
    echo
  done
 echo
  }
  
  filter ()     # 过滤掉负的数组下标. 
  {
  
  echo -n "  "  # 产生倾斜. 
                # 解释一下, 这是怎么做到的. 
  
  if [[ "$1" -ge 0 &&  "$1" -lt "$ROW" && "$2" -ge 0 && "$2" -lt "$COL" ]]
  then
      let "index = $1 * $ROW + $2"
      # 现在, 按照旋转方向进行打印. 
      echo -n " ${alpha[index]}"
      #           alpha[$row][$column]
  fi    
 }
 
rotate ()  # 将数组旋转45度 --
 {          #+ 从左下角进行"平衡". 
 local row
 local column
  
  for (( row = ROW; row > -ROW; row-- ))
    do  
    for (( column = 0; column < COL; column++ ))
    do
  
      if [ "$row" -ge 0 ]
      then
        let "t1 = $column - $row"
        let "t2 = $column"
     else
       let "t1 = $column"
       let "t2 = $column + $row"
     fi  
 
     filter $t1 $t2   # 将负的数组下标过滤出来
   done
 
  echo; echo
  done 
 }
 
 #下面利用上述函数创建二维数组，逐行和旋转45°打印数组
 load_alpha     # 加载数组
 print_alpha    # 打印数组
 rotate         # 逆时针旋转45°打印
