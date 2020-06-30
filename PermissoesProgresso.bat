@echo off
cls
title Permiss‰es Frente de Caixa
set LOG1=LOG1.txt
cls
:: R”TULO INICIAL
:begin
cls
echo.
echo.
systeminfo | FIND /I "pt-br" > %LOG1%
if exist %LOG1% (goto :gr) else (echo. nao gerado o LOG 1 & pause & exit)
:gr
cls
FOR /F "TOKENS=5-9 DELIMS= " %%B IN (%LOG1%) DO SET B= %%B %%C %%D %%E %%F
ECHO.&ECHO.&ECHO Localidade OPERACIONAL:&ECHO.%B%
if not "%B%"=="" (
 @echo off
title Permiss‰es Frente de Caixa
echo.
cls
echo.
echo.
echo Alterando Permiss‰es pasta "C:"
echo ------------------------------------------------------------- 
ECHO Progresso: ≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤ 0%%
echo -------------------------------------------------------------
>nul^
      (
	takeown /f "C:" /r /d y
  	Cacls "C:/" /T /E /G  todos:f
  	Cacls "C:" /T /E /G  todos:f
       ) 2>nul
cls
echo.
echo.
echo Aplicando Permiss‰es pasta "C:"
echo ------------------------------------------------------------- 
echo Progresso: €≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤ 1%%
echo ------------------------------------------------------------- 
>nul^
      (
  	Cacls "C:/" /T /E /G  todos:f
  	Cacls "C:" /T /E /G  todos:f
  	Cacls "C:/" /T /E /G  Administradores:f 
  	Cacls "C:" /T /E /G  Administradores:f   
  	Cacls "C:/" /T /E /G  SISTEMA:f 	
  	Cacls "C:" /T /E /G  SISTEMA:f
  	Cacls "C:/" /T /E /G  Usu†rios:f
  	Cacls "C:" /T /E /G  Usu†rios:f
  	Cacls "C:" /T /E /G  "Usu†rios autenticados":f
  	Cacls "C:/" /T /E /G  "Usu†rios autenticados":f
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
       ) 2>nul
cls
echo.
echo.
echo Alterando Permiss‰es pasta "C:\Program Files (x86)"
echo ------------------------------------------------------------- 
echo Progresso: €≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤ 2%%
echo ------------------------------------------------------------- 
>nul^
      (
  	takeown /f "C:\Program Files (x86)" /r /d y
	Cacls "C:\Program Files (x86)" /T /E /G  todos:f
       ) 2>nul
cls
echo.
echo.
echo Aplicando Permiss‰es pasta "C:\Program Files (x86)" 
echo para usuario Administradores
echo ------------------------------------------------------------- 
echo Progresso: €€≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤ 3%%
echo -------------------------------------------------------------
>nul^
      (
	Cacls "C:\Program Files (x86)" /T /E /G  Administradores:f    
       ) 2>nul
cls
echo.
echo.
echo Aplicando Permiss‰es pasta "C:\Program Files (x86)"
echo para usuario SISTEMA
echo ------------------------------------------------------------- 
echo Progresso: €€≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤ 4%%
echo -------------------------------------------------------------  
>nul^
      (
 	Cacls "C:\Program Files (x86)" /T /E /G  SISTEMA:f 	    
       ) 2>nul
cls
echo.
echo.
echo Aplicando Permiss‰es pasta "C:\Program Files (x86)" 
echo para usuario Usu†rios
echo ------------------------------------------------------------- 
echo Progresso: €€€≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤ 5%%
echo ------------------------------------------------------------- 
>nul^
      (
   	Cacls "C:\Program Files (x86)" /T /E /G  Usu†rios:f
       ) 2>nul
cls
echo.
echo.
echo Aplicando Permiss‰es pasta "C:\Program Files (x86)" 
echo para usuario Usu†rios autenticados
echo ------------------------------------------------------------- 
echo Progresso: €€€≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤ 6%%
echo ------------------------------------------------------------- 
>nul^
      (
	Cacls "C:\Program Files (x86)" /T /E /G  "Usu†rios autenticados":f
       ) 2>nul
cls
echo.
echo.
echo Aplicando Permiss‰es pasta "C:\Program Files (x86)" 
echo para usuario postgres  
echo ------------------------------------------------------------- 
echo Progresso: €€€€≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤ 7%%
echo -------------------------------------------------------------
>nul^
      (
	Cacls "C:\Program Files (x86)" /T /E /G  postgres:f
       ) 2>nul
cls
echo.
echo.
echo Aplicando Permiss‰es pasta "C:\Program Files (x86)" 
echo para usuario PostgreSQL
echo ------------------------------------------------------------- 
echo Progresso: €€€€≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤ 8%%
echo -------------------------------------------------------------
>nul^
      (
        Cacls "C:\Program Files (x86)" /T /E /G  PostgreSQL:f
       ) 2>nul
cls
echo.
echo.
echo Aplicando Permiss‰es pasta "C:\Program Files (x86)" 
echo para usuario TODOS OS PACOTES DE APLICATIVOS
echo ------------------------------------------------------------- 
echo Progresso: €€€€€≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤ 9%%
echo -------------------------------------------------------------
>nul^
      (
        Cacls "C:\Program Files (x86)" /T /E /G  "TODOS OS PACOTES DE APLICATIVOS":f
       ) 2>nul
cls
echo.
echo.
echo Aplicando Permiss‰es pasta "C:\Program Files (x86)" 
echo para usuario TODOS OS PACOTES DE APLICATIVOS RESTRITOS 
echo ------------------------------------------------------------- 
echo Progresso: €€€€€≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤ 10%%
echo -------------------------------------------------------------
>nul^
      (
        Cacls "C:\Program Files (x86)" /T /E /G  "TODOS OS PACOTES DE APLICATIVOS RESTRITOS":f
       ) 2>nul
cls
echo.
echo.
echo Aplicando Permiss‰es pasta "C:\Program Files (x86)"
echo para usuario %USERNAME% 
echo ------------------------------------------------------------- 
echo Progresso: €€€€€€≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤ 11%%
echo -------------------------------------------------------------
   
>nul^
      (
        Cacls "C:\Program Files (x86)" /T /E /G  %USERNAME%:f
       ) 2>nul
cls
echo.
echo.
echo Alterando Permiss‰es pasta "C:\Program Files" 
echo ------------------------------------------------------------- 
echo Progresso: €€€€€€≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤ 12%%
echo -------------------------------------------------------------
 
>nul^
      (
	  takeown /f "C:\Program Files" /r /d y
       ) 2>nul
cls
echo.
echo.
echo Aplicando Permiss‰es pasta "C:\Program Files"
echo para usuario todos 
echo ------------------------------------------------------------- 
echo Progresso: €€€€€€€≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤ 13%%
echo ------------------------------------------------------------- 
 
>nul^
      (
	 Cacls "C:\Program Files" /T /E /G  todos:f
       ) 2>nul
cls
echo.
echo.
echo Aplicando Permiss‰es pasta "C:\Program Files"
echo para usuario Administradores
echo ------------------------------------------------------------- 
echo Progresso: €€€€€€€≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤ 14%%
echo -------------------------------------------------------------

>nul^
      (
  	 Cacls "C:\Program Files" /T /E /G  Administradores:f  
       ) 2>nul
cls
echo.
echo.
echo Aplicando Permiss‰es pasta "C:\Program Files"
echo para usuario SISTEMA 
echo ------------------------------------------------------------- 
echo Progresso: €€€€€€€€≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤ 15%%
echo -------------------------------------------------------------
 
>nul^
      (
  	 Cacls "C:\Program Files" /T /E /G  SISTEMA:f  
       ) 2>nul
cls
echo.
echo.
echo Aplicando Permiss‰es pasta "C:\Program Files"
echo para usuario Usu†rios
echo ------------------------------------------------------------- 
echo Progresso: €€€€€€€€≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤ 16%%
echo -------------------------------------------------------------

>nul^
      (
         Cacls "C:\Program Files" /T /E /G  Usu†rios:f 
       ) 2>nul
cls
echo.
echo.
echo Aplicando Permiss‰es pasta "C:\Program Files"
echo para usuario Usu†rios autenticados
echo ------------------------------------------------------------- 
echo Progresso: €€€€€€€€€≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤ 17%%
echo -------------------------------------------------------------
  
>nul^
      (
  	 Cacls "C:\Program Files" /T /E /G  "Usu†rios autenticados":f
       ) 2>nul
cls
echo.
echo.
echo Aplicando Permiss‰es pasta "C:\Program Files"
echo para usuario TODOS OS PACOTES DE APLICATIVOS
echo ------------------------------------------------------------- 
echo Progresso: €€€€€€€€€≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤ 18%%
echo -------------------------------------------------------------
  
>nul^
      (
	Cacls "C:\Program Files" /T /E /G  "TODOS OS PACOTES DE APLICATIVOS":f
       ) 2>nul
cls
echo.
echo.
echo Aplicando Permiss‰es pasta "C:\Program Files"
echo para usuario TODOS OS PACOTES DE APLICATIVOS RESTRITOS 
echo ------------------------------------------------------------- 
echo Progresso: €€€€€€€€€€≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤ 19%%
echo ------------------------------------------------------------- 

>nul^
      (
	Cacls "C:\Program Files" /T /E /G  "TODOS OS PACOTES DE APLICATIVOS RESTRITOS":f
       ) 2>nul
cls
echo.
echo.
echo Aplicando Permiss‰es pasta "C:\Program Files"
echo para usuario Usu†rios
echo ------------------------------------------------------------- 
echo Progresso: €€€€€€€€€€≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤ 20%%
echo -------------------------------------------------------------
  
>nul^
      (
	Cacls "C:\Program Files" /T /E /G  Usu†rios:f
       ) 2>nul
cls
echo.
echo.
echo Aplicando Permiss‰es pasta "C:\Program Files"
echo para usuario %USERNAME% 
echo ------------------------------------------------------------- 
echo Progresso: €€€€€€€€€€€≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤ 21%%
echo -------------------------------------------------------------
 
>nul^
      (
        Cacls "C:\Program Files" /T /E /G  %USERNAME%:f
       ) 2>nul
cls
echo.
echo.
echo Aplicando Permiss‰es pasta "C:\Program Files"
echo para usuario postgres
echo ------------------------------------------------------------- 
echo Progresso: €€€€€€€€€€€≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤ 22%%
echo -------------------------------------------------------------  

>nul^
      (
        Cacls "C:\Program Files" /T /E /G  postgres:f
       ) 2>nul
cls
echo.
echo.
echo Aplicando Permiss‰es pasta "C:\Program Files"
echo para usuario PostgreSQL
echo ------------------------------------------------------------- 
echo Progresso: €€€€€€€€€€€€≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤ 23%%
echo -------------------------------------------------------------

>nul^
      (
        Cacls "C:\Program Files" /T /E /G  PostgreSQL:f
       ) 2>nul
cls
echo.
echo.
echo Alterando Permiss‰es pasta "C:\Arquivos de Programas"
echo ------------------------------------------------------------- 
echo Progresso: €€€€€€€€€€€€≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤ 24%%
echo ------------------------------------------------------------- 

>nul^
      (
	takeown /f "C:\Arquivos de Programas" /r /d y
       ) 2>nul
cls
echo.
echo.
echo Aplicando Permiss‰es pasta "C:\Arquivos de Programas"
echo para usuario todos
echo ------------------------------------------------------------- 
echo Progresso: €€€€€€€€€€€€€≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤ 25%%
echo ------------------------------------------------------------- 

>nul^
      (
	Cacls "C:\Arquivos de Programas"  /T /E /G  todos:f
       ) 2>nul
cls
echo.
echo.
echo Aplicando Permiss‰es pasta "C:\Arquivos de Programas"
echo para usuario Administradores
echo ------------------------------------------------------------- 
echo Progresso: €€€€€€€€€€€€€≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤ 26%%
echo ------------------------------------------------------------- 

>nul^
      (
 	 Cacls "C:\Arquivos de Programas"  /T /E /G  Administradores:f
       ) 2>nul
cls
echo.
echo.
echo Aplicando Permiss‰es pasta "C:\Arquivos de Programas"
echo para usuario SISTEMA
echo ------------------------------------------------------------- 
echo Progresso: €€€€€€€€€€€€€€≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤ 27%%
echo -------------------------------------------------------------

>nul^
      (
  	Cacls "C:\Arquivos de Programas"  /T /E /G  SISTEMA:f 
       ) 2>nul
cls
echo.
echo.
echo Aplicando Permiss‰es pasta "C:\Arquivos de Programas"
echo para usuario Usu†rios
echo ------------------------------------------------------------- 
echo Progresso: €€€€€€€€€€€€€€≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤ 28%%
echo -------------------------------------------------------------

>nul^
      (
  	Cacls "C:\Arquivos de Programas"  /T /E /G  Usu†rios:f
       ) 2>nul
cls
echo.
echo.
echo Aplicando Permiss‰es pasta "C:\Arquivos de Programas"
echo para usuario Usu†rios autenticados 
echo ------------------------------------------------------------- 
echo Progresso: €€€€€€€€€€€€€€€≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤ 29%%
echo -------------------------------------------------------------
 
>nul^
      (
  	Cacls "C:\Arquivos de Programas"  /T /E /G  "Usu†rios autenticados":f
       ) 2>nul
cls
echo.
echo.
echo Aplicando Permiss‰es pasta "C:\Arquivos de Programas"
echo para usuario postgres 
echo ------------------------------------------------------------- 
echo Progresso: €€€€€€€€€€€€€€€≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤ 30%%
echo -------------------------------------------------------------
   
>nul^
      (
  	Cacls "C:\Arquivos de Programas"  /T /E /G  postgres:f
       ) 2>nul
cls
echo.
echo.
echo Aplicando Permiss‰es pasta "C:\Arquivos de Programas"
echo para usuario PostgreSQL
echo ------------------------------------------------------------- 
echo Progresso: €€€€€€€€€€€€€€€€≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤ 31%%
echo -------------------------------------------------------------

>nul^
      (
  	Cacls "C:\Arquivos de Programas"  /T /E /G  PostgreSQL:f
       ) 2>nul
cls
echo.
echo.
echo Aplicando Permiss‰es pasta "C:\Arquivos de Programas" 
echo para usuario TODOS OS PACOTES DE APLICATIVOS
echo ------------------------------------------------------------- 
echo Progresso: €€€€€€€€€€€€€€€€≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤ 32%%
echo -------------------------------------------------------------

>nul^
      (
  	Cacls "C:\Arquivos de Programas"  /T /E /G  "TODOS OS PACOTES DE APLICATIVOS":f
       ) 2>nul
cls
echo.
echo.
echo Aplicando Permiss‰es pasta "C:\Arquivos de Programas" 
echo para usuario TODOS OS PACOTES DE APLICATIVOS RESTRITOS  
echo ------------------------------------------------------------- 
echo Progresso: €€€€€€€€€€€€€€€€€≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤ 33%%
echo -------------------------------------------------------------

>nul^
      (
 	 Cacls "C:\Arquivos de Programas"  /T /E /G  "TODOS OS PACOTES DE APLICATIVOS RESTRITOS":f
       ) 2>nul
cls
echo.
echo.
echo Aplicando Permiss‰es pasta "C:\Arquivos de Programas" 
echo para usuario %USERNAME%
echo ------------------------------------------------------------- 
echo Progresso: €€€€€€€€€€€€€€€€€≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤ 34%%
echo -------------------------------------------------------------
  
>nul^
      (
  	Cacls "C:\Arquivos de Programas"  /T /E /G  %USERNAME%:f
       ) 2>nul
cls
echo.
echo.
echo Alterando Permiss‰es pasta "C:\Arquivos de Programas (x86)" 
echo ------------------------------------------------------------- 
echo Progresso: €€€€€€€€€€€€€€€€€€≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤ 35%%
echo -------------------------------------------------------------
  
>nul^
      (
	 takeown /f "C:\Arquivos de Programas (x86)" /r /d y
       ) 2>nul
cls
echo.
echo.
echo Aplicando Permiss‰es pasta "C:\Arquivos de Programas (x86)" 
echo para usuario todos 
echo ------------------------------------------------------------- 
echo Progresso: €€€€€€€€€€€€€€€€€€≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤ 36%%
echo -------------------------------------------------------------
 
>nul^
      (
	Cacls "C:\Arquivos de Programas (x86)" /T /E /G  todos:f
       ) 2>nul
cls
echo.
echo.
echo Aplicando Permiss‰es pasta "C:\Arquivos de Programas (x86)" 
echo para usuario Administradores 
echo ------------------------------------------------------------- 
echo Progresso: €€€€€€€€€€€€€€€€€€€≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤ 37%%
echo -------------------------------------------------------------
   
>nul^
      (
  	Cacls "C:\Arquivos de Programas (x86)" /T /E /G  Administradores:f
       ) 2>nul
cls
echo.
echo.
echo Aplicando Permiss‰es pasta "C:\Arquivos de Programas (x86)" 
echo para usuario SISTEMA
echo ------------------------------------------------------------- 
echo Progresso: €€€€€€€€€€€€€€€€€€€≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤ 38%%
echo -------------------------------------------------------------

>nul^
      (
  	Cacls "C:\Arquivos de Programas (x86)" /T /E /G  SISTEMA:f 
       ) 2>nul
cls
echo.
echo.
echo Aplicando Permiss‰es pasta "C:\Arquivos de Programas (x86)" 
echo para usuario Usu†rios
echo ------------------------------------------------------------- 
echo Progresso: €€€€€€€€€€€€€€€€€€€€≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤ 39%%
echo -------------------------------------------------------------

>nul^
      (
  	Cacls "C:\Arquivos de Programas (x86)" /T /E /G  Usu†rios:f
       ) 2>nul
cls
echo.
echo.
echo Aplicando Permiss‰es pasta "C:\Arquivos de Programas (x86)" 
echo para usuario Usu†rios autenticados  
echo ------------------------------------------------------------- 
echo Progresso: €€€€€€€€€€€€€€€€€€€€≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤ 40%%
echo -------------------------------------------------------------

>nul^
      (
  	Cacls "C:\Arquivos de Programas (x86)" /T /E /G  "Usu†rios autenticados":f
       ) 2>nul
cls
echo.
echo.
echo Aplicando Permiss‰es pasta "C:\Arquivos de Programas (x86)" 
echo para usuario postgres 
echo ------------------------------------------------------------- 
echo Progresso: €€€€€€€€€€€€€€€€€€€€€≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤ 41%%
echo -------------------------------------------------------------

>nul^
      (
  	Cacls "C:\Arquivos de Programas (x86)" /T /E /G  postgres:f
       ) 2>nul
cls
echo.
echo.
echo Aplicando Permiss‰es pasta "C:\Arquivos de Programas (x86)" 
echo para usuario PostgreSQL
echo ------------------------------------------------------------- 
echo Progresso: €€€€€€€€€€€€€€€€€€€€€≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤ 42%%
echo -------------------------------------------------------------
 
>nul^
      (
	Cacls "C:\Arquivos de Programas (x86)" /T /E /G  PostgreSQL:f
       ) 2>nul
cls
echo.
echo.
echo Aplicando Permiss‰es pasta "C:\Arquivos de Programas (x86)" 
echo para usuario TODOS OS PACOTES DE APLICATIVOS
echo ------------------------------------------------------------- 
echo Progresso: €€€€€€€€€€€€€€€€€€€€€€≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤ 43%%
echo -------------------------------------------------------------
  
>nul^
      (
  	Cacls "C:\Arquivos de Programas (x86)" /T /E /G  "TODOS OS PACOTES DE APLICATIVOS":f
       ) 2>nul
cls
echo.
echo.
echo Aplicando Permiss‰es pasta "C:\Arquivos de Programas (x86)" 
echo para usuario TODOS OS PACOTES DE APLICATIVOS RESTRITOS 
echo ------------------------------------------------------------- 
echo Progresso: €€€€€€€€€€€€€€€€€€€€€€≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤ 44%%
echo -------------------------------------------------------------
 
>nul^
      (
  	Cacls "C:\Arquivos de Programas (x86)" /T /E /G  "TODOS OS PACOTES DE APLICATIVOS RESTRITOS":f
       ) 2>nul
cls
echo.
echo.
echo Aplicando Permiss‰es pasta "C:\Arquivos de Programas (x86)" 
echo para usuario %USERNAME% 
echo ------------------------------------------------------------- 
echo Progresso: €€€€€€€€€€€€€€€€€€€€€€€≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤ 45%%
echo -------------------------------------------------------------
 
>nul^
      (
  	Cacls "C:\Arquivos de Programas (x86)" /T /E /G  %USERNAME%:f
       ) 2>nul
cls
echo.
echo.
echo Alterando Permiss‰es pasta "C:\FrCaixaCiss"
echo ------------------------------------------------------------- 
echo Progresso: €€€€€€€€€€€€€€€€€€€€€€€≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤ 46%%
echo -------------------------------------------------------------
  
>nul^
      (
	 takeown /f "C:\FrCaixaCiss" /r /d y
       ) 2>nul
cls
echo.
echo.
echo Aplicando Permiss‰es pasta "C:\FrCaixaCiss" 
echo para usuario todos
echo ------------------------------------------------------------- 
echo Progresso: €€€€€€€€€€€€€€€€€€€€€€€€≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤ 47%%
echo -------------------------------------------------------------
  
>nul^
      (
	 Cacls "C:\FrCaixaCiss" /T /E /G  todos:f
       ) 2>nul
cls
echo.
echo.
echo Aplicando Permiss‰es pasta "C:\FrCaixaCiss" 
echo para usuario Administradores
echo ------------------------------------------------------------- 
echo Progresso: €€€€€€€€€€€€€€€€€€€€€€€€≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤ 48%%
echo -------------------------------------------------------------

>nul^
      (
  	Cacls "C:\FrCaixaCiss" /T /E /G  Administradores:f
       ) 2>nul
cls
echo.
echo.
echo Aplicando Permiss‰es pasta "C:\FrCaixaCiss" 
echo para usuario SISTEMA
echo ------------------------------------------------------------- 
echo Progresso: €€€€€€€€€€€€€€€€€€€€€€€€€≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤ 49%%
echo -------------------------------------------------------------

>nul^
      (
  	Cacls "C:\FrCaixaCiss" /T /E /G  SISTEMA:f
       ) 2>nul
cls
echo.
echo.
echo Aplicando Permiss‰es pasta "C:\FrCaixaCiss" 
echo para usuario Usu†rios
echo ------------------------------------------------------------- 
echo Progresso: €€€€€€€€€€€€€€€€€€€€€€€€€≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤ 50%%
echo -------------------------------------------------------------
>nul^
      (
  	Cacls "C:\FrCaixaCiss" /T /E /G  Usu†rios:f
       ) 2>nul
cls
echo.
echo.
echo Aplicando Permiss‰es pasta "C:\FrCaixaCiss" 
echo para usuario Usu†rios autenticados
echo ------------------------------------------------------------- 
echo Progresso: €€€€€€€€€€€€€€€€€€€€€€€€€€≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤ 51%%
echo -------------------------------------------------------------  
>nul^
      (
  	Cacls "C:\FrCaixaCiss" /T /E /G  "Usu†rios autenticados":f
       ) 2>nul
cls
echo.
echo.
echo Aplicando Permiss‰es pasta "C:\FrCaixaCiss" 
echo para usuario postgres
echo ------------------------------------------------------------- 
echo Progresso: €€€€€€€€€€€€€€€€€€€€€€€€€€≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤ 52%%
echo -------------------------------------------------------------  
>nul^
      (
  	Cacls "C:\FrCaixaCiss" /T /E /G  postgres:f
       ) 2>nul
cls
echo.
echo.
echo Aplicando Permiss‰es pasta "C:\FrCaixaCiss" 
echo para usuario PostgreSQL
echo ------------------------------------------------------------- 
echo Progresso: €€€€€€€€€€€€€€€€€€€€€€€€€€€≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤ 53%%
echo -------------------------------------------------------------  
>nul^
      (
  	Cacls "C:\FrCaixaCiss" /T /E /G  PostgreSQL:f
       ) 2>nul
cls
echo.
echo.
echo Aplicando Permiss‰es pasta "C:\FrCaixaCiss" 
echo para usuario TODOS OS PACOTES DE APLICATIVOS
echo ------------------------------------------------------------- 
echo Progresso: €€€€€€€€€€€€€€€€€€€€€€€€€€€≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤ 54%%
echo -------------------------------------------------------------  
>nul^
      (
	  Cacls "C:\FrCaixaCiss" /T /E /G  "TODOS OS PACOTES DE APLICATIVOS":f
       ) 2>nul
cls
echo.
echo.
echo Aplicando Permiss‰es pasta "C:\FrCaixaCiss" 
echo para usuario TODOS OS PACOTES DE APLICATIVOS RESTRITOS
echo ------------------------------------------------------------- 
echo Progresso: €€€€€€€€€€€€€€€€€€€€€€€€€€€€≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤ 55%%
echo -------------------------------------------------------------  
>nul^
      (
  	Cacls "C:\FrCaixaCiss" /T /E /G  "TODOS OS PACOTES DE APLICATIVOS RESTRITOS":f
       ) 2>nul
cls
echo.
echo.
echo Aplicando Permiss‰es pasta "C:\FrCaixaCiss" 
echo para usuario %USERNAME%
echo ------------------------------------------------------------- 
echo Progresso: €€€€€€€€€€€€€€€€€€€€€€€€€€€€≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤ 56%%
echo -------------------------------------------------------------  
>nul^
      (
  	Cacls "C:\FrCaixaCiss" /T /E /G  %USERNAME%:f
       ) 2>nul
cls
echo.
echo.
echo Alterando Permiss‰es pasta "C:\windows" 
echo ------------------------------------------------------------- 
echo Progresso: €€€€€€€€€€€€€€€€€€€€€€€€€€€€€≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤ 57%%
echo -------------------------------------------------------------  
>nul^
      (
  	takeown /f "C:\windows" /r /d y
       ) 2>nul
cls
echo.
echo.
echo Aplicando Permiss‰es pasta "C:\windows"
echo para usuario todos
echo ------------------------------------------------------------- 
echo Progresso: €€€€€€€€€€€€€€€€€€€€€€€€€€€€€≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤ 58%%
echo -------------------------------------------------------------  
>nul^
      (
	Cacls "C:\windows" /T /E /G  todos:f
       ) 2>nul
cls
echo.
echo.
echo Aplicando Permiss‰es pasta "C:\windows"
echo para usuario Administradores
echo ------------------------------------------------------------- 
echo Progresso: €€€€€€€€€€€€€€€€€€€€€€€€€€€€€€≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤ 59%%
echo -------------------------------------------------------------  
>nul^
      (
  	Cacls "C:\windows" /T /E /G  Administradores:f
       ) 2>nul
cls
echo.
echo.
echo Aplicando Permiss‰es pasta "C:\windows"
echo para usuario SISTEMA
echo ------------------------------------------------------------- 
echo Progresso: €€€€€€€€€€€€€€€€€€€€€€€€€€€€€€≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤ 60%%
echo -------------------------------------------------------------  
>nul^
      (
  	Cacls "C:\windows" /T /E /G  SISTEMA:f 	
       ) 2>nul
cls
echo.
echo.
echo Aplicando Permiss‰es pasta "C:\windows"
echo para usuario Usu†rios
echo ------------------------------------------------------------- 
echo Progresso: €€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤ 61%%
echo -------------------------------------------------------------  
>nul^
      (
  	Cacls "C:\windows" /T /E /G  Usu†rios:f
       ) 2>nul
cls
echo.
echo.
echo Aplicando Permiss‰es pasta "C:\windows"
echo para usuario Usu†rios autenticados
echo ------------------------------------------------------------- 
echo Progresso: €€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤ 62%%
echo -------------------------------------------------------------  
>nul^
      (
	  Cacls "C:\windows" /T /E /G  "Usu†rios autenticados":f
       ) 2>nul
cls
echo.
echo.
echo Aplicando Permiss‰es pasta "C:\windows"
echo para usuario postgres
echo ------------------------------------------------------------- 
echo Progresso: €€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤ 63%%
echo -------------------------------------------------------------  
>nul^
      (
  	Cacls "C:\windows" /T /E /G  postgres:f
       ) 2>nul
cls
echo.
echo.
echo Aplicando Permiss‰es pasta "C:\windows"
echo para usuario PostgreSQL
echo ------------------------------------------------------------- 
echo Progresso: €€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤ 64%%
echo -------------------------------------------------------------  
>nul^
      (
	  Cacls "C:\windows" /T /E /G  PostgreSQL:f
       ) 2>nul
cls
echo.
echo.
echo Aplicando Permiss‰es pasta "C:\windows"
echo para usuario TODOS OS PACOTES DE APLICATIVOS
echo ------------------------------------------------------------- 
echo Progresso: €€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤ 65%%
echo -------------------------------------------------------------  
>nul^
      (
	  Cacls "C:\windows" /T /E /G  "TODOS OS PACOTES DE APLICATIVOS":f
       ) 2>nul
cls
echo.
echo.
echo Aplicando Permiss‰es pasta "C:\windows"
echo para usuario TODOS OS PACOTES DE APLICATIVOS RESTRITOS
echo ------------------------------------------------------------- 
echo Progresso: €€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤ 66%%
echo -------------------------------------------------------------  
>nul^
      (
	  Cacls "C:\windows" /T /E /G  "TODOS OS PACOTES DE APLICATIVOS RESTRITOS":f
       ) 2>nul
cls
echo.
echo.
echo Aplicando Permiss‰es pasta "C:\windows"
echo para usuario %USERNAME%
echo ------------------------------------------------------------- 
echo Progresso: €€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤ 67%%
echo -------------------------------------------------------------  
>nul^
      (
  	Cacls "C:\windows" /T /E /G  %USERNAME%:f
       ) 2>nul
cls
echo.
echo.
echo Aplicando Permiss‰es pasta "C:\windows"
echo para usuario Usu†rios
echo ------------------------------------------------------------- 
echo Progresso: €€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤ 68%%
echo -------------------------------------------------------------  
>nul^
      (
	  Cacls "C:\ciss" /T /E /G  Usu†rios:f
       ) 2>nul
cls
echo.
echo.
echo Alterando Permiss‰es pasta "C:\ciss"
echo ------------------------------------------------------------- 
echo Progresso: €€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤ 69%%
echo -------------------------------------------------------------  
>nul^
      (
	takeown /f "C:\ciss" /r /d y
       ) 2>nul
cls
echo.
echo.
echo Alterando Permiss‰es pasta "C:\ciss"
echo para usuario todos
echo ------------------------------------------------------------- 
echo Progresso: €€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤ 70%%
echo -------------------------------------------------------------  
>nul^
      (
	Cacls "C:\ciss" /T /E /G  todos:f 
       ) 2>nul
cls
echo.
echo.
echo Aplicando Permiss‰es pasta "C:\ciss"
echo para usuario Administradores
echo ------------------------------------------------------------- 
echo Progresso: €€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€≤≤≤≤≤≤≤≤≤≤≤≤≤≤ 71%%
echo -------------------------------------------------------------  
>nul^
      (
  	Cacls "C:\ciss" /T /E /G  Administradores:f   
       ) 2>nul
cls
echo.
echo.
echo Aplicando Permiss‰es pasta "C:\ciss"
echo para usuario SISTEMA
echo ------------------------------------------------------------- 
echo Progresso: €€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€≤≤≤≤≤≤≤≤≤≤≤≤≤≤ 72%%
echo -------------------------------------------------------------  
>nul^
      (
	Cacls "C:\ciss" /T /E /G  SISTEMA:f   
       ) 2>nul
cls
echo.
echo.
echo Aplicando Permiss‰es pasta "C:\ciss"
echo para usuario Usu†rios
echo ------------------------------------------------------------- 
echo Progresso: €€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€≤≤≤≤≤≤≤≤≤≤≤≤≤ 73%%
echo -------------------------------------------------------------  
>nul^
      (
	  Cacls "C:\ciss" /T /E /G  Usu†rios:f 
       ) 2>nul
cls
echo.
echo.
echo Aplicando Permiss‰es pasta "C:\ciss"
echo para usuario Usu†rios autenticados
echo ------------------------------------------------------------- 
echo Progresso: €€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€≤≤≤≤≤≤≤≤≤≤≤≤≤ 74%%
echo -------------------------------------------------------------  
>nul^
      (
	  Cacls "C:\ciss" /T /E /G  "Usu†rios autenticados":f
       ) 2>nul
cls
echo.
echo.
echo Aplicando Permiss‰es pasta "C:\ciss"
echo para usuario TODOS OS PACOTES DE APLICATIVOS
echo ------------------------------------------------------------- 
echo Progresso: €€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€≤≤≤≤≤≤≤≤≤≤≤≤ 75%%
echo -------------------------------------------------------------  
>nul^
      (
  	Cacls "C:\ciss" /T /E /G  "TODOS OS PACOTES DE APLICATIVOS":f
       ) 2>nul
cls
echo.
echo.
echo Aplicando Permiss‰es pasta "C:\ciss"
echo para usuario TODOS OS PACOTES DE APLICATIVOS RESTRITOS
echo ------------------------------------------------------------- 
echo Progresso: €€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€≤≤≤≤≤≤≤≤≤≤≤≤ 76%%
echo -------------------------------------------------------------  
>nul^
      (
  	Cacls "C:\ciss" /T /E /G  "TODOS OS PACOTES DE APLICATIVOS RESTRITOS":f
       ) 2>nul
cls
echo.
echo.
echo Aplicando Permiss‰es pasta "C:\ciss"
echo para usuario %USERNAME%
echo ------------------------------------------------------------- 
echo Progresso: €€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€≤≤≤≤≤≤≤≤≤≤≤ 77%%
echo -------------------------------------------------------------  
>nul^
      (
	Cacls "C:\ciss" /T /E /G  %USERNAME%:f
       ) 2>nul
cls
echo.
echo.
echo Aplicando Permiss‰es pasta "C:\ciss"
echo para usuario Usu†rios
echo ------------------------------------------------------------- 
echo Progresso: €€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€≤≤≤≤≤≤≤≤≤≤≤ 78%%
echo -------------------------------------------------------------  
>nul^
      (
	  Cacls "C:\ciss" /T /E /G  Usu†rios:f
       ) 2>nul
cls
echo.
echo.
echo Aplicando Permiss‰es pasta "C:\ciss"
echo para usuario postgres
echo ------------------------------------------------------------- 
echo Progresso: €€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€≤≤≤≤≤≤≤≤≤≤ 79%%
echo -------------------------------------------------------------  
>nul^
      (
	  Cacls "C:\ciss" /T /E /G  postgres:f
       ) 2>nul
cls
echo.
echo.
echo Aplicando Permiss‰es pasta "C:\ciss"
echo para usuario PostgreSQL
echo ------------------------------------------------------------- 
echo Progresso: €€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€≤≤≤≤≤≤≤≤≤≤ 80%%
echo -------------------------------------------------------------  
>nul^
      (
	  Cacls "C:\ciss" /T /E /G  PostgreSQL:f
       ) 2>nul
cls
echo.
echo.
echo Alterando Permiss‰es pasta "C:\Windows\System32"
echo ------------------------------------------------------------- 
echo Progresso: €€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€≤≤≤≤≤≤≤≤≤ 81%%
echo -------------------------------------------------------------  
>nul^
      (
       takeown /f "C:\Windows\System32" /r /d y
       ) 2>nul
cls
echo.
echo.
echo Aplicando Permiss‰es pasta "C:\Windows\System32"
echo para usuario todos
echo ------------------------------------------------------------- 
echo Progresso: €€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€≤≤≤≤≤≤≤≤≤ 82%%
echo -------------------------------------------------------------  
>nul^
      (
        Cacls "C:\Windows\System32" /T /E /G  todos:f 
       ) 2>nul
cls
echo.
echo.
echo Aplicando Permiss‰es pasta "C:\Windows\System32"
echo para usuario Administradores
echo ------------------------------------------------------------- 
echo Progresso: €€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€≤≤≤≤≤≤≤≤ 83%%
echo -------------------------------------------------------------  
>nul^
      (
	Cacls "C:\Windows\System32" /T /E /G  Administradores:f    
       ) 2>nul
cls
echo.
echo.
echo Aplicando Permiss‰es pasta "C:\Windows\System32"
echo para usuario SISTEMA
echo ------------------------------------------------------------- 
echo Progresso: €€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€≤≤≤≤≤≤≤≤ 84%%
echo -------------------------------------------------------------  
>nul^
      (
	Cacls "C:\Windows\System32" /T /E /G  SISTEMA:f    
       ) 2>nul
cls
echo.
echo.
echo Aplicando Permiss‰es pasta "C:\Windows\System32"
echo para usuario Usu†rios
echo ------------------------------------------------------------- 
echo Progresso: €€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€≤≤≤≤≤≤≤ 85%%
echo -------------------------------------------------------------  
>nul^
      (
	Cacls "C:\Windows\System32" /T /E /G  Usu†rios:f 
       ) 2>nul
cls
echo.
echo.
echo Aplicando Permiss‰es pasta "C:\Windows\System32"
echo para usuario Usu†rios autenticados
echo ------------------------------------------------------------- 
echo Progresso: €€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€≤≤≤≤≤≤≤ 86%%
echo -------------------------------------------------------------  
>nul^
      (
	Cacls "C:\Windows\System32" /T /E /G  "Usu†rios autenticados":f
       ) 2>nul
cls
echo.
echo.
echo Aplicando Permiss‰es pasta "C:\Windows\System32"
echo para usuario TODOS OS PACOTES DE APLICATIVOS
echo ------------------------------------------------------------- 
echo Progresso: €€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€≤≤≤≤≤≤ 87%%
echo -------------------------------------------------------------  
>nul^
      (
	Cacls "C:\Windows\System32" /T /E /G  "TODOS OS PACOTES DE APLICATIVOS":f
       ) 2>nul
cls
echo.
echo.
echo Aplicando Permiss‰es pasta "C:\Windows\System32"
echo para usuario TODOS OS PACOTES DE APLICATIVOS RESTRITOS
echo ------------------------------------------------------------- 
echo Progresso: €€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€≤≤≤≤≤≤ 88%%
echo -------------------------------------------------------------  
>nul^
      (
  	Cacls "C:\Windows\System32" /T /E /G  "TODOS OS PACOTES DE APLICATIVOS RESTRITOS":f
       ) 2>nul
cls
echo.
echo.
echo Aplicando Permiss‰es pasta "C:\Windows\System32"
echo para usuario %USERNAME%
echo ------------------------------------------------------------- 
echo Progresso: €€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€≤≤≤≤≤ 89%%
echo -------------------------------------------------------------  
>nul^
      (
  	Cacls "C:\Windows\System32" /T /E /G  %USERNAME%:f
       ) 2>nul
cls
echo.
echo.
echo Aplicando Permiss‰es pasta "C:\Windows\System32"
echo para usuario postgres
echo ------------------------------------------------------------- 
echo Progresso: €€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€≤≤≤≤≤ 90%%
echo -------------------------------------------------------------  
>nul^
      (
	Cacls "C:\Windows\System32" /T /E /G  postgres:f
       ) 2>nul
cls
echo.
echo.
echo Aplicando Permiss‰es pasta "C:\Windows\System32"
echo para usuario PostgreSQL
echo ------------------------------------------------------------- 
echo Progresso: €€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€≤≤≤≤ 91%%
echo -------------------------------------------------------------  
>nul^
      (
  	Cacls "C:\Windows\System32" /T /E /G  PostgreSQL:f
       ) 2>nul
cls
echo.
echo.
echo Alterando Permiss‰es pasta "C:\Windows\SysWOW64"
echo ------------------------------------------------------------- 
echo Progresso: €€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€≤≤≤≤ 92%%
echo -------------------------------------------------------------  
>nul^
      (
	takeown /f "C:\Windows\SysWOW64" /r /d y
       ) 2>nul
cls
echo.
echo.
echo Aplicando Permiss‰es pasta "C:\Windows\SysWOW64"
echo para usuario todos
echo ------------------------------------------------------------- 
echo Progresso: €€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€≤≤≤ 93%%
echo -------------------------------------------------------------  
>nul^
      (
	Cacls "C:\Windows\SysWOW64" /T /E /G  todos:f
       ) 2>nul
cls
echo.
echo.
echo Aplicando Permiss‰es pasta "C:\Windows\SysWOW64"
echo para usuario Administradores
echo ------------------------------------------------------------- 
echo Progresso: €€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€≤≤≤ 94%%
echo -------------------------------------------------------------  
>nul^
      (
	Cacls "C:\Windows\SysWOW64" /T /E /G  Administradores:f   
       ) 2>nul
cls
echo.
echo.
echo Aplicando Permiss‰es pasta "C:\Windows\SysWOW64"
echo para usuario Usu†rios
echo ------------------------------------------------------------- 
echo Progresso: €€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€≤≤ 95%%
echo -------------------------------------------------------------  
>nul^
      (
       Cacls "C:\Windows\SysWOW64" /T /E /G  Usu†rios:f  
       ) 2>nul
cls
echo.
echo.
echo Aplicando Permiss‰es pasta "C:\Windows\SysWOW64"
echo para usuario Usu†rios autenticados
echo ------------------------------------------------------------- 
echo Progresso: €€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€≤≤ 96%%
echo -------------------------------------------------------------  
>nul^
      (
       Cacls "C:\Windows\SysWOW64" /T /E /G  "Usu†rios autenticados":f  
       ) 2>nul
cls
echo.
echo.
echo Aplicando Permiss‰es pasta "C:\Windows\SysWOW64"
echo ------------------------------------------------------------- 
echo Progresso: €€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€≤ 97%%
echo -------------------------------------------------------------  
>nul^
      (
	Cacls "C:\Windows\SysWOW64" /T /E /G  postgres:f
        Cacls "C:\Windows\SysWOW64" /T /E /G  PostgreSQL:f
       ) 2>nul
cls
echo.
echo.
echo Aplicando Permiss‰es pasta "C:\Windows\SysWOW64"
echo ------------------------------------------------------------- 
echo Progresso: €€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€≤ 98%%
echo -------------------------------------------------------------  
>nul^
      (
	Cacls "C:\Windows\SysWOW64" /T /E /G  %USERNAME%:f
       ) 2>nul
cls
echo.
echo.
echo Aplicando Permiss‰es pasta "C:\Windows\SysWOW64"
echo ------------------------------------------------------------- 
echo Progresso: €€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€≤ 99%%
echo -------------------------------------------------------------  
>nul^
      (
       Cacls "C:\Windows\SysWOW64" /T /E /G  "TODOS OS PACOTES DE APLICATIVOS":f
       Cacls "C:\Windows\SysWOW64" /T /E /G  "TODOS OS PACOTES DE APLICATIVOS RESTRITOS":f
       ) 2>nul
cls
echo.
echo.
echo Finalizando Permiss‰es...
echo ------------------------------------------------------------- 
echo Progresso: €€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€ 100%%
echo -------------------------------------------------------------  
GOTO END
:END
cls
echo.
echo.
echo Completo...
echo ------------------------------------------------------------- 
echo Progresso: €€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€ 100%%
echo.
echo.
ECHO Bat dos Pia da Permiss‰es Permiss‰es Frente de Caixa
ECHO By Douglas Cezaro
timeout /t 3
@CHOICE /t 1 /C snc /M "" /N /CS /D s
del LOG1.txt
exit
) else (
    echo Ingles
 @echo off
title Permiss‰es Frente de Caixa
echo.
cls
echo.
echo.
echo Alterando Permiss‰es pasta "C:"
echo ------------------------------------------------------------- 
echo Progresso: ≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤ 0%%
echo -------------------------------------------------------------
>nul^
      (
	takeown /f "C:" /r /d y
  	Cacls "C:/" /T /E /G  everyone:f
  	Cacls "C:" /T /E /G  everyone:f
       ) 2>nul
cls
echo.
echo.
echo Aplicando Permiss‰es pasta "C:"
echo ------------------------------------------------------------- 
echo Progresso: €≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤ 1%%
echo ------------------------------------------------------------- 
>nul^
      (
  	Cacls "C:/" /T /E /G  everyone:f
  	Cacls "C:" /T /E /G  everyone:f
  	Cacls "C:/" /T /E /G  Administrators:f 
  	Cacls "C:" /T /E /G  Administrators:f   
  	Cacls "C:/" /T /E /G  SYSTEM:f 	
  	Cacls "C:" /T /E /G  SYSTEM:f
  	Cacls "C:/" /T /E /G  Users:f
  	Cacls "C:" /T /E /G  Users:f
  	Cacls "C:" /T /E /G  "Users authenticated":f
  	Cacls "C:/" /T /E /G  "Users authenticated":f
  	Cacls "C:" /T /E /G  postgres:f
  	Cacls "C:/" /T /E /G  postgres:f
  	Cacls "C:/" /T /E /G  PostgreSQL:f
  	Cacls "C:" /T /E /G  PostgreSQL:f
  	Cacls "C:" /T /E /G  "ALL APPLICATIONS PACKAGES":f
  	Cacls "C:/" /T /E /G  "ALL APPLICATIONS PACKAGES":f
  	Cacls "C:/" /T /E /G  "ALL APPLICATIONS PACKAGES RESTRICTED":f
  	Cacls "C:" /T /E /G  "ALL APPLICATIONS PACKAGES RESTRICTED":f
  	Cacls "C:/" /T /E /G  %USERNAME%:f
  	Cacls "C:" /T /E /G  %USERNAME%:f
       ) 2>nul
cls
echo.
echo.
echo Alterando Permiss‰es pasta "C:\Program Files (x86)"
echo ------------------------------------------------------------- 
echo Progresso: €≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤ 2%%
echo ------------------------------------------------------------- 
>nul^
      (
  	takeown /f "C:\Program Files (x86)" /r /d y
	Cacls "C:\Program Files (x86)" /T /E /G  everyone:f
       ) 2>nul
cls
echo.
echo.
echo Aplicando Permiss‰es pasta "C:\Program Files (x86)" 
echo para usuario Administrators
echo ------------------------------------------------------------- 
echo Progresso: €€≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤ 3%%
echo -------------------------------------------------------------
>nul^
      (
	Cacls "C:\Program Files (x86)" /T /E /G  Administrators:f    
       ) 2>nul
cls
echo.
echo.
echo Aplicando Permiss‰es pasta "C:\Program Files (x86)"
echo para usuario SYSTEM
echo ------------------------------------------------------------- 
echo Progresso: €€≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤ 4%%
echo -------------------------------------------------------------  
>nul^
      (
 	Cacls "C:\Program Files (x86)" /T /E /G  SYSTEM:f 	    
       ) 2>nul
cls
echo.
echo.
echo Aplicando Permiss‰es pasta "C:\Program Files (x86)" 
echo para usuario Users
echo ------------------------------------------------------------- 
echo Progresso: €€€≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤ 5%%
echo ------------------------------------------------------------- 
>nul^
      (
   	Cacls "C:\Program Files (x86)" /T /E /G  Users:f
       ) 2>nul
cls
echo.
echo.
echo Aplicando Permiss‰es pasta "C:\Program Files (x86)" 
echo para usuario Users authenticated
echo ------------------------------------------------------------- 
echo Progresso: €€€≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤ 6%%
echo ------------------------------------------------------------- 
>nul^
      (
	Cacls "C:\Program Files (x86)" /T /E /G  "Users authenticated":f
       ) 2>nul
cls
echo.
echo.
echo Aplicando Permiss‰es pasta "C:\Program Files (x86)" 
echo para usuario postgres  
echo ------------------------------------------------------------- 
echo Progresso: €€€€≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤ 7%%
echo -------------------------------------------------------------
>nul^
      (
	Cacls "C:\Program Files (x86)" /T /E /G  postgres:f
       ) 2>nul
cls
echo.
echo.
echo Aplicando Permiss‰es pasta "C:\Program Files (x86)" 
echo para usuario PostgreSQL
echo ------------------------------------------------------------- 
echo Progresso: €€€€≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤ 8%%
echo -------------------------------------------------------------
>nul^
      (
        Cacls "C:\Program Files (x86)" /T /E /G  PostgreSQL:f
       ) 2>nul
cls
echo.
echo.
echo Aplicando Permiss‰es pasta "C:\Program Files (x86)" 
echo para usuario ALL APPLICATIONS PACKAGES
echo ------------------------------------------------------------- 
echo Progresso: €€€€€≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤ 9%%
echo -------------------------------------------------------------
>nul^
      (
        Cacls "C:\Program Files (x86)" /T /E /G  "ALL APPLICATIONS PACKAGES":f
       ) 2>nul
cls
echo.
echo.
echo Aplicando Permiss‰es pasta "C:\Program Files (x86)" 
echo para usuario ALL APPLICATIONS PACKAGES RESTRICTED 
echo ------------------------------------------------------------- 
echo Progresso: €€€€€≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤ 10%%
echo -------------------------------------------------------------
>nul^
      (
        Cacls "C:\Program Files (x86)" /T /E /G  "ALL APPLICATIONS PACKAGES RESTRICTED":f
       ) 2>nul
cls
echo.
echo.
echo Aplicando Permiss‰es pasta "C:\Program Files (x86)"
echo para usuario %USERNAME% 
echo ------------------------------------------------------------- 
echo Progresso: €€€€€€≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤ 11%%
echo -------------------------------------------------------------
   
>nul^
      (
        Cacls "C:\Program Files (x86)" /T /E /G  %USERNAME%:f
       ) 2>nul
cls
echo.
echo.
echo Alterando Permiss‰es pasta "C:\Program Files" 
echo ------------------------------------------------------------- 
echo Progresso: €€€€€€≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤ 12%%
echo -------------------------------------------------------------
 
>nul^
      (
	  takeown /f "C:\Program Files" /r /d y
       ) 2>nul
cls
echo.
echo.
echo Aplicando Permiss‰es pasta "C:\Program Files"
echo para usuario everyone 
echo ------------------------------------------------------------- 
echo Progresso: €€€€€€€≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤ 13%%
echo ------------------------------------------------------------- 
 
>nul^
      (
	 Cacls "C:\Program Files" /T /E /G  everyone:f
       ) 2>nul
cls
echo.
echo.
echo Aplicando Permiss‰es pasta "C:\Program Files"
echo para usuario Administrators
echo ------------------------------------------------------------- 
echo Progresso: €€€€€€€≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤ 14%%
echo -------------------------------------------------------------

>nul^
      (
  	 Cacls "C:\Program Files" /T /E /G  Administrators:f  
       ) 2>nul
cls
echo.
echo.
echo Aplicando Permiss‰es pasta "C:\Program Files"
echo para usuario SYSTEM 
echo ------------------------------------------------------------- 
echo Progresso: €€€€€€€€≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤ 15%%
echo -------------------------------------------------------------
 
>nul^
      (
  	 Cacls "C:\Program Files" /T /E /G  SYSTEM:f  
       ) 2>nul
cls
echo.
echo.
echo Aplicando Permiss‰es pasta "C:\Program Files"
echo para usuario Users
echo ------------------------------------------------------------- 
echo Progresso: €€€€€€€€≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤ 16%%
echo -------------------------------------------------------------

>nul^
      (
         Cacls "C:\Program Files" /T /E /G  Users:f 
       ) 2>nul
cls
echo.
echo.
echo Aplicando Permiss‰es pasta "C:\Program Files"
echo para usuario Users authenticated
echo ------------------------------------------------------------- 
echo Progresso: €€€€€€€€€≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤ 17%%
echo -------------------------------------------------------------
  
>nul^
      (
  	 Cacls "C:\Program Files" /T /E /G  "Users authenticated":f
       ) 2>nul
cls
echo.
echo.
echo Aplicando Permiss‰es pasta "C:\Program Files"
echo para usuario ALL APPLICATIONS PACKAGES
echo ------------------------------------------------------------- 
echo Progresso: €€€€€€€€€≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤ 18%%
echo -------------------------------------------------------------
  
>nul^
      (
	Cacls "C:\Program Files" /T /E /G  "ALL APPLICATIONS PACKAGES":f
       ) 2>nul
cls
echo.
echo.
echo Aplicando Permiss‰es pasta "C:\Program Files"
echo para usuario ALL APPLICATIONS PACKAGES RESTRICTED 
echo ------------------------------------------------------------- 
echo Progresso: €€€€€€€€€€≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤ 19%%
echo ------------------------------------------------------------- 

>nul^
      (
	Cacls "C:\Program Files" /T /E /G  "ALL APPLICATIONS PACKAGES RESTRICTED":f
       ) 2>nul
cls
echo.
echo.
echo Aplicando Permiss‰es pasta "C:\Program Files"
echo para usuario Users
echo ------------------------------------------------------------- 
echo Progresso: €€€€€€€€€€≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤ 20%%
echo -------------------------------------------------------------
  
>nul^
      (
	Cacls "C:\Program Files" /T /E /G  Users:f
       ) 2>nul
cls
echo.
echo.
echo Aplicando Permiss‰es pasta "C:\Program Files"
echo para usuario %USERNAME% 
echo ------------------------------------------------------------- 
echo Progresso: €€€€€€€€€€€≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤ 21%%
echo -------------------------------------------------------------
 
>nul^
      (
        Cacls "C:\Program Files" /T /E /G  %USERNAME%:f
       ) 2>nul
cls
echo.
echo.
echo Aplicando Permiss‰es pasta "C:\Program Files"
echo para usuario postgres
echo ------------------------------------------------------------- 
echo Progresso: €€€€€€€€€€€≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤ 22%%
echo -------------------------------------------------------------  

>nul^
      (
        Cacls "C:\Program Files" /T /E /G  postgres:f
       ) 2>nul
cls
echo.
echo.
echo Aplicando Permiss‰es pasta "C:\Program Files"
echo para usuario PostgreSQL
echo ------------------------------------------------------------- 
echo Progresso: €€€€€€€€€€€€≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤ 23%%
echo -------------------------------------------------------------

>nul^
      (
        Cacls "C:\Program Files" /T /E /G  PostgreSQL:f
       ) 2>nul
cls
echo.
echo.
echo Alterando Permiss‰es pasta "C:\Arquivos de Programas"
echo ------------------------------------------------------------- 
echo Progresso: €€€€€€€€€€€€≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤ 24%%
echo ------------------------------------------------------------- 

>nul^
      (
	takeown /f "C:\Arquivos de Programas" /r /d y
       ) 2>nul
cls
echo.
echo.
echo Aplicando Permiss‰es pasta "C:\Arquivos de Programas"
echo para usuario everyone
echo ------------------------------------------------------------- 
echo Progresso: €€€€€€€€€€€€€≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤ 25%%
echo ------------------------------------------------------------- 

>nul^
      (
	Cacls "C:\Arquivos de Programas"  /T /E /G  everyone:f
       ) 2>nul
cls
echo.
echo.
echo Aplicando Permiss‰es pasta "C:\Arquivos de Programas"
echo para usuario Administrators
echo ------------------------------------------------------------- 
echo Progresso: €€€€€€€€€€€€€≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤ 26%%
echo ------------------------------------------------------------- 

>nul^
      (
 	 Cacls "C:\Arquivos de Programas"  /T /E /G  Administrators:f
       ) 2>nul
cls
echo.
echo.
echo Aplicando Permiss‰es pasta "C:\Arquivos de Programas"
echo para usuario SYSTEM
echo ------------------------------------------------------------- 
echo Progresso: €€€€€€€€€€€€€€≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤ 27%%
echo -------------------------------------------------------------

>nul^
      (
  	Cacls "C:\Arquivos de Programas"  /T /E /G  SYSTEM:f 
       ) 2>nul
cls
echo.
echo.
echo Aplicando Permiss‰es pasta "C:\Arquivos de Programas"
echo para usuario Users
echo ------------------------------------------------------------- 
echo Progresso: €€€€€€€€€€€€€€≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤ 28%%
echo -------------------------------------------------------------

>nul^
      (
  	Cacls "C:\Arquivos de Programas"  /T /E /G  Users:f
       ) 2>nul
cls
echo.
echo.
echo Aplicando Permiss‰es pasta "C:\Arquivos de Programas"
echo para usuario Users authenticated 
echo ------------------------------------------------------------- 
echo Progresso: €€€€€€€€€€€€€€€≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤ 29%%
echo -------------------------------------------------------------
 
>nul^
      (
  	Cacls "C:\Arquivos de Programas"  /T /E /G  "Users authenticated":f
       ) 2>nul
cls
echo.
echo.
echo Aplicando Permiss‰es pasta "C:\Arquivos de Programas"
echo para usuario postgres 
echo ------------------------------------------------------------- 
echo Progresso: €€€€€€€€€€€€€€€≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤ 30%%
echo -------------------------------------------------------------
   
>nul^
      (
  	Cacls "C:\Arquivos de Programas"  /T /E /G  postgres:f
       ) 2>nul
cls
echo.
echo.
echo Aplicando Permiss‰es pasta "C:\Arquivos de Programas"
echo para usuario PostgreSQL
echo ------------------------------------------------------------- 
echo Progresso: €€€€€€€€€€€€€€€€≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤ 31%%
echo -------------------------------------------------------------

>nul^
      (
  	Cacls "C:\Arquivos de Programas"  /T /E /G  PostgreSQL:f
       ) 2>nul
cls
echo.
echo.
echo Aplicando Permiss‰es pasta "C:\Arquivos de Programas" 
echo para usuario ALL APPLICATIONS PACKAGES
echo ------------------------------------------------------------- 
echo Progresso: €€€€€€€€€€€€€€€€≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤ 32%%
echo -------------------------------------------------------------

>nul^
      (
  	Cacls "C:\Arquivos de Programas"  /T /E /G  "ALL APPLICATIONS PACKAGES":f
       ) 2>nul
cls
echo.
echo.
echo Aplicando Permiss‰es pasta "C:\Arquivos de Programas" 
echo para usuario ALL APPLICATIONS PACKAGES RESTRICTED  
echo ------------------------------------------------------------- 
echo Progresso: €€€€€€€€€€€€€€€€€≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤ 33%%
echo -------------------------------------------------------------

>nul^
      (
 	 Cacls "C:\Arquivos de Programas"  /T /E /G  "ALL APPLICATIONS PACKAGES RESTRICTED":f
       ) 2>nul
cls
echo.
echo.
echo Aplicando Permiss‰es pasta "C:\Arquivos de Programas" 
echo para usuario %USERNAME%
echo ------------------------------------------------------------- 
echo Progresso: €€€€€€€€€€€€€€€€€≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤ 34%%
echo -------------------------------------------------------------
  
>nul^
      (
  	Cacls "C:\Arquivos de Programas"  /T /E /G  %USERNAME%:f
       ) 2>nul
cls
echo.
echo.
echo Alterando Permiss‰es pasta "C:\Arquivos de Programas (x86)" 
echo ------------------------------------------------------------- 
echo Progresso: €€€€€€€€€€€€€€€€€€≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤ 35%%
echo -------------------------------------------------------------
  
>nul^
      (
	 takeown /f "C:\Arquivos de Programas (x86)" /r /d y
       ) 2>nul
cls
echo.
echo.
echo Aplicando Permiss‰es pasta "C:\Arquivos de Programas (x86)" 
echo para usuario everyone 
echo ------------------------------------------------------------- 
echo Progresso: €€€€€€€€€€€€€€€€€€≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤ 36%%
echo -------------------------------------------------------------
 
>nul^
      (
	Cacls "C:\Arquivos de Programas (x86)" /T /E /G  everyone:f
       ) 2>nul
cls
echo.
echo.
echo Aplicando Permiss‰es pasta "C:\Arquivos de Programas (x86)" 
echo para usuario Administrators 
echo ------------------------------------------------------------- 
echo Progresso: €€€€€€€€€€€€€€€€€€€≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤ 37%%
echo -------------------------------------------------------------
   
>nul^
      (
  	Cacls "C:\Arquivos de Programas (x86)" /T /E /G  Administrators:f
       ) 2>nul
cls
echo.
echo.
echo Aplicando Permiss‰es pasta "C:\Arquivos de Programas (x86)" 
echo para usuario SYSTEM
echo ------------------------------------------------------------- 
echo Progresso: €€€€€€€€€€€€€€€€€€€≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤ 38%%
echo -------------------------------------------------------------

>nul^
      (
  	Cacls "C:\Arquivos de Programas (x86)" /T /E /G  SYSTEM:f 
       ) 2>nul
cls
echo.
echo.
echo Aplicando Permiss‰es pasta "C:\Arquivos de Programas (x86)" 
echo para usuario Users
echo ------------------------------------------------------------- 
echo Progresso: €€€€€€€€€€€€€€€€€€€€≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤ 39%%
echo -------------------------------------------------------------

>nul^
      (
  	Cacls "C:\Arquivos de Programas (x86)" /T /E /G  Users:f
       ) 2>nul
cls
echo.
echo.
echo Aplicando Permiss‰es pasta "C:\Arquivos de Programas (x86)" 
echo para usuario Users authenticated  
echo ------------------------------------------------------------- 
echo Progresso: €€€€€€€€€€€€€€€€€€€€≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤ 40%%
echo -------------------------------------------------------------

>nul^
      (
  	Cacls "C:\Arquivos de Programas (x86)" /T /E /G  "Users authenticated":f
       ) 2>nul
cls
echo.
echo.
echo Aplicando Permiss‰es pasta "C:\Arquivos de Programas (x86)" 
echo para usuario postgres 
echo ------------------------------------------------------------- 
echo Progresso: €€€€€€€€€€€€€€€€€€€€€≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤ 41%%
echo -------------------------------------------------------------

>nul^
      (
  	Cacls "C:\Arquivos de Programas (x86)" /T /E /G  postgres:f
       ) 2>nul
cls
echo.
echo.
echo Aplicando Permiss‰es pasta "C:\Arquivos de Programas (x86)" 
echo para usuario PostgreSQL
echo ------------------------------------------------------------- 
echo Progresso: €€€€€€€€€€€€€€€€€€€€€≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤ 42%%
echo -------------------------------------------------------------
 
>nul^
      (
	Cacls "C:\Arquivos de Programas (x86)" /T /E /G  PostgreSQL:f
       ) 2>nul
cls
echo.
echo.
echo Aplicando Permiss‰es pasta "C:\Arquivos de Programas (x86)" 
echo para usuario ALL APPLICATIONS PACKAGES
echo ------------------------------------------------------------- 
echo Progresso: €€€€€€€€€€€€€€€€€€€€€€≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤ 43%%
echo -------------------------------------------------------------
  
>nul^
      (
  	Cacls "C:\Arquivos de Programas (x86)" /T /E /G  "ALL APPLICATIONS PACKAGES":f
       ) 2>nul
cls
echo.
echo.
echo Aplicando Permiss‰es pasta "C:\Arquivos de Programas (x86)" 
echo para usuario ALL APPLICATIONS PACKAGES RESTRICTED 
echo ------------------------------------------------------------- 
echo Progresso: €€€€€€€€€€€€€€€€€€€€€€≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤ 44%%
echo -------------------------------------------------------------
 
>nul^
      (
  	Cacls "C:\Arquivos de Programas (x86)" /T /E /G  "ALL APPLICATIONS PACKAGES RESTRICTED":f
       ) 2>nul
cls
echo.
echo.
echo Aplicando Permiss‰es pasta "C:\Arquivos de Programas (x86)" 
echo para usuario %USERNAME% 
echo ------------------------------------------------------------- 
echo Progresso: €€€€€€€€€€€€€€€€€€€€€€€≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤ 45%%
echo -------------------------------------------------------------
 
>nul^
      (
  	Cacls "C:\Arquivos de Programas (x86)" /T /E /G  %USERNAME%:f
       ) 2>nul
cls
echo.
echo.
echo Alterando Permiss‰es pasta "C:\FrCaixaCiss"
echo ------------------------------------------------------------- 
echo Progresso: €€€€€€€€€€€€€€€€€€€€€€€≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤ 46%%
echo -------------------------------------------------------------
  
>nul^
      (
	 takeown /f "C:\FrCaixaCiss" /r /d y
       ) 2>nul
cls
echo.
echo.
echo Aplicando Permiss‰es pasta "C:\FrCaixaCiss" 
echo para usuario everyone
echo ------------------------------------------------------------- 
echo Progresso: €€€€€€€€€€€€€€€€€€€€€€€€≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤ 47%%
echo -------------------------------------------------------------
  
>nul^
      (
	 Cacls "C:\FrCaixaCiss" /T /E /G  everyone:f
       ) 2>nul
cls
echo.
echo.
echo Aplicando Permiss‰es pasta "C:\FrCaixaCiss" 
echo para usuario Administrators
echo ------------------------------------------------------------- 
echo Progresso: €€€€€€€€€€€€€€€€€€€€€€€€≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤ 48%%
echo -------------------------------------------------------------

>nul^
      (
  	Cacls "C:\FrCaixaCiss" /T /E /G  Administrators:f
       ) 2>nul
cls
echo.
echo.
echo Aplicando Permiss‰es pasta "C:\FrCaixaCiss" 
echo para usuario SYSTEM
echo ------------------------------------------------------------- 
echo Progresso: €€€€€€€€€€€€€€€€€€€€€€€€€≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤ 49%%
echo -------------------------------------------------------------

>nul^
      (
  	Cacls "C:\FrCaixaCiss" /T /E /G  SYSTEM:f
       ) 2>nul
cls
echo.
echo.
echo Aplicando Permiss‰es pasta "C:\FrCaixaCiss" 
echo para usuario Users
echo ------------------------------------------------------------- 
echo Progresso: €€€€€€€€€€€€€€€€€€€€€€€€€≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤ 50%%
echo -------------------------------------------------------------
>nul^
      (
  	Cacls "C:\FrCaixaCiss" /T /E /G  Users:f
       ) 2>nul
cls
echo.
echo.
echo Aplicando Permiss‰es pasta "C:\FrCaixaCiss" 
echo para usuario Users authenticated
echo ------------------------------------------------------------- 
echo Progresso: €€€€€€€€€€€€€€€€€€€€€€€€€€≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤ 51%%
echo -------------------------------------------------------------  
>nul^
      (
  	Cacls "C:\FrCaixaCiss" /T /E /G  "Users authenticated":f
       ) 2>nul
cls
echo.
echo.
echo Aplicando Permiss‰es pasta "C:\FrCaixaCiss" 
echo para usuario postgres
echo ------------------------------------------------------------- 
echo Progresso: €€€€€€€€€€€€€€€€€€€€€€€€€€≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤ 52%%
echo -------------------------------------------------------------  
>nul^
      (
  	Cacls "C:\FrCaixaCiss" /T /E /G  postgres:f
       ) 2>nul
cls
echo.
echo.
echo Aplicando Permiss‰es pasta "C:\FrCaixaCiss" 
echo para usuario PostgreSQL
echo ------------------------------------------------------------- 
echo Progresso: €€€€€€€€€€€€€€€€€€€€€€€€€€€≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤ 53%%
echo -------------------------------------------------------------  
>nul^
      (
  	Cacls "C:\FrCaixaCiss" /T /E /G  PostgreSQL:f
       ) 2>nul
cls
echo.
echo.
echo Aplicando Permiss‰es pasta "C:\FrCaixaCiss" 
echo para usuario ALL APPLICATIONS PACKAGES
echo ------------------------------------------------------------- 
echo Progresso: €€€€€€€€€€€€€€€€€€€€€€€€€€€≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤ 54%%
echo -------------------------------------------------------------  
>nul^
      (
	  Cacls "C:\FrCaixaCiss" /T /E /G  "ALL APPLICATIONS PACKAGES":f
       ) 2>nul
cls
echo.
echo.
echo Aplicando Permiss‰es pasta "C:\FrCaixaCiss" 
echo para usuario ALL APPLICATIONS PACKAGES RESTRICTED
echo ------------------------------------------------------------- 
echo Progresso: €€€€€€€€€€€€€€€€€€€€€€€€€€€€≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤ 55%%
echo -------------------------------------------------------------  
>nul^
      (
  	Cacls "C:\FrCaixaCiss" /T /E /G  "ALL APPLICATIONS PACKAGES RESTRICTED":f
       ) 2>nul
cls
echo.
echo.
echo Aplicando Permiss‰es pasta "C:\FrCaixaCiss" 
echo para usuario %USERNAME%
echo ------------------------------------------------------------- 
echo Progresso: €€€€€€€€€€€€€€€€€€€€€€€€€€€€≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤ 56%%
echo -------------------------------------------------------------  
>nul^
      (
  	Cacls "C:\FrCaixaCiss" /T /E /G  %USERNAME%:f
       ) 2>nul
cls
echo.
echo.
echo Alterando Permiss‰es pasta "C:\windows" 
echo ------------------------------------------------------------- 
echo Progresso: €€€€€€€€€€€€€€€€€€€€€€€€€€€€€≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤ 57%%
echo -------------------------------------------------------------  
>nul^
      (
  	takeown /f "C:\windows" /r /d y
       ) 2>nul
cls
echo.
echo.
echo Aplicando Permiss‰es pasta "C:\windows"
echo para usuario everyone
echo ------------------------------------------------------------- 
echo Progresso: €€€€€€€€€€€€€€€€€€€€€€€€€€€€€≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤ 58%%
echo -------------------------------------------------------------  
>nul^
      (
	Cacls "C:\windows" /T /E /G  everyone:f
       ) 2>nul
cls
echo.
echo.
echo Aplicando Permiss‰es pasta "C:\windows"
echo para usuario Administrators
echo ------------------------------------------------------------- 
echo Progresso: €€€€€€€€€€€€€€€€€€€€€€€€€€€€€€≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤ 59%%
echo -------------------------------------------------------------  
>nul^
      (
  	Cacls "C:\windows" /T /E /G  Administrators:f
       ) 2>nul
cls
echo.
echo.
echo Aplicando Permiss‰es pasta "C:\windows"
echo para usuario SYSTEM
echo ------------------------------------------------------------- 
echo Progresso: €€€€€€€€€€€€€€€€€€€€€€€€€€€€€€≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤ 60%%
echo -------------------------------------------------------------  
>nul^
      (
  	Cacls "C:\windows" /T /E /G  SYSTEM:f 	
       ) 2>nul
cls
echo.
echo.
echo Aplicando Permiss‰es pasta "C:\windows"
echo para usuario Users
echo ------------------------------------------------------------- 
echo Progresso: €€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤ 61%%
echo -------------------------------------------------------------  
>nul^
      (
  	Cacls "C:\windows" /T /E /G  Users:f
       ) 2>nul
cls
echo.
echo.
echo Aplicando Permiss‰es pasta "C:\windows"
echo para usuario Users authenticated
echo ------------------------------------------------------------- 
echo Progresso: €€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤ 62%%
echo -------------------------------------------------------------  
>nul^
      (
	  Cacls "C:\windows" /T /E /G  "Users authenticated":f
       ) 2>nul
cls
echo.
echo.
echo Aplicando Permiss‰es pasta "C:\windows"
echo para usuario postgres
echo ------------------------------------------------------------- 
echo Progresso: €€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤ 63%%
echo -------------------------------------------------------------  
>nul^
      (
  	Cacls "C:\windows" /T /E /G  postgres:f
       ) 2>nul
cls
echo.
echo.
echo Aplicando Permiss‰es pasta "C:\windows"
echo para usuario PostgreSQL
echo ------------------------------------------------------------- 
echo Progresso: €€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤ 64%%
echo -------------------------------------------------------------  
>nul^
      (
	  Cacls "C:\windows" /T /E /G  PostgreSQL:f
       ) 2>nul
cls
echo.
echo.
echo Aplicando Permiss‰es pasta "C:\windows"
echo para usuario ALL APPLICATIONS PACKAGES
echo ------------------------------------------------------------- 
echo Progresso: €€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤ 65%%
echo -------------------------------------------------------------  
>nul^
      (
	  Cacls "C:\windows" /T /E /G  "ALL APPLICATIONS PACKAGES":f
       ) 2>nul
cls
echo.
echo.
echo Aplicando Permiss‰es pasta "C:\windows"
echo para usuario ALL APPLICATIONS PACKAGES RESTRICTED
echo ------------------------------------------------------------- 
echo Progresso: €€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤ 66%%
echo -------------------------------------------------------------  
>nul^
      (
	  Cacls "C:\windows" /T /E /G  "ALL APPLICATIONS PACKAGES RESTRICTED":f
       ) 2>nul
cls
echo.
echo.
echo Aplicando Permiss‰es pasta "C:\windows"
echo para usuario %USERNAME%
echo ------------------------------------------------------------- 
echo Progresso: €€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤ 67%%
echo -------------------------------------------------------------  
>nul^
      (
  	Cacls "C:\windows" /T /E /G  %USERNAME%:f
       ) 2>nul
cls
echo.
echo.
echo Aplicando Permiss‰es pasta "C:\windows"
echo para usuario Users
echo ------------------------------------------------------------- 
echo Progresso: €€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤ 68%%
echo -------------------------------------------------------------  
>nul^
      (
	  Cacls "C:\ciss" /T /E /G  Users:f
       ) 2>nul
cls
echo.
echo.
echo Aplicando Permiss‰es pasta "C:\ciss"
echo ------------------------------------------------------------- 
echo Progresso: €€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤ 69%%
echo -------------------------------------------------------------  
>nul^
      (
	takeown /f "C:\ciss" /r /d y
       ) 2>nul
cls
echo.
echo.
echo Alterando Permiss‰es pasta "C:\ciss"
echo para usuario everyone
echo ------------------------------------------------------------- 
echo Progresso: €€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤ 70%%
echo -------------------------------------------------------------  
>nul^
      (
	Cacls "C:\ciss" /T /E /G  everyone:f 
       ) 2>nul
cls
echo.
echo.
echo Aplicando Permiss‰es pasta "C:\ciss"
echo para usuario Administrators
echo ------------------------------------------------------------- 
echo Progresso: €€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€≤≤≤≤≤≤≤≤≤≤≤≤≤≤ 71%%
echo -------------------------------------------------------------  
>nul^
      (
  	Cacls "C:\ciss" /T /E /G  Administrators:f   
       ) 2>nul
cls
echo.
echo.
echo Aplicando Permiss‰es pasta "C:\ciss"
echo para usuario SYSTEM
echo ------------------------------------------------------------- 
echo Progresso: €€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€≤≤≤≤≤≤≤≤≤≤≤≤≤≤ 72%%
echo -------------------------------------------------------------  
>nul^
      (
	Cacls "C:\ciss" /T /E /G  SYSTEM:f   
       ) 2>nul
cls
echo.
echo.
echo Aplicando Permiss‰es pasta "C:\ciss"
echo para usuario Users
echo ------------------------------------------------------------- 
echo Progresso: €€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€≤≤≤≤≤≤≤≤≤≤≤≤≤ 73%%
echo -------------------------------------------------------------  
>nul^
      (
	  Cacls "C:\ciss" /T /E /G  Users:f 
       ) 2>nul
cls
echo.
echo.
echo Aplicando Permiss‰es pasta "C:\ciss"
echo para usuario Users authenticated
echo ------------------------------------------------------------- 
echo Progresso: €€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€≤≤≤≤≤≤≤≤≤≤≤≤≤ 74%%
echo -------------------------------------------------------------  
>nul^
      (
	  Cacls "C:\ciss" /T /E /G  "Users authenticated":f
       ) 2>nul
cls
echo.
echo.
echo Aplicando Permiss‰es pasta "C:\ciss"
echo para usuario ALL APPLICATIONS PACKAGES
echo ------------------------------------------------------------- 
echo Progresso: €€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€≤≤≤≤≤≤≤≤≤≤≤≤ 75%%
echo -------------------------------------------------------------  
>nul^
      (
  	Cacls "C:\ciss" /T /E /G  "ALL APPLICATIONS PACKAGES":f
       ) 2>nul
cls
echo.
echo.
echo Aplicando Permiss‰es pasta "C:\ciss"
echo para usuario ALL APPLICATIONS PACKAGES RESTRICTED
echo ------------------------------------------------------------- 
echo Progresso: €€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€≤≤≤≤≤≤≤≤≤≤≤≤ 76%%
echo -------------------------------------------------------------  
>nul^
      (
  	Cacls "C:\ciss" /T /E /G  "ALL APPLICATIONS PACKAGES RESTRICTED":f
       ) 2>nul
cls
echo.
echo.
echo Aplicando Permiss‰es pasta "C:\ciss"
echo para usuario %USERNAME%
echo ------------------------------------------------------------- 
echo Progresso: €€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€≤≤≤≤≤≤≤≤≤≤≤ 77%%
echo -------------------------------------------------------------  
>nul^
      (
	Cacls "C:\ciss" /T /E /G  %USERNAME%:f
       ) 2>nul
cls
echo.
echo.
echo Aplicando Permiss‰es pasta "C:\ciss"
echo para usuario Users
echo ------------------------------------------------------------- 
echo Progresso: €€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€≤≤≤≤≤≤≤≤≤≤≤ 78%%
echo -------------------------------------------------------------  
>nul^
      (
	  Cacls "C:\ciss" /T /E /G  Users:f
       ) 2>nul
cls
echo.
echo.
echo Aplicando Permiss‰es pasta "C:\ciss"
echo para usuario postgres
echo ------------------------------------------------------------- 
echo Progresso: €€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€≤≤≤≤≤≤≤≤≤≤ 79%%
echo -------------------------------------------------------------  
>nul^
      (
	  Cacls "C:\ciss" /T /E /G  postgres:f
       ) 2>nul
cls
echo.
echo.
echo Aplicando Permiss‰es pasta "C:\ciss"
echo para usuario PostgreSQL
echo ------------------------------------------------------------- 
echo Progresso: €€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€≤≤≤≤≤≤≤≤≤≤ 80%%
echo -------------------------------------------------------------  
>nul^
      (
	  Cacls "C:\ciss" /T /E /G  PostgreSQL:f
       ) 2>nul
cls
echo.
echo.
echo Alterando Permiss‰es pasta "C:\Windows\System32"
echo ------------------------------------------------------------- 
echo Progresso: €€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€≤≤≤≤≤≤≤≤≤ 81%%
echo -------------------------------------------------------------  
>nul^
      (
       takeown /f "C:\Windows\System32" /r /d y
       ) 2>nul
cls
echo.
echo.
echo Aplicando Permiss‰es pasta "C:\Windows\System32"
echo para usuario everyone
echo ------------------------------------------------------------- 
echo Progresso: €€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€≤≤≤≤≤≤≤≤≤ 82%%
echo -------------------------------------------------------------  
>nul^
      (
        Cacls "C:\Windows\System32" /T /E /G  everyone:f 
       ) 2>nul
cls
echo.
echo.
echo Aplicando Permiss‰es pasta "C:\Windows\System32"
echo para usuario Administrators
echo ------------------------------------------------------------- 
echo Progresso: €€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€≤≤≤≤≤≤≤≤ 83%%
echo -------------------------------------------------------------  
>nul^
      (
	Cacls "C:\Windows\System32" /T /E /G  Administrators:f    
       ) 2>nul
cls
echo.
echo.
echo Aplicando Permiss‰es pasta "C:\Windows\System32"
echo para usuario SYSTEM
echo ------------------------------------------------------------- 
echo Progresso: €€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€≤≤≤≤≤≤≤≤ 84%%
echo -------------------------------------------------------------  
>nul^
      (
	Cacls "C:\Windows\System32" /T /E /G  SYSTEM:f    
       ) 2>nul
cls
echo.
echo.
echo Aplicando Permiss‰es pasta "C:\Windows\System32"
echo para usuario Users
echo ------------------------------------------------------------- 
echo Progresso: €€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€≤≤≤≤≤≤≤ 85%%
echo -------------------------------------------------------------  
>nul^
      (
	Cacls "C:\Windows\System32" /T /E /G  Users:f 
       ) 2>nul
cls
echo.
echo.
echo Aplicando Permiss‰es pasta "C:\Windows\System32"
echo para usuario Users authenticated
echo ------------------------------------------------------------- 
echo Progresso: €€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€≤≤≤≤≤≤≤ 86%%
echo -------------------------------------------------------------  
>nul^
      (
	Cacls "C:\Windows\System32" /T /E /G  "Users authenticated":f
       ) 2>nul
cls
echo.
echo.
echo Aplicando Permiss‰es pasta "C:\Windows\System32"
echo para usuario ALL APPLICATIONS PACKAGES
echo ------------------------------------------------------------- 
echo Progresso: €€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€≤≤≤≤≤≤ 87%%
echo -------------------------------------------------------------  
>nul^
      (
	Cacls "C:\Windows\System32" /T /E /G  "ALL APPLICATIONS PACKAGES":f
       ) 2>nul
cls
echo.
echo.
echo Aplicando Permiss‰es pasta "C:\Windows\System32"
echo para usuario ALL APPLICATIONS PACKAGES RESTRICTED
echo ------------------------------------------------------------- 
echo Progresso: €€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€≤≤≤≤≤≤ 88%%
echo -------------------------------------------------------------  
>nul^
      (
  	Cacls "C:\Windows\System32" /T /E /G  "ALL APPLICATIONS PACKAGES RESTRICTED":f
       ) 2>nul
cls
echo.
echo.
echo Aplicando Permiss‰es pasta "C:\Windows\System32"
echo para usuario %USERNAME%
echo ------------------------------------------------------------- 
echo Progresso: €€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€≤≤≤≤≤ 89%%
echo -------------------------------------------------------------  
>nul^
      (
  	Cacls "C:\Windows\System32" /T /E /G  %USERNAME%:f
       ) 2>nul
cls
echo.
echo.
echo Aplicando Permiss‰es pasta "C:\Windows\System32"
echo para usuario postgres
echo ------------------------------------------------------------- 
echo Progresso: €€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€≤≤≤≤≤ 90%%
echo -------------------------------------------------------------  
>nul^
      (
	Cacls "C:\Windows\System32" /T /E /G  postgres:f
       ) 2>nul
cls
echo.
echo.
echo Aplicando Permiss‰es pasta "C:\Windows\System32"
echo para usuario PostgreSQL
echo ------------------------------------------------------------- 
echo Progresso: €€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€≤≤≤≤ 91%%
echo -------------------------------------------------------------  
>nul^
      (
  	Cacls "C:\Windows\System32" /T /E /G  PostgreSQL:f
       ) 2>nul
cls
echo.
echo.
echo Alterando Permiss‰es pasta "C:\Windows\SysWOW64"
echo ------------------------------------------------------------- 
echo Progresso: €€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€≤≤≤≤ 92%%
echo -------------------------------------------------------------  
>nul^
      (
	takeown /f "C:\Windows\SysWOW64" /r /d y
       ) 2>nul
cls
echo.
echo.
echo Aplicando Permiss‰es pasta "C:\Windows\SysWOW64"
echo para usuario everyone
echo ------------------------------------------------------------- 
echo Progresso: €€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€≤≤≤ 93%%
echo -------------------------------------------------------------  
>nul^
      (
	Cacls "C:\Windows\SysWOW64" /T /E /G  everyone:f
       ) 2>nul
cls
echo.
echo.
echo Aplicando Permiss‰es pasta "C:\Windows\SysWOW64"
echo para usuario Administrators
echo ------------------------------------------------------------- 
echo Progresso: €€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€≤≤≤ 94%%
echo -------------------------------------------------------------  
>nul^
      (
	Cacls "C:\Windows\SysWOW64" /T /E /G  Administrators:f   
       ) 2>nul
cls
echo.
echo.
echo Aplicando Permiss‰es pasta "C:\Windows\SysWOW64"
echo para usuario Users
echo ------------------------------------------------------------- 
echo Progresso: €€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€≤≤ 95%%
echo -------------------------------------------------------------  
>nul^
      (
       Cacls "C:\Windows\SysWOW64" /T /E /G  Users:f  
       ) 2>nul
cls
echo.
echo.
echo Aplicando Permiss‰es pasta "C:\Windows\SysWOW64"
echo para usuario Users authenticated
echo ------------------------------------------------------------- 
echo Progresso: €€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€≤≤ 96%%
echo -------------------------------------------------------------  
>nul^
      (
       Cacls "C:\Windows\SysWOW64" /T /E /G  "Users authenticated":f  
       ) 2>nul
cls
echo.
echo.
echo Aplicando Permiss‰es pasta "C:\Windows\SysWOW64"
echo ------------------------------------------------------------- 
echo Progresso: €€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€≤ 97%%
echo -------------------------------------------------------------  
>nul^
      (
	Cacls "C:\Windows\SysWOW64" /T /E /G  postgres:f
        Cacls "C:\Windows\SysWOW64" /T /E /G  PostgreSQL:f
       ) 2>nul
cls
echo.
echo.
echo Aplicando Permiss‰es pasta "C:\Windows\SysWOW64"
echo ------------------------------------------------------------- 
echo Progresso: €€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€≤ 98%%
echo -------------------------------------------------------------  
>nul^
      (
	Cacls "C:\Windows\SysWOW64" /T /E /G  %USERNAME%:f
       ) 2>nul
cls
echo.
echo.
echo Aplicando Permiss‰es pasta "C:\Windows\SysWOW64"
echo ------------------------------------------------------------- 
echo Progresso: €€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€≤ 99%%
echo -------------------------------------------------------------  
>nul^
      (
       Cacls "C:\Windows\SysWOW64" /T /E /G  "ALL APPLICATIONS PACKAGES":f
       Cacls "C:\Windows\SysWOW64" /T /E /G  "ALL APPLICATIONS PACKAGES RESTRICTED":f
       ) 2>nul
cls
echo.
echo.
echo Finalizando Permiss‰es...
echo ------------------------------------------------------------- 
echo Progresso: €€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€ 100%%
echo -------------------------------------------------------------  
GOTO END
:END
cls
echo.
echo.
echo Completo...
echo ------------------------------------------------------------- 
echo Progresso: €€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€ 100%%
echo.
echo.
ECHO Bat dos Pia da Permiss‰es Permiss‰es Frente de Caixa
ECHO By Douglas Cezaro
timeout /t 3
@CHOICE /t 1 /C snc /M "" /N /CS /D s
del LOG1.txt
exit
)
