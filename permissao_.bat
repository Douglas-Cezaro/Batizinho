@echo off
cls
echo Cacls "C:/" /T /E /G  Usu rios:f
echo Cacls "C:" /T /E /G  Usu rios:f
echo  Cacls "C:" /T /E /G  "Usu rios autenticados":f
echo  Cacls "C:/" /T /E /G  "Usu rios autenticados":f

pause