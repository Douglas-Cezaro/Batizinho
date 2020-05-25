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