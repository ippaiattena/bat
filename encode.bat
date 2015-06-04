@echo off

taskkill /f /im "Google Photos Backup.exe"

timeout 20

cd C:\Program Files\HandBrakeCLI

setlocal enabledelayedexpansion

set IDIR=C:\Users\ippaiattena\Videos
rem set ODIR=C:\Users\ippaiattena\OneDrive\LiveCam\Videos\%DATE:~-10,4%%DATE:~-5,2%%DATE:~-2%
rem set ODIR=C:\Users\ippaiattena\Pictures\LiveCam
set ODIR=C:\Users\ippaiattena\Capture
rem if not exist %ODIR% (mkdir %ODIR%)

for /f "usebackq" %%i in (`dir %ODIR% /B *.mp4`) do (
set IFILE=%%i
del %ODIR%\!IFILE!
)

for /f "usebackq" %%i in (`dir %ODIR% /B *.jpg`) do (
set IFILE=%%i
del %ODIR%\!IFILE!
)

for /f "usebackq" %%i in (`dir %IDIR% /B *.wmv`) do (
set IFILE=%%i
set OFILE=!IFILE:wmv=mp4!
HandBrakeCLI -i %IDIR%\!IFILE! -o %ODIR%\!OFILE!
del %IDIR%\!IFILE!
)

endlocal

start "" "C:\Users\ippaiattena\AppData\Local\Programs\Google\Google Photos Backup\Google Photos Backup.exe"

exit
