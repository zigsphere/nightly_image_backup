#!/bin/bash

date_file=$(date +%d.%m.%y)
cd /home/pi/flash/cam-pics
files=($(find . -mtime +1 -type f)) #Path that contains the images
tar cvfz $date_file.tar.gz "${files[@]}" #Compress files
/home/pi/gdrive-linux-rpi upload $date_file.tar.gz -p <insert your Google Drive directory id here>
rm $date_file.tar.gz #Remove compressed file after uploading to Google Drive
rm "${files[@]}"     #Remove all of the pictures that were compressed and uploaded to Google Drive
