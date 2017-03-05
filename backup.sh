#!/bin/bash

date_file=$(date +%d.%m.%y)
cd /home/pi/flash/cam-pics #Path that contains the images
files=($(find . -mtime +1 -type f)) #Find files that are older than 1 day
tar cvfz $date_file.tar.gz "${files[@]}" #Compress files
/home/pi/gdrive-linux-rpi upload $date_file.tar.gz -p <insert your Google Drive directory id here>
rm $date_file.tar.gz #Remove compressed file after uploading to Google Drive
rm "${files[@]}"     #Remove all of the pictures that were compressed and uploaded to Google Drive
