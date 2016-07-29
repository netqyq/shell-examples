#!/bin/bash

DIRNAME=`ls /root | grep bak`          #获取/root/bak字符串

if [ -z "$DIRNAME" ]                 #如果/root/bak不存在，则创建一个
then
mkdir /root/bak
cd /root/bak
fi

#获取当前年、月、日数据存储到YY、MM、DD变量中
YY=`date +%y`
MM=`date +%m`
DD=`date +%d`

BACKETC=$YY$MM$DD_etc.tar.gz                #备份文件的名字
tar zcvf $BACKETC /etc                          #将/etc所有文件打包
echo "fileback finished!"
