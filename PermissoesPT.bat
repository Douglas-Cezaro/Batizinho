@echo off
cls

ECHO       Alterando permissao da pasta  "C:"
  takeown /f "C:" /r /d y
  Cacls "C:/" /T /E /G  todos:f
  Cacls "C:" /T /E /G  todos:f
  Cacls "C:/" /T /E /G  Administradores:f 
  Cacls "C:" /T /E /G  Administradores:f   
  Cacls "C:/" /T /E /G  SISTEMA:f 	
  Cacls "C:" /T /E /G  SISTEMA:f
  Cacls "C:/" /T /E /G  Usu rios:f
  Cacls "C:" /T /E /G  Usu rios:f
  Cacls "C:" /T /E /G  "Usu rios autenticados":f
  Cacls "C:/" /T /E /G  "Usu rios autenticados":f
  Cacls "C:" /T /E /G  postgres:f
  Cacls "C:/" /T /E /G  postgres:f
  Cacls "C:/" /T /E /G  PostgreSQL:f
  Cacls "C:" /T /E /G  PostgreSQL:f
  Cacls "C:" /T /E /G  "TODOS OS PACOTES DE APLICATIVOS":f
  Cacls "C:/" /T /E /G  "TODOS OS PACOTES DE APLICATIVOS":f
  Cacls "C:/" /T /E /G  "TODOS OS PACOTES DE APLICATIVOS RESTRITOS":f
  Cacls "C:" /T /E /G  "TODOS OS PACOTES DE APLICATIVOS RESTRITOS":f
  Cacls "C:/" /T /E /G  %USERNAME%:f
  Cacls "C:" /T /E /G  %USERNAME%:f

IF EXIST "C:\Program Files (x86)" (
  ECHO       Alterando permissao da pasta  "C:\Program Files (x86)"
  takeown /f "C:\Program Files (x86)" /r /d y
  Cacls "C:\Program Files (x86)" /T /E /G  todos:f
  Cacls "C:\Program Files (x86)" /T /E /G  Administradores:f    
  Cacls "C:\Program Files (x86)" /T /E /G  SISTEMA:f 	
  Cacls "C:\Program Files (x86)" /T /E /G  Usu rios:f
  Cacls "C:\Program Files (x86)" /T /E /G  "Usu rios autenticados":f
  Cacls "C:\Program Files (x86)" /T /E /G  postgres:f
  echo By Douglas Cezaro.1.
  Cacls "C:\Program Files (x86)" /T /E /G  PostgreSQL:f
  Cacls "C:\Program Files (x86)" /T /E /G  "TODOS OS PACOTES DE APLICATIVOS":f
  Cacls "C:\Program Files (x86)" /T /E /G  "TODOS OS PACOTES DE APLICATIVOS RESTRITOS":f
  Cacls "C:\Program Files (x86)" /T /E /G  %USERNAME%:f
)
@echo off
cls

IF EXIST "C:\Program Files" (
  ECHO       Alterando permissao da pasta  "C:\Program Files"
  takeown /f "C:\Program Files" /r /d y
  Cacls "C:\Program Files" /T /E /G  todos:f
  Cacls "C:\Program Files" /T /E /G  Administradores:f    
  Cacls "C:\Program Files" /T /E /G  SISTEMA:f 	
  Cacls "C:\Program Files" /T /E /G  Usu rios:f
  Cacls "C:\Program Files" /T /E /G  "Usu rios autenticados":f
  Cacls "C:\Program Files" /T /E /G  "TODOS OS PACOTES DE APLICATIVOS":f
  Cacls "C:\Program Files" /T /E /G  "TODOS OS PACOTES DE APLICATIVOS RESTRITOS":f
  Cacls "C:\Program Files" /T /E /G  Usu rios:f
  Cacls "C:\Program Files" /T /E /G  %USERNAME%:f
  Cacls "C:\Program Files" /T /E /G  postgres:f
  Cacls "C:\Program Files" /T /E /G  PostgreSQL:f
)

