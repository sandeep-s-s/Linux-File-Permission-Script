#!/bin/bash
#
#Shell script to give 755 permission for directories and 644 permission for files 
#Run this script from the parent directory,script will change file and directory permissions of all files and subdirectories
#You can specify the required files need to change file permission inside 2nd for loop
for dir in $(find ./ -type d -print)
do
  
  sudo chmod -R 755 $dir
  echo "permission changed 755 for directory : ".$dir
done >output_file.log

for dir in $(find . -print | grep -i '[.]phtml\|[.]php')
do
  
  sudo chmod -R 644 $dir
  echo "permission changed 644 for file : "$dir
done >>output_file.log

#End

