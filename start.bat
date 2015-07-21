@echo off

rem start "" "C:\Daddy\LiveCapture3\lc3.exe"

rem timeout 20

cd "C:\Daddy\LiveCapture3"

ExtCap start 0

ExtCap start 1

echo %DATE% %TIME% start.bat >> C:\Users\null\Dropbox\Programs\Log\log.txt

exit
