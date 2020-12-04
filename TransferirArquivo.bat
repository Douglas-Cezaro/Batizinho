@echo off
echo Substituindo CDK
xcopy C:\Users\%USERNAME%\Downloads\CDKSAT.dll C:\teste\Lib\SAT\CDK /y
if "%PROCESSOR_ARCHITECTURE%"=="AMD64" goto 64BIT
xcopy C:\Users\%USERNAME%\Downloads\CDKSAT.dll C:\Windows\System32 /y
goto END
:64BIT
xcopy C:\Users\%USERNAME%\Downloads\CDKSAT.dll C:\Windows\SysWOW64 /ya
:END
pause
