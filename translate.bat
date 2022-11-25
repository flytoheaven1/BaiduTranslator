@ECHO OFF

set pwd=%~dp0
set source=%1
set dest=out

if not exist %pwd%out mkdir %pwd%out

for %%I in (%pwd%%source%\*.txt) DO if exist %dest%\%%~nI.txt (
    echo %pwd%%dest%\%%~nI.txt file exists.
) else (python [python script] -o [out lan] -f %%I -w %dest%\%%~nI.txt)

pause

@REM argument is directory name...
@REM [python script] is python script path.. ex) C:\Users\translate.py
@REM [out lan] is language to translate.. ex) en, zh, kor, jp...