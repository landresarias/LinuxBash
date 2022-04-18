#!/bin/bash

# Current Date/Time
Year=`date +%Y` Month=`date +%m` Day=`date +%d` 
Hour=`date +%H` Minute=`date +%M` Second=`date +%S`
echo "Current Date is: $Day-$Month-$Year"
echo "Current Time is: $Hour:$Minute:$Second"
echo "Watch the Man Menu file opened at VS Code!" 
`code ./LinuxProj_Luis_2022/ManMenu.txt`

# This bash create a menu that will execute an selected item
echo "" 
echo "====== BASH MENU ======"
echo ""
echo "Choose an option to execute a script: "
echo "1) Weather in a city" 🌤️
echo "2) Create a website project" 📃
echo "3) Directory search" 🏥
echo "4) Make directory" 
echo "5) Delete a directory" ☹️
echo "6) Make file" 
echo "7) Read file" 
echo "8) Enter data into a file" 📂
echo "9) Delete a file" 👮‍♀️
#========================================================
read Item;
case $Item in
    1) echo -n "Type a city name to see the weather: ";
        echo "`sh ./LinuxProj_Luis_2022/Weather.sh`";;
    2) echo -n "Enter a folder name: ";
        echo "`sh ./LinuxProj_Luis_2022/WebsiteProj.sh`";;
    3) echo "type the directory for searching";
        echo "`sh ./LinuxProj_Luis_2022/listdir.sh`";;
    4) echo "type the directory name";
        echo "`sh ./LinuxProj_Luis_2022/mkdir.sh`";;
    5) echo -n "Enter a directory name: ";
        echo "`sh ./LinuxProj_Luis_2022/deletedir.sh`";;
    6) echo "type the new file name";
        echo "`sh ./LinuxProj_Luis_2022/newfile.sh`";;
    7) echo "type the file for reading";
        echo "`sh ./LinuxProj_Luis_2022/readfile.sh`";;
    8) echo -n "Enter a file name: ";
        read filename
        if [ -f "$filename" ]; 
        then
            echo "Getting a cat before adding data to the file."
            cat $filename
            echo ""
            echo -n "Enter data: "
            read data
            echo $data >> $filename
            echo "Getting a cat after adding data to the file."
            cat $filename
        else
            echo "File does not exist"
        fi
        ;;
    9) echo -n "Enter a file name (y/n): ";
        echo "`sh ./LinuxProj_Luis_2022/deletefile.sh`";;
esac
echo ""


