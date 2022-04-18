#!/bin/bash

read dir
# bash for loop
for f in $( ls $dir ); do
	echo $f
done 
echo ""
echo "Directory root is: "
echo `pwd`;
echo `ls -aF`

dir=`find . -maxdepth 1 -type d | wc -l`
file=`find . -maxdepth 1 -type f | wc -l`
echo "There are $dir directories y $file files"

