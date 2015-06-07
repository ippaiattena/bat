@echo off

for /d %%i in (C:\Users\null\Downloads\a\*) do (
PowerShell Compress-Archive -Path %%i -DestinationPath %%i.zip
)

PAUSE