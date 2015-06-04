@echo off

cd C:\Users\ippaiattena\OneDrive\Bat

if exist run.png (

del C:\Users\ippaiattena\OneDrive\Bat\run.png

if exist run.txt (

del C:\Users\ippaiattena\OneDrive\Bat\run.txt

start stop.bat

) else (

echo hello >> run.txt

start start.bat

)

)

if exist encode.png (

del C:\Users\ippaiattena\OneDrive\Bat\encode.png

start encode.bat

)

if exist retry.png (

del C:\Users\ippaiattena\OneDrive\Bat\retry.png

start retry.bat

)

