#!/bin/bash

date_file=date +"%d.%m.%y"
files=($(find /home/pi/flash/cam-pics -mtime -7)) #Path that contains the images
tar cvfz $date_file.tar.gz "${files[@]}"
/home/pi/gdrive-linux-rpi upload $date_file.tar.gz -p <insert your Google Drive directory id here>