IF EXIST "C:\Arquivos de Programas" (
  ECHO       Alterando permissao da pasta  "C:\Arquivos de Programas" 
  takeown /f "C:\Arquivos de Programas" /r /d y
  Cacls "C:\Arquivos de Programas"  /T /E /G  todos:f
  Cacls "C:\Arquivos de Programas"  /T /E /G  Administradores:f    
  Cacls "C:\Arquivos de Programas"  /T /E /G  SISTEMA:f 	
  Cacls "C:\Arquivos de Programas"  /T /E /G  Usu rios:f
  Cacls "C:\Arquivos de Programas"  /T /E /G  "Usu rios autenticados":f
  Cacls "C:\Arquivos de Programas"  /T /E /G  postgres:f
  Cacls "C:\Arquivos de Programas"  /T /E /G  PostgreSQL:f
  Cacls "C:\Arquivos de Programas"  /T /E /G  "TODOS OS PACOTES DE APLICATIVOS":f
  Cacls "C:\Arquivos de Programas"  /T /E /G  "TODOS OS PACOTES DE APLICATIVOS RESTRITOS":f
  Cacls "C:\Arquivos de Programas"  /T /E /G  %USERNAME%:f
)

IF EXIST "C:\Arquivos de Programas (x86)" (
  ECHO       Alterando permissao da pasta  "C:\Arquivos de Programas (x86)"
  takeown /f "C:\Arquivos de Programas (x86)" /r /d y
  Cacls "C:\Arquivos de Programas (x86)" /T /E /G  todos:f
  Cacls "C:\Arquivos de Programas (x86)" /T /E /G  Administradores:f    
  Cacls "C:\Arquivos de Programas (x86)" /T /E /G  SISTEMA:f 	
  Cacls "C:\Arquivos de Programas (x86)" /T /E /G  Usu rios:f
  Cacls "C:\Arquivos de Programas (x86)" /T /E /G  "Usu rios autenticados":f
  Cacls "C:\Arquivos de Programas (x86)" /T /E /G  postgres:f
  Cacls "C:\Arquivos de Programas (x86)" /T /E /G  PostgreSQL:f
  Cacls "C:\Arquivos de Programas (x86)" /T /E /G  "TODOS OS PACOTES DE APLICATIVOS":f
  Cacls "C:\Arquivos de Programas (x86)" /T /E /G  "TODOS OS PACOTES DE APLICATIVOS RESTRITOS":f
  Cacls "C:\Arquivos de Programas (x86)" /T /E /G  %USERNAME%:f
) 

IF EXIST "C:\FrCaixaCiss" (
  ECHO       Alterando permissao da pasta  "C:\FrCaixaCiss"
  takeown /f "C:\FrCaixaCiss" /r /d y
  Cacls "C:\FrCaixaCiss" /T /E /G  todos:f
  Cacls "C:\FrCaixaCiss" /T /E /G  Administradores:f    
  Cacls "C:\FrCaixaCiss" /T /E /G  SISTEMA:f 	
  Cacls "C:\FrCaixaCiss" /T /E /G  Usu rios:f
  Cacls "C:\FrCaixaCiss" /T /E /G  "Usu rios autenticados":f
  Cacls "C:\FrCaixaCiss" /T /E /G  postgres:f
  Cacls "C:\FrCaixaCiss" /T /E /G  PostgreSQL:f
  Cacls "C:\FrCaixaCiss" /T /E /G  "TODOS OS PACOTES DE APLICATIVOS":f
  Cacls "C:\FrCaixaCiss" /T /E /G  "TODOS OS PACOTES DE APLICATIVOS RESTRITOS":f
  Cacls "C:\FrCaixaCiss" /T /E /G  %USERNAME%:f
)

