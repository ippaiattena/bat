@echo off

cd "C:\Program Files\Daddy\LiveCapture3"

ExtCap stop 0

ExtCap stop 1

timeout 20

taskkill /f /im "lc3.exe"

exit
