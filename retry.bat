@echo off

taskkill /f /im "Google Photos Backup.exe"

cd C:\Users\ippaiattena\Capture

move *.mp4 C:\Users\ippaiattena\Backup

move *.jpg C:\Users\ippaiattena\Backup

timeout 20

cd C:\Users\ippaiattena\Backup

move *.mp4 C:\Users\ippaiattena\Capture

move *.jpg C:\Users\ippaiattena\Capture

timeout 20

start "" "C:\Users\ippaiattena\AppData\Local\Programs\Google\Google Photos Backup\Google Photos Backup.exe"

exit
