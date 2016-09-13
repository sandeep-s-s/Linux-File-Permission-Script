#!/bin/bash
#
#shell script to give 755 permission for directories and 644 permission for files 

for dir in $(find ./ -type d -print)
do
  
  sudo chmod -R 755 $dir
  echo "permission changed 755 for directory : ".$dir
done >output_file

for dir in $(find . -print | grep -i '[.]phtml\|[.]php')
do
  
  sudo chmod -R 644 $dir
  echo "permission changed 644 for file : "$dir
done >>output_file

#End