ECHO Alterando permissao da pasta "C:\windows"
takeown /f "C:\windows" /r /d y
  Cacls "C:\windows" /T /E /G  todos:f
  echo by Douglas Cezaro... 
  Cacls "C:\windows" /T /E /G  Administradores:f    
  Cacls "C:\windows" /T /E /G  SISTEMA:f 	
  Cacls "C:\windows" /T /E /G  Usu rios:f
  Cacls "C:\windows" /T /E /G  "Usu rios autenticados":f
  Cacls "C:\windows" /T /E /G  postgres:f
  Cacls "C:\windows" /T /E /G  PostgreSQL:f
  Cacls "C:\windows" /T /E /G  "TODOS OS PACOTES DE APLICATIVOS":f
  Cacls "C:\windows" /T /E /G  "TODOS OS PACOTES DE APLICATIVOS RESTRITOS":f
  Cacls "C:\windows" /T /E /G  %USERNAME%:f
  Cacls "C:\ciss" /T /E /G  Usu rios:f

IF EXIST "C:\ciss" (
  ECHO Alterando permissao da pasta "C:\ciss"
takeown /f "C:\ciss" /r /d y
  Cacls "C:\ciss" /T /E /G  todos:f 
  Cacls "C:\ciss" /T /E /G  Administradores:f    
  Cacls "C:\ciss" /T /E /G  SISTEMA:f 	
  Cacls "C:\ciss" /T /E /G  Usu rios:f
  Cacls "C:\ciss" /T /E /G  "Usu rios autenticados":f
  Cacls "C:\ciss" /T /E /G  "TODOS OS PACOTES DE APLICATIVOS":f
  Cacls "C:\ciss" /T /E /G  "TODOS OS PACOTES DE APLICATIVOS RESTRITOS":f
  Cacls "C:\ciss" /T /E /G  %USERNAME%:f
  Cacls "C:\ciss" /T /E /G  Usu rios:f
  Cacls "C:\ciss" /T /E /G  postgres:f
  Cacls "C:\ciss" /T /E /G  PostgreSQL:f
)

echo By Douglas Cezaro
IF EXIST "C:\Windows\System32" (
  ECHO       Alterando permissao da pasta  "C:\Windows\System32"
  takeown /f "C:\Windows\System32" /r /d y
  Cacls "C:\Windows\System32" /T /E /G  todos:f 
  Cacls "C:\Windows\System32" /T /E /G  Administradores:f    
  Cacls "C:\Windows\System32" /T /E /G  SISTEMA:f 	
  Cacls "C:\Windows\System32" /T /E /G  Usu rios:f
  Cacls "C:\Windows\System32" /T /E /G  "Usu rios autenticados":f
  Cacls "C:\Windows\System32" /T /E /G  "TODOS OS PACOTES DE APLICATIVOS":f
  Cacls "C:\Windows\System32" /T /E /G  "TODOS OS PACOTES DE APLICATIVOS RESTRITOS":f
  Cacls "C:\Windows\System32" /T /E /G  %USERNAME%:f
  Cacls "C:\Windows\System32" /T /E /G  postgres:f
  Cacls "C:\Windows\System32" /T /E /G  PostgreSQL:f
)

IF EXIST "C:\Windows\SysWOW64" (
  ECHO       Alterando permissao da pasta  "C:\Windows\SysWOW64"
  takeown /f "C:\Windows\SysWOW64" /r /d y
  Cacls "C:\Windows\SysWOW64" /T /E /G  todos:f 
  Cacls "C:\Windows\SysWOW64" /T /E /G  Administradores:f    
  Cacls "C:\Windows\SysWOW64" /T /E /G  SISTEMA:f 	
  Cacls "C:\Windows\SysWOW64" /T /E /G  Usu rios:f
  Cacls "C:\Windows\SysWOW64" /T /E /G  "Usu rios autenticados":f
  Cacls "C:\Windows\System32" /T /E /G  Usu rios:f
  Cacls "C:\Windows\SysWOW64" /T /E /G  "TODOS OS PACOTES DE APLICATIVOS":f
  Cacls "C:\Windows\SysWOW64" /T /E /G  "TODOS OS PACOTES DE APLICATIVOS RESTRITOS":f
  Cacls "C:\Windows\SysWOW64" /T /E /G  %USERNAME%:f
  Cacls "C:\Windows\SysWOW64" /T /E /G  postgres:f
  Cacls "C:\Windows\SysWOW64" /T /E /G  PostgreSQL:f
)

ECHO Concluido
timeout /t 10
@CHOICE /t 1 /C snc /M "" /N /CS /D s