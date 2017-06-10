#!/bin/bash
#
#Shell script to give 755 permission for directories and 644 permission for files 
#Run this script from the parent directory,script will change file and directory permissions of all files and subdirectories
#All files no matter what extension they have will change their permissions 
for dir in $(find ./ -type d -print)
do
  
  sudo chmod -R 755 $dir
  echo "permission changed 755 for directory : ".$dir
done >output_file.log

for dir in $(find ./ -type f -print)
do
  
  sudo chmod -R 644 $dir
  echo "permission changed 644 for file : "$dir
done >>output_file.log

#End