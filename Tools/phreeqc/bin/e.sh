#!/bin/bash
echo "Hello World !"
filelist=`ls /Users/wangjincheng/Desktop/davies/pqi`
for file in $filelist
do
 name="/Users/wangjincheng/Desktop/davies/pqi/"
 output="/Users/wangjincheng/Desktop/davies/pqo/"
 out=".pqi.out"
 str1=$name  #中间不能有空格
 ./phreeqc << EOF
$name$file
$output$file$out



EOF
 echo $file
done
