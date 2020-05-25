@echo off
title BAT dos Pia da Frente de Caixa
set LOG1=LOG1.txt
cls
:: RÓTULO INICIAL
:begin
cls
systeminfo | FIND /I "en-us" > %LOG1%
if exist %LOG1% (goto :gr) else (echo. nao gerado o LOG 1 & pause & exit)
:gr
cls
FOR /F "TOKENS=5-9 DELIMS= " %%B IN (%LOG1%) DO SET B= %%B %%C %%D %%E %%F
if not "%B%"=="" (
ECHO       Alterando permissao da pasta  "C:"
  takeown /f "C:" /r /d y
  timeout /t 2
  Cacls "C:/" /T /E /G  todos:f
  timeout /t 2
  Cacls "C:" /T /E /G  todos:f
  timeout /t 2
  Cacls "C:/" /T /E /G  Administradores:f 
  timeout /t 2
  Cacls "C:" /T /E /G  Administradores:f
  timeout /t 2   
  Cacls "C:/" /T /E /G  SISTEMA:f 
  timeout /t 2	
  Cacls "C:" /T /E /G  SISTEMA:f
  timeout /t 2
  Cacls "C:/" /T /E /G  Usu rios:f
  timeout /t 2
  Cacls "C:" /T /E /G  Usu rios:f
  timeout /t 2
  Cacls "C:" /T /E /G  "Usu rios autenticados":f
  timeout /t 2
  Cacls "C:/" /T /E /G  "Usu rios autenticados":f
  timeout /t 2
  Cacls "C:" /T /E /G  postgres:f
  timeout /t 2
  Cacls "C:/" /T /E /G  postgres:f
  timeout /t 2
  Cacls "C:/" /T /E /G  PostgreSQL:f
  timeout /t 2
  Cacls "C:" /T /E /G  PostgreSQL:f
  timeout /t 2
  Cacls "C:" /T /E /G  "TODOS OS PACOTES DE APLICATIVOS":f
  timeout /t 2
  Cacls "C:/" /T /E /G  "TODOS OS PACOTES DE APLICATIVOS":f
  timeout /t 2
  Cacls "C:/" /T /E /G  "TODOS OS PACOTES DE APLICATIVOS RESTRITOS":f
  timeout /t 2
  Cacls "C:" /T /E /G  "TODOS OS PACOTES DE APLICATIVOS RESTRITOS":f
  timeout /t 2
  Cacls "C:/" /T /E /G  %USERNAME%:f
  timeout /t 2
  Cacls "C:" /T /E /G  %USERNAME%:f
  Cacls "C:/" /T /E /G  todos:f
  timeout /t 2
  Cacls "C:" /T /E /G  todos:f


ECHO       Alterando permissao da pasta  "C:"
  takeown /f "C:" /r /d y
  timeout /t 2
  Cacls "C:/" /T /E /G  todos:f
  timeout /t 2
  Cacls "C:" /T /E /G  todos:f
  timeout /t 2
  Cacls "C:/" /T /E /G  Administradores:f 
  timeout /t 2
  Cacls "C:" /T /E /G  Administradores:f
  timeout /t 2   
  Cacls "C:/" /T /E /G  SISTEMA:f 
  timeout /t 2	
  Cacls "C:" /T /E /G  SISTEMA:f
  timeout /t 2
  Cacls "C:/" /T /E /G  Usu rios:f
  timeout /t 2
  Cacls "C:" /T /E /G  Usu rios:f
  timeout /t 2
  Cacls "C:" /T /E /G  "Usu rios autenticados":f
  timeout /t 2
  Cacls "C:/" /T /E /G  "Usu rios autenticados":f
  timeout /t 2
  Cacls "C:" /T /E /G  postgres:f
  timeout /t 2
  Cacls "C:/" /T /E /G  postgres:f
  timeout /t 2
  Cacls "C:/" /T /E /G  PostgreSQL:f
  timeout /t 2
  Cacls "C:" /T /E /G  PostgreSQL:f
  timeout /t 2
  Cacls "C:" /T /E /G  "TODOS OS PACOTES DE APLICATIVOS":f
  timeout /t 2
  Cacls "C:/" /T /E /G  "TODOS OS PACOTES DE APLICATIVOS":f
  timeout /t 2
  Cacls "C:/" /T /E /G  "TODOS OS PACOTES DE APLICATIVOS RESTRITOS":f
  timeout /t 2
  Cacls "C:" /T /E /G  "TODOS OS PACOTES DE APLICATIVOS RESTRITOS":f
  timeout /t 2
  Cacls "C:/" /T /E /G  %USERNAME%:f
  timeout /t 2
  Cacls "C:" /T /E /G  %USERNAME%:f
  Cacls "C:/" /T /E /G  todos:f
  timeout /t 2
  Cacls "C:" /T /E /G  todos:f

IF EXIST "C:\Program Files (x86)" (
  ECHO       Alterando permissao da pasta  "C:\Program Files (x86)"
  takeown /f "C:\Program Files (x86)" /r /d y
  timeout /t 2
  Cacls "C:\Program Files (x86)" /T /E /G  todos:f
  timeout /t 2
  Cacls "C:\Program Files (x86)" /T /E /G  Administradores:f    
  timeout /t 2
  Cacls "C:\Program Files (x86)" /T /E /G  SISTEMA:f 
  timeout /t 2	
  Cacls "C:\Program Files (x86)" /T /E /G  Usu rios:f
  timeout /t 2
  Cacls "C:\Program Files (x86)" /T /E /G  "Usu rios autenticados":f
  timeout /t 2
  Cacls "C:\Program Files (x86)" /T /E /G  postgres:f
  timeout /t 2
  echo By Douglas Cezaro.1.
  Cacls "C:\Program Files (x86)" /T /E /G  PostgreSQL:f
  timeout /t 2
  Cacls "C:\Program Files (x86)" /T /E /G  "TODOS OS PACOTES DE APLICATIVOS":f
  timeout /t 2
  Cacls "C:\Program Files (x86)" /T /E /G  "TODOS OS PACOTES DE APLICATIVOS RESTRITOS":f
  timeout /t 2
  Cacls "C:\Program Files (x86)" /T /E /G  %USERNAME%:f
)
@echo off
cls

IF EXIST "C:\Program Files" (
  ECHO       Alterando permissao da pasta  "C:\Program Files"
  takeown /f "C:\Program Files" /r /d y
  timeout /t 2
  Cacls "C:\Program Files" /T /E /G  todos:f
  timeout /t 2
  Cacls "C:\Program Files" /T /E /G  Administradores:f  
  timeout /t 2  
  Cacls "C:\Program Files" /T /E /G  SISTEMA:f 
echo By Douglas Cezaro.1.
  timeout /t 2	
  Cacls "C:\Program Files" /T /E /G  Usu rios:f
  timeout /t 2
  Cacls "C:\Program Files" /T /E /G  "Usu rios autenticados":f
  timeout /t 2
  Cacls "C:\Program Files" /T /E /G  "TODOS OS PACOTES DE APLICATIVOS":f
  timeout /t 2
  Cacls "C:\Program Files" /T /E /G  "TODOS OS PACOTES DE APLICATIVOS RESTRITOS":f
  timeout /t 2
  Cacls "C:\Program Files" /T /E /G  %USERNAME%:f
  timeout /t 2
  Cacls "C:\Program Files" /T /E /G  postgres:f
  timeout /t 2
  Cacls "C:\Program Files" /T /E /G  PostgreSQL:f
)

IF EXIST "C:\Arquivos de Programas" (
  ECHO       Alterando permissao da pasta  "C:\Arquivos de Programas" 
  takeown /f "C:\Arquivos de Programas" /r /d y
  timeout /t 2
  Cacls "C:\Arquivos de Programas"  /T /E /G  todos:f
  timeout /t 2
  Cacls "C:\Arquivos de Programas"  /T /E /G  Administradores:f    
  timeout /t 2
  Cacls "C:\Arquivos de Programas"  /T /E /G  SISTEMA:f 
  timeout /t 2	
  Cacls "C:\Arquivos de Programas"  /T /E /G  Usu rios:f
  timeout /t 2
  Cacls "C:\Arquivos de Programas"  /T /E /G  "Usu rios autenticados":f
  timeout /t 2
  Cacls "C:\Arquivos de Programas"  /T /E /G  postgres:f
  timeout /t 2
  Cacls "C:\Arquivos de Programas"  /T /E /G  PostgreSQL:f
  timeout /t 2
  Cacls "C:\Arquivos de Programas"  /T /E /G  "TODOS OS PACOTES DE APLICATIVOS":f
  timeout /t 2
  Cacls "C:\Arquivos de Programas"  /T /E /G  "TODOS OS PACOTES DE APLICATIVOS RESTRITOS":f
  timeout /t 2
  Cacls "C:\Arquivos de Programas"  /T /E /G  %USERNAME%:f
  timeout /t 2
)

IF EXIST "C:\Arquivos de Programas (x86)" (
  ECHO       Alterando permissao da pasta  "C:\Arquivos de Programas (x86)"
  takeown /f "C:\Arquivos de Programas (x86)" /r /d y
  timeout /t 2
  Cacls "C:\Arquivos de Programas (x86)" /T /E /G  todos:f
  timeout /t 2
  Cacls "C:\Arquivos de Programas (x86)" /T /E /G  Administradores:f 
  timeout /t 2   
  Cacls "C:\Arquivos de Programas (x86)" /T /E /G  SISTEMA:f 	
  timeout /t 2
  Cacls "C:\Arquivos de Programas (x86)" /T /E /G  Usu rios:f
  timeout /t 2
  Cacls "C:\Arquivos de Programas (x86)" /T /E /G  "Usu rios autenticados":f
  timeout /t 2
  Cacls "C:\Arquivos de Programas (x86)" /T /E /G  postgres:f
  timeout /t 2
  Cacls "C:\Arquivos de Programas (x86)" /T /E /G  PostgreSQL:f
  echo By NegoPimbador
  timeout /t 2
  Cacls "C:\Arquivos de Programas (x86)" /T /E /G  "TODOS OS PACOTES DE APLICATIVOS":f
  timeout /t 2
  Cacls "C:\Arquivos de Programas (x86)" /T /E /G  "TODOS OS PACOTES DE APLICATIVOS RESTRITOS":f
  timeout /t 2
  Cacls "C:\Arquivos de Programas (x86)" /T /E /G  %USERNAME%:f
  timeout /t 2
) 

IF EXIST "C:\FrCaixaCiss" (
  ECHO       Alterando permissao da pasta  "C:\FrCaixaCiss"
  takeown /f "C:\FrCaixaCiss" /r /d y
  timeout /t 2
  Cacls "C:\FrCaixaCiss" /T /E /G  todos:f
  timeout /t 2
  Cacls "C:\FrCaixaCiss" /T /E /G  Administradores:f   
  timeout /t 2 
  Cacls "C:\FrCaixaCiss" /T /E /G  SISTEMA:f 	
  timeout /t 2
  Cacls "C:\FrCaixaCiss" /T /E /G  Usu rios:f
  timeout /t 2
  Cacls "C:\FrCaixaCiss" /T /E /G  "Usu rios autenticados":f
  timeout /t 2
  Cacls "C:\FrCaixaCiss" /T /E /G  postgres:f
  timeout /t 2
  Cacls "C:\FrCaixaCiss" /T /E /G  PostgreSQL:f
  timeout /t 2
  Cacls "C:\FrCaixaCiss" /T /E /G  "TODOS OS PACOTES DE APLICATIVOS":f
  timeout /t 2
  Cacls "C:\FrCaixaCiss" /T /E /G  "TODOS OS PACOTES DE APLICATIVOS RESTRITOS":f
  timeout /t 2
  Cacls "C:\FrCaixaCiss" /T /E /G  %USERNAME%:f
  timeout /t 2
)

ECHO Alterando permissao da pasta "C:\windows"
takeown /f "C:\windows" /r /d y
  timeout /t 2
  Cacls "C:\windows" /T /E /G  todos:f
  timeout /t 2
  echo by Douglas Cezaro... 
  Cacls "C:\windows" /T /E /G  Administradores:f  
  timeout /t 2  
  Cacls "C:\windows" /T /E /G  SISTEMA:f 
  timeout /t 2	
  Cacls "C:\windows" /T /E /G  Usu rios:f
  timeout /t 2
  Cacls "C:\windows" /T /E /G  "Usu rios autenticados":f
  timeout /t 2
  Cacls "C:\windows" /T /E /G  postgres:f
  timeout /t 2
  Cacls "C:\windows" /T /E /G  PostgreSQL:f
  timeout /t 2
  Cacls "C:\windows" /T /E /G  "TODOS OS PACOTES DE APLICATIVOS":f
  timeout /t 2
  Cacls "C:\windows" /T /E /G  "TODOS OS PACOTES DE APLICATIVOS RESTRITOS":f
  timeout /t 2
  Cacls "C:\windows" /T /E /G  %USERNAME%:f
  timeout /t 2
  Cacls "C:\ciss" /T /E /G  Usu rios:f

IF EXIST "C:\ciss" (
  ECHO Alterando permissao da pasta "C:\ciss"
takeown /f "C:\ciss" /r /d y
  timeout /t 2
  Cacls "C:\ciss" /T /E /G  todos:f 
  timeout /t 2
  Cacls "C:\ciss" /T /E /G  Administradores:f  
  timeout /t 2  
  Cacls "C:\ciss" /T /E /G  SISTEMA:f 	
  timeout /t 2
  Cacls "C:\ciss" /T /E /G  Usu rios:f
  timeout /t 2
  Cacls "C:\ciss" /T /E /G  "Usu rios autenticados":f
  timeout /t 2
  Cacls "C:\ciss" /T /E /G  "TODOS OS PACOTES DE APLICATIVOS":f
  timeout /t 2
  Cacls "C:\ciss" /T /E /G  "TODOS OS PACOTES DE APLICATIVOS RESTRITOS":f
  timeout /t 2
  Cacls "C:\ciss" /T /E /G  %USERNAME%:f
  timeout /t 2
  Cacls "C:\ciss" /T /E /G  Usu rios:f
  echo By NegoPimbador
  timeout /t 2
  Cacls "C:\ciss" /T /E /G  postgres:f
  timeout /t 2
  Cacls "C:\ciss" /T /E /G  PostgreSQL:f
)

echo By Douglas Cezaro
IF EXIST "C:\Windows\System32" (
  ECHO       Alterando permissao da pasta  "C:\Windows\System32"
  takeown /f "C:\Windows\System32" /r /d y
  timeout /t 2
  Cacls "C:\Windows\System32" /T /E /G  todos:f 
  timeout /t 2
  Cacls "C:\Windows\System32" /T /E /G  Administradores:f    
  timeout /t 2
  Cacls "C:\Windows\System32" /T /E /G  SISTEMA:f 
  timeout /t 2	
  Cacls "C:\Windows\System32" /T /E /G  Usu rios:f
  timeout /t 2
  Cacls "C:\Windows\System32" /T /E /G  "Usu rios autenticados":f
  timeout /t 2
  Cacls "C:\Windows\System32" /T /E /G  "TODOS OS PACOTES DE APLICATIVOS":f
  timeout /t 2
  Cacls "C:\Windows\System32" /T /E /G  "TODOS OS PACOTES DE APLICATIVOS RESTRITOS":f
  timeout /t 2
  Cacls "C:\Windows\System32" /T /E /G  %USERNAME%:f
  timeout /t 2
  Cacls "C:\Windows\System32" /T /E /G  postgres:f
  timeout /t 2
  Cacls "C:\Windows\System32" /T /E /G  PostgreSQL:f
)

IF EXIST "C:\Windows\SysWOW64" (
  ECHO       Alterando permissao da pasta  "C:\Windows\SysWOW64"
  takeown /f "C:\Windows\SysWOW64" /r /d y
  Cacls "C:\Windows\SysWOW64" /T /E /G  Usu rios:f
  timeout /t 2
  Cacls "C:\Windows\SysWOW64" /T /E /G  todos:f 
  timeout /t 2
  Cacls "C:\Windows\SysWOW64" /T /E /G  Administradores:f
  timeout /t 2   
  Cacls "C:\Windows\SysWOW64" /T /E /G  SISTEMA:f
  timeout /t 2  	
  Cacls "C:\Windows\SysWOW64" /T /E /G  Usu rios:f
  timeout /t 2
  Cacls "C:\Windows\SysWOW64" /T /E /G  "Usu rios autenticados":f
  echo By NegoPimbador
  timeout /t 2
  Cacls "C:\Windows\SysWOW64" /T /E /G  "TODOS OS PACOTES DE APLICATIVOS":f
  timeout /t 2
  Cacls "C:\Windows\SysWOW64" /T /E /G  "TODOS OS PACOTES DE APLICATIVOS RESTRITOS":f
  timeout /t 2
  Cacls "C:\Windows\SysWOW64" /T /E /G  "Usu rios autenticados":f
  timeout /t 2
  Cacls "C:\Windows\SysWOW64" /T /E /G  %USERNAME%:f
  timeout /t 2
  Cacls "C:\Windows\SysWOW64" /T /E /G  postgres:f
  timeout /t 2
  Cacls "C:\Windows\SysWOW64" /T /E /G  PostgreSQL:f
  timeout /t 2
  Cacls "C:\Windows\SysWOW64" /T /E /G  Usu rios:f
  Cacls "C:\Windows\SysWOW64" /T /E /G  "Usu rios autenticados":f
  Cacls "C:\Windows\System32" /T /E /G  Usu rios:f
  Cacls "C:\Windows\System32" /T /E /G  "Usu rios autenticados":f
  Cacls "C:\Windows" /T /E /G  Usu rios:f
  Cacls "C:\Windows" /T /E /G  "Usu rios autenticados":f
  Cacls "C:/" /T /E /G  Usu rios:f
  Cacls "C:/" /T /E /G  "Usu rios autenticados":f
  Cacls "C:" /T /E /G  Usu rios:f
  Cacls "C:" /T /E /G  "Usu rios autenticados":f
  Cacls "C:\Program Files (x86)" /T /E /G  Usu rios:f
  Cacls "C:\Program Files (x86)" /T /E /G  "Usu rios autenticados":f
  Cacls "C:\Program Files" /T /E /G  Usu rios:f
  Cacls "C:\Program Files" /T /E /G  "Usu rios autenticados":f
  Cacls "C:\FrCaixaCiss" /T /E /G  Usu rios:f
  Cacls "C:\FrCaixaCiss" /T /E /G  "Usu rios autenticados":f
  Cacls "C:\ciss" /T /E /G  Usu rios:f
  Cacls "C:\ciss" /T /E /G  "Usu rios autenticados":f
  Cacls "C:\Arquivos de Programas (x86)" /T /E /G  Usu rios:f
  Cacls "C:\Arquivos de Programas (x86)" /T /E /G  "Usu rios autenticados":f
  Cacls "C:\Arquivos de Programas" /T /E /G  Usu rios:f
  Cacls "C:\Arquivos de Programas" /T /E /G  "Usu rios autenticados":f

)

ECHO Concluido
ECHO Bat dos Pia da Frente de Caixa
timeout /t 3
@CHOICE /t 1 /C snc /M "" /N /CS /D s
del LOG1.txt
exit
) else (
    echo Ingles
@echo off
cls
ECHO Bat dos Pia da Frente de Caixa
ECHO       Alterando permissao da pasta  "C:"
  takeown /f "C:" /r /d y
  timeout /t 2
  Cacls "C:/" /T /E /G  everyone:f
  timeout /t 2
  Cacls "C:" /T /E /G  everyone:f
  timeout /t 2
  Cacls "C:/" /T /E /G  Administrators:f 
  timeout /t 2
  Cacls "C:" /T /E /G  Administrators:f
  timeout /t 2   
  Cacls "C:/" /T /E /G  SYSTEM:f 
  timeout /t 2	
  Cacls "C:" /T /E /G  SYSTEM:f
  timeout /t 2
  Cacls "C:/" /T /E /G  Users:f
  timeout /t 2
  Cacls "C:" /T /E /G  Users:f
  timeout /t 2
  Cacls "C:" /T /E /G  "Users authenticated":f
  timeout /t 2
  Cacls "C:/" /T /E /G  "Users authenticated":f
  timeout /t 2
  Cacls "C:" /T /E /G  postgres:f
  timeout /t 2
  Cacls "C:/" /T /E /G  postgres:f
  timeout /t 2
  Cacls "C:/" /T /E /G  PostgreSQL:f
  timeout /t 2
  Cacls "C:" /T /E /G  PostgreSQL:f
  timeout /t 2
  Cacls "C:" /T /E /G  "ALL APPLICATIONS PACKAGES":f
  timeout /t 2
  Cacls "C:/" /T /E /G  "ALL APPLICATIONS PACKAGES":f
  timeout /t 2
  Cacls "C:/" /T /E /G  "ALL APPLICATIONS PACKAGES RESTRICTED":f
  timeout /t 2
  Cacls "C:" /T /E /G  "ALL APPLICATIONS PACKAGES RESTRICTED":f
  timeout /t 2
  Cacls "C:/" /T /E /G  %USERNAME%:f
  timeout /t 2
  Cacls "C:" /T /E /G  %USERNAME%:f

IF EXIST "C:\Program Files (x86)" (
  ECHO       Alterando permissao da pasta  "C:\Program Files (x86)"
  takeown /f "C:\Program Files (x86)" /r /d y
  timeout /t 2
  Cacls "C:\Program Files (x86)" /T /E /G  everyone:f
  timeout /t 2
  Cacls "C:\Program Files (x86)" /T /E /G  Administrators:f    
  timeout /t 2
  Cacls "C:\Program Files (x86)" /T /E /G  SYSTEM:f 
  timeout /t 2	
  Cacls "C:\Program Files (x86)" /T /E /G  Users:f
  timeout /t 2
  Cacls "C:\Program Files (x86)" /T /E /G  "Users authenticated":f
  timeout /t 2
  Cacls "C:\Program Files (x86)" /T /E /G  postgres:f
  timeout /t 2
  echo By Douglas Cezaro.1.
  Cacls "C:\Program Files (x86)" /T /E /G  PostgreSQL:f
  timeout /t 2
  Cacls "C:\Program Files (x86)" /T /E /G  "ALL APPLICATIONS PACKAGES":f
  timeout /t 2
  Cacls "C:\Program Files (x86)" /T /E /G  "ALL APPLICATIONS PACKAGES RESTRICTED":f
  timeout /t 2
  Cacls "C:\Program Files (x86)" /T /E /G  %USERNAME%:f
)
@echo off
cls

IF EXIST "C:\Program Files" (
  ECHO       Alterando permissao da pasta  "C:\Program Files"
  takeown /f "C:\Program Files" /r /d y
  timeout /t 2
  Cacls "C:\Program Files" /T /E /G  everyone:f
  timeout /t 2
  Cacls "C:\Program Files" /T /E /G  Administrators:f  
  timeout /t 2  
  Cacls "C:\Program Files" /T /E /G  SYSTEM:f 
  timeout /t 2	
  Cacls "C:\Program Files" /T /E /G  Users:f
  timeout /t 2
  Cacls "C:\Program Files" /T /E /G  "Users authenticated":f
  timeout /t 2
  Cacls "C:\Program Files" /T /E /G  "ALL APPLICATIONS PACKAGES":f
  timeout /t 2
  Cacls "C:\Program Files" /T /E /G  "ALL APPLICATIONS PACKAGES RESTRICTED":f
  timeout /t 2
  Cacls "C:\Program Files" /T /E /G  %USERNAME%:f
  timeout /t 2
  Cacls "C:\Program Files" /T /E /G  postgres:f
  timeout /t 2
  Cacls "C:\Program Files" /T /E /G  PostgreSQL:f
)

IF EXIST "C:\FrCaixaCiss" (
  ECHO       Alterando permissao da pasta  "C:\FrCaixaCiss"
  takeown /f "C:\FrCaixaCiss" /r /d y
  timeout /t 2
  Cacls "C:\FrCaixaCiss" /T /E /G  everyone:f
  timeout /t 2
  Cacls "C:\FrCaixaCiss" /T /E /G  Administrators:f   
  echo By NegoPimbador
  timeout /t 2 
  Cacls "C:\FrCaixaCiss" /T /E /G  SYSTEM:f 	
  timeout /t 2
  Cacls "C:\FrCaixaCiss" /T /E /G  Users:f
  timeout /t 2
  Cacls "C:\FrCaixaCiss" /T /E /G  "Users authenticated":f
  timeout /t 2
  Cacls "C:\FrCaixaCiss" /T /E /G  postgres:f
  timeout /t 2
  Cacls "C:\FrCaixaCiss" /T /E /G  PostgreSQL:f
  timeout /t 2
  Cacls "C:\FrCaixaCiss" /T /E /G  "ALL APPLICATIONS PACKAGES":f
  timeout /t 2
  Cacls "C:\FrCaixaCiss" /T /E /G  "ALL APPLICATIONS PACKAGES RESTRICTED":f
  timeout /t 2
  Cacls "C:\FrCaixaCiss" /T /E /G  %USERNAME%:f
  timeout /t 2
)

ECHO Alterando permissao da pasta "C:\windows"
takeown /f "C:\windows" /r /d y
  timeout /t 2
  Cacls "C:\windows" /T /E /G  everyone:f
  timeout /t 2
  echo by Douglas Cezaro... 
  Cacls "C:\windows" /T /E /G  Administrators:f  
  timeout /t 2  
  Cacls "C:\windows" /T /E /G  SYSTEM:f 
  timeout /t 2	
  Cacls "C:\windows" /T /E /G  Users:f
  timeout /t 2
  Cacls "C:\windows" /T /E /G  "Users authenticated":f
  timeout /t 2
  Cacls "C:\windows" /T /E /G  postgres:f
  timeout /t 2
  Cacls "C:\windows" /T /E /G  PostgreSQL:f
  timeout /t 2
  Cacls "C:\windows" /T /E /G  "ALL APPLICATIONS PACKAGES":f
  timeout /t 2
  Cacls "C:\windows" /T /E /G  "ALL APPLICATIONS PACKAGES RESTRICTED":f
  timeout /t 2
  Cacls "C:\windows" /T /E /G  %USERNAME%:f
  timeout /t 2
  Cacls "C:\ciss" /T /E /G  Users:f

IF EXIST "C:\ciss" (
  ECHO Alterando permissao da pasta "C:\ciss"
takeown /f "C:\ciss" /r /d y
  timeout /t 2
  Cacls "C:\ciss" /T /E /G  everyone:f 
  timeout /t 2
  Cacls "C:\ciss" /T /E /G  Administrators:f  
  timeout /t 2  
  Cacls "C:\ciss" /T /E /G  SYSTEM:f 	
  timeout /t 2
  Cacls "C:\ciss" /T /E /G  Users:f
  timeout /t 2
  Cacls "C:\ciss" /T /E /G  "Users authenticated":f
  timeout /t 2
  Cacls "C:\ciss" /T /E /G  "ALL APPLICATIONS PACKAGES":f
  timeout /t 2
  Cacls "C:\ciss" /T /E /G  "ALL APPLICATIONS PACKAGES RESTRICTED":f
  timeout /t 2
  Cacls "C:\ciss" /T /E /G  %USERNAME%:f
  timeout /t 2
  Cacls "C:\ciss" /T /E /G  Users:f
  timeout /t 2
  Cacls "C:\ciss" /T /E /G  postgres:f
  timeout /t 2
  Cacls "C:\ciss" /T /E /G  PostgreSQL:f
)

echo By Douglas Cezaro
IF EXIST "C:\Windows\System32" (
  ECHO       Alterando permissao da pasta  "C:\Windows\System32"
  takeown /f "C:\Windows\System32" /r /d y
  timeout /t 2
  Cacls "C:\Windows\System32" /T /E /G  everyone:f 
  timeout /t 2
  Cacls "C:\Windows\System32" /T /E /G  Administrators:f    
  timeout /t 2
  Cacls "C:\Windows\System32" /T /E /G  SYSTEM:f 
  timeout /t 2	
  Cacls "C:\Windows\System32" /T /E /G  Users:f
  timeout /t 2
  Cacls "C:\Windows\System32" /T /E /G  "Users authenticated":f
  echo By NegoPimbador
  timeout /t 2
  Cacls "C:\Windows\System32" /T /E /G  "ALL APPLICATIONS PACKAGES":f
  timeout /t 2
  Cacls "C:\Windows\System32" /T /E /G  "ALL APPLICATIONS PACKAGES RESTRICTED":f
  timeout /t 2
  Cacls "C:\Windows\System32" /T /E /G  %USERNAME%:f
  timeout /t 2
  Cacls "C:\Windows\System32" /T /E /G  postgres:f
  timeout /t 2
  Cacls "C:\Windows\System32" /T /E /G  PostgreSQL:f
)

IF EXIST "C:\Windows\SysWOW64" (
  ECHO       Alterando permissao da pasta  "C:\Windows\SysWOW64"
  takeown /f "C:\Windows\SysWOW64" /r /d y
  Cacls "C:\Windows\SysWOW64" /T /E /G  Users:f
  timeout /t 2
  Cacls "C:\Windows\SysWOW64" /T /E /G  everyone:f 
  timeout /t 2
  Cacls "C:\Windows\SysWOW64" /T /E /G  Administrators:f
  timeout /t 2   
  Cacls "C:\Windows\SysWOW64" /T /E /G  SYSTEM:f
  timeout /t 2  	
  Cacls "C:\Windows\SysWOW64" /T /E /G  Users:f
  timeout /t 2
  Cacls "C:\Windows\SysWOW64" /T /E /G  "Users authenticated":f
  timeout /t 2
  Cacls "C:\Windows\SysWOW64" /T /E /G  "ALL APPLICATIONS PACKAGES":f
  timeout /t 2
  Cacls "C:\Windows\SysWOW64" /T /E /G  "ALL APPLICATIONS PACKAGES RESTRICTED":f
  timeout /t 2
  Cacls "C:\Windows\SysWOW64" /T /E /G  "Users authenticated":f
  timeout /t 2
  Cacls "C:\Windows\SysWOW64" /T /E /G  %USERNAME%:f
  timeout /t 2
  Cacls "C:\Windows\SysWOW64" /T /E /G  postgres:f
  timeout /t 2
  Cacls "C:\Windows\SysWOW64" /T /E /G  PostgreSQL:f
  timeout /t 2
  Cacls "C:\Windows\SysWOW64" /T /E /G  Users:f
  Cacls "C:\Windows\SysWOW64" /T /E /G  "Users authenticated":f
  Cacls "C:\Windows\System32" /T /E /G  Users:f
  Cacls "C:\Windows\System32" /T /E /G  "Users authenticated":f
  Cacls "C:\Windows" /T /E /G  Users:f
  Cacls "C:\Windows" /T /E /G  "Users authenticated":f
  Cacls "C:/" /T /E /G  Users:f
  Cacls "C:/" /T /E /G  "Users authenticated":f
  Cacls "C:" /T /E /G  Users:f
  Cacls "C:" /T /E /G  "Users authenticated":f
  Cacls "C:\Program Files (x86)" /T /E /G  Users:f
  Cacls "C:\Program Files (x86)" /T /E /G  "Users authenticated":f
  Cacls "C:\Program Files" /T /E /G  Users:f
  Cacls "C:\Program Files" /T /E /G  "Users authenticated":f
  Cacls "C:\FrCaixaCiss" /T /E /G  Users:f
  Cacls "C:\FrCaixaCiss" /T /E /G  "Users authenticated":f
  Cacls "C:\ciss" /T /E /G  Users:f
  Cacls "C:\ciss" /T /E /G  "Users authenticated":f
)

ECHO Concluido
ECHO Bat dos Pia da Frente de Caixa
timeout /t 3
@CHOICE /t 1 /C snc /M "" /N /CS /D s
del LOG1.txt
exit
)
