# Nightly Image Backup
Nightly image backup utilizing the gdrive repo at https://github.com/Grive/grive

I use the "motion" software on my Raspberry PI that collects hundreds to thousands of jpg files every day. 10 seconds of pictures are stored if the software detects any motion. I thought it was a better idea to compress a day's worth of pictures every day and then upload it to Google Drive in a specific directory. This is the script I use. It's very small, but gets the job done.

To run the script automatically, use a cron job to run at a specific time you wish.

Make sure you replace "insert your Google Drive directory id here" with your Google Drive id number. You can find this number by installing the gdrive app and running the necessary commands to find it.
