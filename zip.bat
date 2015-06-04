@echo off

for /d %%i in (C:\Users\ippaiattena\Downloads\a\*) do (
PowerShell Compress-Archive -Path %%i -DestinationPath %%i.zip
)

PAUSE