@echo off

cd C:\Users\null\OneDrive\Bat

if exist run.png (

del C:\Users\null\OneDrive\Bat\run.png

if exist run.txt (

del C:\Users\null\OneDrive\Bat\run.txt

start stop.bat

) else (

echo hello >> run.txt

start start.bat

)

)

if exist encode.png (

del C:\Users\null\OneDrive\Bat\encode.png

start encode.bat

)

if exist retry.png (

del C:\Users\null\OneDrive\Bat\retry.png

start retry.bat

)

