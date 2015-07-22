@echo off

setlocal enabledelayedexpansion

set ODIR=C:\Users\null\Pictures\Capture
set IDIR=C:\Users\null\Videos

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
del %IDIR%\!IFILE!
)

endlocal

exit
