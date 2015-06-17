@echo off

cd C:\Users\null\Dropbox\Bat

if exist run.txt (

del run.txt

if exist start.txt (

del start.txt

start stop.bat

) else (

echo hello >> start.txt

start start.bat

)

)

if exist encode.txt (

del encode.txt

start encode.bat

)

if exist retry.txt (

del retry.txt

start retry.bat

)

