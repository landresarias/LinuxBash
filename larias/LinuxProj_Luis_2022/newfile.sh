#!/bin/bash

read newfile
if [ -f "$newfile" ]
then
    echo "The file already exists"
else
    touch $newfile
    echo "New file created"
fi
