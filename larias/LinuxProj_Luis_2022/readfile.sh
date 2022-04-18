#!/bin/bash

read file
while read line; 
do
    echo $line
done < $file