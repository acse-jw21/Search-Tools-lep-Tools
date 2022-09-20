#!/bin/bash
echo "Hello World !"
filelist=`ls /Users/wangjincheng/Desktop/Project_jw21/pqi`
for file in $filelist
do
 name="/Users/wangjincheng/Desktop/Project_jw21/pqi/"
 output="/Users/wangjincheng/Desktop/Project_jw21/pqo/"
 out=".pqi.out"
 str1=$name  
 ./phreeqc << EOF
$name$file
$output$file$out



EOF
 echo $file
done
