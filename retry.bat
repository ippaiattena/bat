@echo off

taskkill /f /im "Google Photos Backup.exe"

cd C:\Users\null\Capture

move *.mp4 C:\Users\null\Backup

move *.jpg C:\Users\null\Backup

timeout 20

cd C:\Users\null\Backup

move *.mp4 C:\Users\null\Capture

move *.jpg C:\Users\null\Capture

timeout 20

start "" "C:\Users\null\AppData\Local\Programs\Google\Google Photos Backup\Google Photos Backup.exe"

exit
