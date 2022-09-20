#!/bin/bash
echo "Hello World !"
filelist=`ls oooo`
for file in $filelist
do
 name="aaa"
 output="bbb"
 out=".pqi.out"
 str1=$name  
 ./phreeqc << EOF
$name$file
$output$file$out



EOF
 echo $file
done
