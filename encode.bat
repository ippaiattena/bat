@echo off

cd C:\HandBrakeCLI

setlocal enabledelayedexpansion

set IDIR=C:\Users\null\Videos
set ODIR=C:\Users\null\Capture

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

exit
