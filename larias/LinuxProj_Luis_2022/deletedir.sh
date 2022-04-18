#!/bin/bash

read dir
if [ -d $dir ]
then
    #set $dir
    rm -R $dir
    echo "Directory is deleted."
else
    echo "Directory does not exist."
fi
