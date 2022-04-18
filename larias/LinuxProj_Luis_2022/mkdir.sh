#!/bin/bash

read newdir
if [ -d "$newdir" ]
then
    echo "Directory exist"
else
    `mkdir $newdir`
    echo "Directory created"
fi
