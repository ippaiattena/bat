@echo off

cd C:\Program Files\HandBrakeCLI

setlocal enabledelayedexpansion

set IDIR=C:\Users\ippaiattena\Videos\LiveCam
rem set ODIR=C:\Users\ippaiattena\OneDrive\LiveCam\Videos\%DATE:~-10,4%%DATE:~-5,2%%DATE:~-2%
rem set ODIR=C:\Users\ippaiattena\Pictures\LiveCam
set ODIR=C:\Users\ippaiattena\WatchVideo
rem if not exist %ODIR% (mkdir %ODIR%)

for /f "usebackq" %%i in (`dir %IDIR% /B *.wmv`) do (
set IFILE=%%i
set OFILE=!IFILE:wmv=mp4!
HandBrakeCLI -i %IDIR%\!IFILE! -o %ODIR%\!OFILE!
del %IDIR%\!IFILE!
)

endlocal
