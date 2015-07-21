@echo off

cd C:\Users\null\Dropbox\Programs\Bat

if exist C:\Users\null\Dropbox\Programs\Data\run.txt (

del C:\Users\null\Dropbox\Programs\Data\run.txt

if exist C:\Users\null\Dropbox\Programs\Data\start.txt (

del C:\Users\null\Dropbox\Programs\Data\start.txt

start C:\Users\null\Dropbox\Programs\Bat\stop.bat

echo %DATE% %TIME% run.bat >> C:\Users\null\Dropbox\Programs\Log\log.txt
) else (

echo hello >> C:\Users\null\Dropbox\Programs\Data\start.txt

start C:\Users\null\Dropbox\Programs\Bat\start.bat

echo %DATE% %TIME% run.bat >> C:\Users\null\Dropbox\Programs\Log\log.txt
)

)

if exist C:\Users\null\Dropbox\Programs\Data\beginning.txt (

del C:\Users\null\Dropbox\Programs\Data\beginning.txt

start C:\Users\null\Dropbox\Programs\Bat\beginning.bat

echo %DATE% %TIME% run.bat >> C:\Users\null\Dropbox\Programs\Log\log.txt
)

if exist C:\Users\null\Dropbox\Programs\Data\end.txt (

del C:\Users\null\Dropbox\Programs\Data\end.txt

start C:\Users\null\Dropbox\Programs\Bat\end.bat

echo %DATE% %TIME% run.bat >> C:\Users\null\Dropbox\Programs\Log\log.txt
)

if exist C:\Users\null\Dropbox\Programs\Data\encode.txt (

del C:\Users\null\Dropbox\Programs\Data\encode.txt

start C:\Users\null\Dropbox\Programs\Bat\encode.bat

echo %DATE% %TIME% run.bat >> C:\Users\null\Dropbox\Programs\Log\log.txt
)

if exist C:\Users\null\Dropbox\Programs\Data\clear.txt (

del C:\Users\null\Dropbox\Programs\Data\clear.txt

start C:\Users\null\Dropbox\Programs\Bat\clear.bat

echo %DATE% %TIME% run.bat >> C:\Users\null\Dropbox\Programs\Log\log.txt
)

exit
