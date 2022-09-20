#!/bin/bash
echo "Hello World !"
filelist=`ls /content/gdrive/MyDrive/IRP/pqi`
for file in $filelist
do
 name="/content/gdrive/MyDrive/IRP/pqi"
 output="/content/gdrive/MyDrive/IRP/pqo"
 out=".pqi.out"
 str1=$name  #中间不能有空格
 ./phreeqc << EOF
$name$file
$output$file$out



EOF
 echo $file
done
