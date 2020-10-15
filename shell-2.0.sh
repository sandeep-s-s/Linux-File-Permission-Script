#!/bin/bash

# This script give 755 permissions to directories and 644 permission to files 

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
