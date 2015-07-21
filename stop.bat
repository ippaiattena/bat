@echo off

cd "C:\Daddy\LiveCapture3"

ExtCap stop 0

ExtCap stop 1

rem timeout 20

rem taskkill /f /im "lc3.exe"

echo %DATE% %TIME% stop.bat >> C:\Users\null\Dropbox\Programs\Log\log.txt

exit
