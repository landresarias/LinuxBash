#!/bin/bash

read filename
if [ -f $filename ]
then
    rm -i $filename
    echo "File is deleted."
else
    echo "File does not exist."
fi
