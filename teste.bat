 @echo off
title Permiss�es Frente de Caixa
echo.
cls
echo.
echo.
echo Alterando Permiss�es pasta "C:"
echo ------------------------------------------------------------- 
echo Progresso: �������������������������������������������������� 0%%
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
echo Aplicando Permiss�es pasta "C:"
echo ------------------------------------------------------------- 
echo Progresso: ۲������������������������������������������������ 1%%
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
echo Alterando Permiss�es pasta "C:\Program Files (x86)"
echo ------------------------------------------------------------- 
echo Progresso: ۲������������������������������������������������ 2%%
echo ------------------------------------------------------------- 
>nul^
      (
  	takeown /f "C:\Program Files (x86)" /r /d y
	Cacls "C:\Program Files (x86)" /T /E /G  everyone:f
       ) 2>nul
cls
echo.
echo.
echo Aplicando Permiss�es pasta "C:\Program Files (x86)" 
echo para usuario Administrators
echo ------------------------------------------------------------- 
echo Progresso: �۲����������������������������������������������� 3%%
echo -------------------------------------------------------------
>nul^
      (
	Cacls "C:\Program Files (x86)" /T /E /G  Administrators:f    
       ) 2>nul
cls
echo.
echo.
echo Aplicando Permiss�es pasta "C:\Program Files (x86)"
echo para usuario SYSTEM
echo ------------------------------------------------------------- 
echo Progresso: �۲����������������������������������������������� 4%%
echo -------------------------------------------------------------  
>nul^
      (
 	Cacls "C:\Program Files (x86)" /T /E /G  SYSTEM:f 	    
       ) 2>nul
cls
echo.
echo.
echo Aplicando Permiss�es pasta "C:\Program Files (x86)" 
echo para usuario Users
echo ------------------------------------------------------------- 
echo Progresso: ��۲���������������������������������������������� 5%%
echo ------------------------------------------------------------- 
>nul^
      (
   	Cacls "C:\Program Files (x86)" /T /E /G  Users:f
       ) 2>nul
cls
echo.
echo.
echo Aplicando Permiss�es pasta "C:\Program Files (x86)" 
echo para usuario Users authenticated
echo ------------------------------------------------------------- 
echo Progresso: ��۲���������������������������������������������� 6%%
echo ------------------------------------------------------------- 
>nul^
      (
	Cacls "C:\Program Files (x86)" /T /E /G  "Users authenticated":f
       ) 2>nul
cls
echo.
echo.
echo Aplicando Permiss�es pasta "C:\Program Files (x86)" 
echo para usuario postgres  
echo ------------------------------------------------------------- 
echo Progresso: ���۲��������������������������������������������� 7%%
echo -------------------------------------------------------------
>nul^
      (
	Cacls "C:\Program Files (x86)" /T /E /G  postgres:f
       ) 2>nul
cls
echo.
echo.
echo Aplicando Permiss�es pasta "C:\Program Files (x86)" 
echo para usuario PostgreSQL
echo ------------------------------------------------------------- 
echo Progresso: ���۲��������������������������������������������� 8%%
echo -------------------------------------------------------------
>nul^
      (
        Cacls "C:\Program Files (x86)" /T /E /G  PostgreSQL:f
       ) 2>nul
cls
echo.
echo.
echo Aplicando Permiss�es pasta "C:\Program Files (x86)" 
echo para usuario ALL APPLICATIONS PACKAGES
echo ------------------------------------------------------------- 
echo Progresso: ����۲�������������������������������������������� 9%%
echo -------------------------------------------------------------
>nul^
      (
        Cacls "C:\Program Files (x86)" /T /E /G  "ALL APPLICATIONS PACKAGES":f
       ) 2>nul
cls
echo.
echo.
echo Aplicando Permiss�es pasta "C:\Program Files (x86)" 
echo para usuario ALL APPLICATIONS PACKAGES RESTRICTED 
echo ------------------------------------------------------------- 
echo Progresso: ����۲�������������������������������������������� 10%%
echo -------------------------------------------------------------
>nul^
      (
        Cacls "C:\Program Files (x86)" /T /E /G  "ALL APPLICATIONS PACKAGES RESTRICTED":f
       ) 2>nul
cls
echo.
echo.
echo Aplicando Permiss�es pasta "C:\Program Files (x86)"
echo para usuario %USERNAME% 
echo ------------------------------------------------------------- 
echo Progresso: �����۲������������������������������������������� 11%%
echo -------------------------------------------------------------
   
>nul^
      (
        Cacls "C:\Program Files (x86)" /T /E /G  %USERNAME%:f
       ) 2>nul
cls
echo.
echo.
echo Alterando Permiss�es pasta "C:\Program Files" 
echo ------------------------------------------------------------- 
echo Progresso: �����۲������������������������������������������� 12%%
echo -------------------------------------------------------------
 
>nul^
      (
	  takeown /f "C:\Program Files" /r /d y
       ) 2>nul
cls
echo.
echo.
echo Aplicando Permiss�es pasta "C:\Program Files"
echo para usuario everyone 
echo ------------------------------------------------------------- 
echo Progresso: ������۲������������������������������������������ 13%%
echo ------------------------------------------------------------- 
 
>nul^
      (
	 Cacls "C:\Program Files" /T /E /G  everyone:f
       ) 2>nul
cls
echo.
echo.
echo Aplicando Permiss�es pasta "C:\Program Files"
echo para usuario Administrators
echo ------------------------------------------------------------- 
echo Progresso: ������۲������������������������������������������ 14%%
echo -------------------------------------------------------------

>nul^
      (
  	 Cacls "C:\Program Files" /T /E /G  Administrators:f  
       ) 2>nul
cls
echo.
echo.
echo Aplicando Permiss�es pasta "C:\Program Files"
echo para usuario SYSTEM 
echo ------------------------------------------------------------- 
echo Progresso: �������۲����������������������������������������� 15%%
echo -------------------------------------------------------------
 
>nul^
      (
  	 Cacls "C:\Program Files" /T /E /G  SYSTEM:f  
       ) 2>nul
cls
echo.
echo.
echo Aplicando Permiss�es pasta "C:\Program Files"
echo para usuario Users
echo ------------------------------------------------------------- 
echo Progresso: �������۲����������������������������������������� 16%%
echo -------------------------------------------------------------

>nul^
      (
         Cacls "C:\Program Files" /T /E /G  Users:f 
       ) 2>nul
cls
echo.
echo.
echo Aplicando Permiss�es pasta "C:\Program Files"
echo para usuario Users authenticated
echo ------------------------------------------------------------- 
echo Progresso: ��������۲���������������������������������������� 17%%
echo -------------------------------------------------------------
  
>nul^
      (
  	 Cacls "C:\Program Files" /T /E /G  "Users authenticated":f
       ) 2>nul
cls
echo.
echo.
echo Aplicando Permiss�es pasta "C:\Program Files"
echo para usuario ALL APPLICATIONS PACKAGES
echo ------------------------------------------------------------- 
echo Progresso: ��������۲���������������������������������������� 18%%
echo -------------------------------------------------------------
  
>nul^
      (
	Cacls "C:\Program Files" /T /E /G  "ALL APPLICATIONS PACKAGES":f
       ) 2>nul
cls
echo.
echo.
echo Aplicando Permiss�es pasta "C:\Program Files"
echo para usuario ALL APPLICATIONS PACKAGES RESTRICTED 
echo ------------------------------------------------------------- 
echo Progresso: ���������۲��������������������������������������� 19%%
echo ------------------------------------------------------------- 

>nul^
      (
	Cacls "C:\Program Files" /T /E /G  "ALL APPLICATIONS PACKAGES RESTRICTED":f
       ) 2>nul
cls
echo.
echo.
echo Aplicando Permiss�es pasta "C:\Program Files"
echo para usuario Users
echo ------------------------------------------------------------- 
echo Progresso: ���������۲��������������������������������������� 20%%
echo -------------------------------------------------------------
  
>nul^
      (
	Cacls "C:\Program Files" /T /E /G  Users:f
       ) 2>nul
cls
echo.
echo.
echo Aplicando Permiss�es pasta "C:\Program Files"
echo para usuario %USERNAME% 
echo ------------------------------------------------------------- 
echo Progresso: ����������۲�������������������������������������� 21%%
echo -------------------------------------------------------------
 
>nul^
      (
        Cacls "C:\Program Files" /T /E /G  %USERNAME%:f
       ) 2>nul
cls
echo.
echo.
echo Aplicando Permiss�es pasta "C:\Program Files"
echo para usuario postgres
echo ------------------------------------------------------------- 
echo Progresso: ����������۲�������������������������������������� 22%%
echo -------------------------------------------------------------  

>nul^
      (
        Cacls "C:\Program Files" /T /E /G  postgres:f
       ) 2>nul
cls
echo.
echo.
echo Aplicando Permiss�es pasta "C:\Program Files"
echo para usuario PostgreSQL
echo ------------------------------------------------------------- 
echo Progresso: �����������۲������������������������������������� 23%%
echo -------------------------------------------------------------

>nul^
      (
        Cacls "C:\Program Files" /T /E /G  PostgreSQL:f
       ) 2>nul
cls
echo.
echo.
echo Alterando Permiss�es pasta "C:\Arquivos de Programas"
echo ------------------------------------------------------------- 
echo Progresso: �����������۲������������������������������������� 24%%
echo ------------------------------------------------------------- 

>nul^
      (
	takeown /f "C:\Arquivos de Programas" /r /d y
       ) 2>nul
cls
echo.
echo.
echo Aplicando Permiss�es pasta "C:\Arquivos de Programas"
echo para usuario everyone
echo ------------------------------------------------------------- 
echo Progresso: ������������۲������������������������������������ 25%%
echo ------------------------------------------------------------- 

>nul^
      (
	Cacls "C:\Arquivos de Programas"  /T /E /G  everyone:f
       ) 2>nul
cls
echo.
echo.
echo Aplicando Permiss�es pasta "C:\Arquivos de Programas"
echo para usuario Administrators
echo ------------------------------------------------------------- 
echo Progresso: ������������۲������������������������������������ 26%%
echo ------------------------------------------------------------- 

>nul^
      (
 	 Cacls "C:\Arquivos de Programas"  /T /E /G  Administrators:f
       ) 2>nul
cls
echo.
echo.
echo Aplicando Permiss�es pasta "C:\Arquivos de Programas"
echo para usuario SYSTEM
echo ------------------------------------------------------------- 
echo Progresso: �������������۲����������������������������������� 27%%
echo -------------------------------------------------------------

>nul^
      (
  	Cacls "C:\Arquivos de Programas"  /T /E /G  SYSTEM:f 
       ) 2>nul
cls
echo.
echo.
echo Aplicando Permiss�es pasta "C:\Arquivos de Programas"
echo para usuario Users
echo ------------------------------------------------------------- 
echo Progresso: �������������۲����������������������������������� 28%%
echo -------------------------------------------------------------

>nul^
      (
  	Cacls "C:\Arquivos de Programas"  /T /E /G  Users:f
       ) 2>nul
cls
echo.
echo.
echo Aplicando Permiss�es pasta "C:\Arquivos de Programas"
echo para usuario Users authenticated 
echo ------------------------------------------------------------- 
echo Progresso: ��������������۲���������������������������������� 29%%
echo -------------------------------------------------------------
 
>nul^
      (
  	Cacls "C:\Arquivos de Programas"  /T /E /G  "Users authenticated":f
       ) 2>nul
cls
echo.
echo.
echo Aplicando Permiss�es pasta "C:\Arquivos de Programas"
echo para usuario postgres 
echo ------------------------------------------------------------- 
echo Progresso: ��������������۲���������������������������������� 30%%
echo -------------------------------------------------------------
   
>nul^
      (
  	Cacls "C:\Arquivos de Programas"  /T /E /G  postgres:f
       ) 2>nul
cls
echo.
echo.
echo Aplicando Permiss�es pasta "C:\Arquivos de Programas"
echo para usuario PostgreSQL
echo ------------------------------------------------------------- 
echo Progresso: ���������������۲��������������������������������� 31%%
echo -------------------------------------------------------------

>nul^
      (
  	Cacls "C:\Arquivos de Programas"  /T /E /G  PostgreSQL:f
       ) 2>nul
cls
echo.
echo.
echo Aplicando Permiss�es pasta "C:\Arquivos de Programas" 
echo para usuario ALL APPLICATIONS PACKAGES
echo ------------------------------------------------------------- 
echo Progresso: ���������������۲��������������������������������� 32%%
echo -------------------------------------------------------------

>nul^
      (
  	Cacls "C:\Arquivos de Programas"  /T /E /G  "ALL APPLICATIONS PACKAGES":f
       ) 2>nul
cls
echo.
echo.
echo Aplicando Permiss�es pasta "C:\Arquivos de Programas" 
echo para usuario ALL APPLICATIONS PACKAGES RESTRICTED  
echo ------------------------------------------------------------- 
echo Progresso: ����������������۲�������������������������������� 33%%
echo -------------------------------------------------------------

>nul^
      (
 	 Cacls "C:\Arquivos de Programas"  /T /E /G  "ALL APPLICATIONS PACKAGES RESTRICTED":f
       ) 2>nul
cls
echo.
echo.
echo Aplicando Permiss�es pasta "C:\Arquivos de Programas" 
echo para usuario %USERNAME%
echo ------------------------------------------------------------- 
echo Progresso: ����������������۲�������������������������������� 34%%
echo -------------------------------------------------------------
  
>nul^
      (
  	Cacls "C:\Arquivos de Programas"  /T /E /G  %USERNAME%:f
       ) 2>nul
cls
echo.
echo.
echo Alterando Permiss�es pasta "C:\Arquivos de Programas (x86)" 
echo ------------------------------------------------------------- 
echo Progresso: �����������������۲������������������������������� 35%%
echo -------------------------------------------------------------
  
>nul^
      (
	 takeown /f "C:\Arquivos de Programas (x86)" /r /d y
       ) 2>nul
cls
echo.
echo.
echo Aplicando Permiss�es pasta "C:\Arquivos de Programas (x86)" 
echo para usuario everyone 
echo ------------------------------------------------------------- 
echo Progresso: �����������������۲������������������������������� 36%%
echo -------------------------------------------------------------
 
>nul^
      (
	Cacls "C:\Arquivos de Programas (x86)" /T /E /G  everyone:f
       ) 2>nul
cls
echo.
echo.
echo Aplicando Permiss�es pasta "C:\Arquivos de Programas (x86)" 
echo para usuario Administrators 
echo ------------------------------------------------------------- 
echo Progresso: ������������������۲������������������������������ 37%%
echo -------------------------------------------------------------
   
>nul^
      (
  	Cacls "C:\Arquivos de Programas (x86)" /T /E /G  Administrators:f
       ) 2>nul
cls
echo.
echo.
echo Aplicando Permiss�es pasta "C:\Arquivos de Programas (x86)" 
echo para usuario SYSTEM
echo ------------------------------------------------------------- 
echo Progresso: ������������������۲������������������������������ 38%%
echo -------------------------------------------------------------

>nul^
      (
  	Cacls "C:\Arquivos de Programas (x86)" /T /E /G  SYSTEM:f 
       ) 2>nul
cls
echo.
echo.
echo Aplicando Permiss�es pasta "C:\Arquivos de Programas (x86)" 
echo para usuario Users
echo ------------------------------------------------------------- 
echo Progresso: �������������������۲����������������������������� 39%%
echo -------------------------------------------------------------

>nul^
      (
  	Cacls "C:\Arquivos de Programas (x86)" /T /E /G  Users:f
       ) 2>nul
cls
echo.
echo.
echo Aplicando Permiss�es pasta "C:\Arquivos de Programas (x86)" 
echo para usuario Users authenticated  
echo ------------------------------------------------------------- 
echo Progresso: �������������������۲����������������������������� 40%%
echo -------------------------------------------------------------

>nul^
      (
  	Cacls "C:\Arquivos de Programas (x86)" /T /E /G  "Users authenticated":f
       ) 2>nul
cls
echo.
echo.
echo Aplicando Permiss�es pasta "C:\Arquivos de Programas (x86)" 
echo para usuario postgres 
echo ------------------------------------------------------------- 
echo Progresso: ��������������������۲���������������������������� 41%%
echo -------------------------------------------------------------

>nul^
      (
  	Cacls "C:\Arquivos de Programas (x86)" /T /E /G  postgres:f
       ) 2>nul
cls
echo.
echo.
echo Aplicando Permiss�es pasta "C:\Arquivos de Programas (x86)" 
echo para usuario PostgreSQL
echo ------------------------------------------------------------- 
echo Progresso: ��������������������۲���������������������������� 42%%
echo -------------------------------------------------------------
 
>nul^
      (
	Cacls "C:\Arquivos de Programas (x86)" /T /E /G  PostgreSQL:f
       ) 2>nul
cls
echo.
echo.
echo Aplicando Permiss�es pasta "C:\Arquivos de Programas (x86)" 
echo para usuario ALL APPLICATIONS PACKAGES
echo ------------------------------------------------------------- 
echo Progresso: ���������������������۲��������������������������� 43%%
echo -------------------------------------------------------------
  
>nul^
      (
  	Cacls "C:\Arquivos de Programas (x86)" /T /E /G  "ALL APPLICATIONS PACKAGES":f
       ) 2>nul
cls
echo.
echo.
echo Aplicando Permiss�es pasta "C:\Arquivos de Programas (x86)" 
echo para usuario ALL APPLICATIONS PACKAGES RESTRICTED 
echo ------------------------------------------------------------- 
echo Progresso: ���������������������۲��������������������������� 44%%
echo -------------------------------------------------------------
 
>nul^
      (
  	Cacls "C:\Arquivos de Programas (x86)" /T /E /G  "ALL APPLICATIONS PACKAGES RESTRICTED":f
       ) 2>nul
cls
echo.
echo.
echo Aplicando Permiss�es pasta "C:\Arquivos de Programas (x86)" 
echo para usuario %USERNAME% 
echo ------------------------------------------------------------- 
echo Progresso: ����������������������۲�������������������������� 45%%
echo -------------------------------------------------------------
 
>nul^
      (
  	Cacls "C:\Arquivos de Programas (x86)" /T /E /G  %USERNAME%:f
       ) 2>nul
cls
echo.
echo.
echo Alterando Permiss�es pasta "C:\FrCaixaCiss"
echo ------------------------------------------------------------- 
echo Progresso: ����������������������۲�������������������������� 46%%
echo -------------------------------------------------------------
  
>nul^
      (
	 takeown /f "C:\FrCaixaCiss" /r /d y
       ) 2>nul
cls
echo.
echo.
echo Aplicando Permiss�es pasta "C:\FrCaixaCiss" 
echo para usuario everyone
echo ------------------------------------------------------------- 
echo Progresso: �����������������������۲������������������������� 47%%
echo -------------------------------------------------------------
  
>nul^
      (
	 Cacls "C:\FrCaixaCiss" /T /E /G  everyone:f
       ) 2>nul
cls
echo.
echo.
echo Aplicando Permiss�es pasta "C:\FrCaixaCiss" 
echo para usuario Administrators
echo ------------------------------------------------------------- 
echo Progresso: �����������������������۲������������������������� 48%%
echo -------------------------------------------------------------

>nul^
      (
  	Cacls "C:\FrCaixaCiss" /T /E /G  Administrators:f
       ) 2>nul
cls
echo.
echo.
echo Aplicando Permiss�es pasta "C:\FrCaixaCiss" 
echo para usuario SYSTEM
echo ------------------------------------------------------------- 
echo Progresso: ������������������������۲������������������������ 49%%
echo -------------------------------------------------------------

>nul^
      (
  	Cacls "C:\FrCaixaCiss" /T /E /G  SYSTEM:f
       ) 2>nul
cls
echo.
echo.
echo Aplicando Permiss�es pasta "C:\FrCaixaCiss" 
echo para usuario Users
echo ------------------------------------------------------------- 
echo Progresso: ������������������������۲������������������������ 50%%
echo -------------------------------------------------------------
>nul^
      (
  	Cacls "C:\FrCaixaCiss" /T /E /G  Users:f
       ) 2>nul
cls
echo.
echo.
echo Aplicando Permiss�es pasta "C:\FrCaixaCiss" 
echo para usuario Users authenticated
echo ------------------------------------------------------------- 
echo Progresso: �������������������������۲����������������������� 51%%
echo -------------------------------------------------------------  
>nul^
      (
  	Cacls "C:\FrCaixaCiss" /T /E /G  "Users authenticated":f
       ) 2>nul
cls
echo.
echo.
echo Aplicando Permiss�es pasta "C:\FrCaixaCiss" 
echo para usuario postgres
echo ------------------------------------------------------------- 
echo Progresso: �������������������������۲����������������������� 52%%
echo -------------------------------------------------------------  
>nul^
      (
  	Cacls "C:\FrCaixaCiss" /T /E /G  postgres:f
       ) 2>nul
cls
echo.
echo.
echo Aplicando Permiss�es pasta "C:\FrCaixaCiss" 
echo para usuario PostgreSQL
echo ------------------------------------------------------------- 
echo Progresso: ��������������������������۲���������������������� 53%%
echo -------------------------------------------------------------  
>nul^
      (
  	Cacls "C:\FrCaixaCiss" /T /E /G  PostgreSQL:f
       ) 2>nul
cls
echo.
echo.
echo Aplicando Permiss�es pasta "C:\FrCaixaCiss" 
echo para usuario ALL APPLICATIONS PACKAGES
echo ------------------------------------------------------------- 
echo Progresso: ��������������������������۲���������������������� 54%%
echo -------------------------------------------------------------  
>nul^
      (
	  Cacls "C:\FrCaixaCiss" /T /E /G  "ALL APPLICATIONS PACKAGES":f
       ) 2>nul
cls
echo.
echo.
echo Aplicando Permiss�es pasta "C:\FrCaixaCiss" 
echo para usuario ALL APPLICATIONS PACKAGES RESTRICTED
echo ------------------------------------------------------------- 
echo Progresso: ���������������������������۲��������������������� 55%%
echo -------------------------------------------------------------  
>nul^
      (
  	Cacls "C:\FrCaixaCiss" /T /E /G  "ALL APPLICATIONS PACKAGES RESTRICTED":f
       ) 2>nul
cls
echo.
echo.
echo Aplicando Permiss�es pasta "C:\FrCaixaCiss" 
echo para usuario %USERNAME%
echo ------------------------------------------------------------- 
echo Progresso: ���������������������������۲��������������������� 56%%
echo -------------------------------------------------------------  
>nul^
      (
  	Cacls "C:\FrCaixaCiss" /T /E /G  %USERNAME%:f
       ) 2>nul
cls
echo.
echo.
echo Alterando Permiss�es pasta "C:\windows" 
echo ------------------------------------------------------------- 
echo Progresso: ����������������������������۲�������������������� 57%%
echo -------------------------------------------------------------  
>nul^
      (
  	takeown /f "C:\windows" /r /d y
       ) 2>nul
cls
echo.
echo.
echo Aplicando Permiss�es pasta "C:\windows"
echo para usuario everyone
echo ------------------------------------------------------------- 
echo Progresso: ����������������������������۲�������������������� 58%%
echo -------------------------------------------------------------  
>nul^
      (
	Cacls "C:\windows" /T /E /G  everyone:f
       ) 2>nul
cls
echo.
echo.
echo Aplicando Permiss�es pasta "C:\windows"
echo para usuario Administrators
echo ------------------------------------------------------------- 
echo Progresso: �����������������������������۲������������������� 59%%
echo -------------------------------------------------------------  
>nul^
      (
  	Cacls "C:\windows" /T /E /G  Administrators:f
       ) 2>nul
cls
echo.
echo.
echo Aplicando Permiss�es pasta "C:\windows"
echo para usuario SYSTEM
echo ------------------------------------------------------------- 
echo Progresso: �����������������������������۲������������������� 60%%
echo -------------------------------------------------------------  
>nul^
      (
  	Cacls "C:\windows" /T /E /G  SYSTEM:f 	
       ) 2>nul
cls
echo.
echo.
echo Aplicando Permiss�es pasta "C:\windows"
echo para usuario Users
echo ------------------------------------------------------------- 
echo Progresso: ������������������������������۲������������������ 61%%
echo -------------------------------------------------------------  
>nul^
      (
  	Cacls "C:\windows" /T /E /G  Users:f
       ) 2>nul
cls
echo.
echo.
echo Aplicando Permiss�es pasta "C:\windows"
echo para usuario Users authenticated
echo ------------------------------------------------------------- 
echo Progresso: ������������������������������۲������������������ 62%%
echo -------------------------------------------------------------  
>nul^
      (
	  Cacls "C:\windows" /T /E /G  "Users authenticated":f
       ) 2>nul
cls
echo.
echo.
echo Aplicando Permiss�es pasta "C:\windows"
echo para usuario postgres
echo ------------------------------------------------------------- 
echo Progresso: �������������������������������۲����������������� 63%%
echo -------------------------------------------------------------  
>nul^
      (
  	Cacls "C:\windows" /T /E /G  postgres:f
       ) 2>nul
cls
echo.
echo.
echo Aplicando Permiss�es pasta "C:\windows"
echo para usuario PostgreSQL
echo ------------------------------------------------------------- 
echo Progresso: �������������������������������۲����������������� 64%%
echo -------------------------------------------------------------  
>nul^
      (
	  Cacls "C:\windows" /T /E /G  PostgreSQL:f
       ) 2>nul
cls
echo.
echo.
echo Aplicando Permiss�es pasta "C:\windows"
echo para usuario ALL APPLICATIONS PACKAGES
echo ------------------------------------------------------------- 
echo Progresso: ��������������������������������۲���������������� 65%%
echo -------------------------------------------------------------  
>nul^
      (
	  Cacls "C:\windows" /T /E /G  "ALL APPLICATIONS PACKAGES":f
       ) 2>nul
cls
echo.
echo.
echo Aplicando Permiss�es pasta "C:\windows"
echo para usuario ALL APPLICATIONS PACKAGES RESTRICTED
echo ------------------------------------------------------------- 
echo Progresso: ��������������������������������۲���������������� 66%%
echo -------------------------------------------------------------  
>nul^
      (
	  Cacls "C:\windows" /T /E /G  "ALL APPLICATIONS PACKAGES RESTRICTED":f
       ) 2>nul
cls
echo.
echo.
echo Aplicando Permiss�es pasta "C:\windows"
echo para usuario %USERNAME%
echo ------------------------------------------------------------- 
echo Progresso: ���������������������������������۲��������������� 67%%
echo -------------------------------------------------------------  
>nul^
      (
  	Cacls "C:\windows" /T /E /G  %USERNAME%:f
       ) 2>nul
cls
echo.
echo.
echo Aplicando Permiss�es pasta "C:\windows"
echo para usuario Users
echo ------------------------------------------------------------- 
echo Progresso: ���������������������������������۲��������������� 68%%
echo -------------------------------------------------------------  
>nul^
      (
	  Cacls "C:\ciss" /T /E /G  Users:f
       ) 2>nul
cls
echo.
echo.
echo Aplicando Permiss�es pasta "C:\ciss"
echo ------------------------------------------------------------- 
echo Progresso: ����������������������������������۲�������������� 69%%
echo -------------------------------------------------------------  
>nul^
      (
	takeown /f "C:\ciss" /r /d y
       ) 2>nul
cls
echo.
echo.
echo Alterando Permiss�es pasta "C:\ciss"
echo para usuario everyone
echo ------------------------------------------------------------- 
echo Progresso: ����������������������������������۲�������������� 70%%
echo -------------------------------------------------------------  
>nul^
      (
	Cacls "C:\ciss" /T /E /G  everyone:f 
       ) 2>nul
cls
echo.
echo.
echo Aplicando Permiss�es pasta "C:\ciss"
echo para usuario Administrators
echo ------------------------------------------------------------- 
echo Progresso: �����������������������������������۲������������� 71%%
echo -------------------------------------------------------------  
>nul^
      (
  	Cacls "C:\ciss" /T /E /G  Administrators:f   
       ) 2>nul
cls
echo.
echo.
echo Aplicando Permiss�es pasta "C:\ciss"
echo para usuario SYSTEM
echo ------------------------------------------------------------- 
echo Progresso: �����������������������������������۲������������� 72%%
echo -------------------------------------------------------------  
>nul^
      (
	Cacls "C:\ciss" /T /E /G  SYSTEM:f   
       ) 2>nul
cls
echo.
echo.
echo Aplicando Permiss�es pasta "C:\ciss"
echo para usuario Users
echo ------------------------------------------------------------- 
echo Progresso: ������������������������������������۲������������ 73%%
echo -------------------------------------------------------------  
>nul^
      (
	  Cacls "C:\ciss" /T /E /G  Users:f 
       ) 2>nul
cls
echo.
echo.
echo Aplicando Permiss�es pasta "C:\ciss"
echo para usuario Users authenticated
echo ------------------------------------------------------------- 
echo Progresso: ������������������������������������۲������������ 74%%
echo -------------------------------------------------------------  
>nul^
      (
	  Cacls "C:\ciss" /T /E /G  "Users authenticated":f
       ) 2>nul
cls
echo.
echo.
echo Aplicando Permiss�es pasta "C:\ciss"
echo para usuario ALL APPLICATIONS PACKAGES
echo ------------------------------------------------------------- 
echo Progresso: �������������������������������������۲����������� 75%%
echo -------------------------------------------------------------  
>nul^
      (
  	Cacls "C:\ciss" /T /E /G  "ALL APPLICATIONS PACKAGES":f
       ) 2>nul
cls
echo.
echo.
echo Aplicando Permiss�es pasta "C:\ciss"
echo para usuario ALL APPLICATIONS PACKAGES RESTRICTED
echo ------------------------------------------------------------- 
echo Progresso: �������������������������������������۲����������� 76%%
echo -------------------------------------------------------------  
>nul^
      (
  	Cacls "C:\ciss" /T /E /G  "ALL APPLICATIONS PACKAGES RESTRICTED":f
       ) 2>nul
cls
echo.
echo.
echo Aplicando Permiss�es pasta "C:\ciss"
echo para usuario %USERNAME%
echo ------------------------------------------------------------- 
echo Progresso: ��������������������������������������۲���������� 77%%
echo -------------------------------------------------------------  
>nul^
      (
	Cacls "C:\ciss" /T /E /G  %USERNAME%:f
       ) 2>nul
cls
echo.
echo.
echo Aplicando Permiss�es pasta "C:\ciss"
echo para usuario Users
echo ------------------------------------------------------------- 
echo Progresso: ��������������������������������������۲���������� 78%%
echo -------------------------------------------------------------  
>nul^
      (
	  Cacls "C:\ciss" /T /E /G  Users:f
       ) 2>nul
cls
echo.
echo.
echo Aplicando Permiss�es pasta "C:\ciss"
echo para usuario postgres
echo ------------------------------------------------------------- 
echo Progresso: ���������������������������������������۲��������� 79%%
echo -------------------------------------------------------------  
>nul^
      (
	  Cacls "C:\ciss" /T /E /G  postgres:f
       ) 2>nul
cls
echo.
echo.
echo Aplicando Permiss�es pasta "C:\ciss"
echo para usuario PostgreSQL
echo ------------------------------------------------------------- 
echo Progresso: ���������������������������������������۲��������� 80%%
echo -------------------------------------------------------------  
>nul^
      (
	  Cacls "C:\ciss" /T /E /G  PostgreSQL:f
       ) 2>nul
cls
echo.
echo.
echo Alterando Permiss�es pasta "C:\Windows\System32"
echo ------------------------------------------------------------- 
echo Progresso: ����������������������������������������۲�������� 81%%
echo -------------------------------------------------------------  
>nul^
      (
       takeown /f "C:\Windows\System32" /r /d y
       ) 2>nul
cls
echo.
echo.
echo Aplicando Permiss�es pasta "C:\Windows\System32"
echo para usuario everyone
echo ------------------------------------------------------------- 
echo Progresso: ����������������������������������������۲�������� 82%%
echo -------------------------------------------------------------  
>nul^
      (
        Cacls "C:\Windows\System32" /T /E /G  everyone:f 
       ) 2>nul
cls
echo.
echo.
echo Aplicando Permiss�es pasta "C:\Windows\System32"
echo para usuario Administrators
echo ------------------------------------------------------------- 
echo Progresso: �����������������������������������������۲������� 83%%
echo -------------------------------------------------------------  
>nul^
      (
	Cacls "C:\Windows\System32" /T /E /G  Administrators:f    
       ) 2>nul
cls
echo.
echo.
echo Aplicando Permiss�es pasta "C:\Windows\System32"
echo para usuario SYSTEM
echo ------------------------------------------------------------- 
echo Progresso: �����������������������������������������۲������� 84%%
echo -------------------------------------------------------------  
>nul^
      (
	Cacls "C:\Windows\System32" /T /E /G  SYSTEM:f    
       ) 2>nul
cls
echo.
echo.
echo Aplicando Permiss�es pasta "C:\Windows\System32"
echo para usuario Users
echo ------------------------------------------------------------- 
echo Progresso: ������������������������������������������۲������ 85%%
echo -------------------------------------------------------------  
>nul^
      (
	Cacls "C:\Windows\System32" /T /E /G  Users:f 
       ) 2>nul
cls
echo.
echo.
echo Aplicando Permiss�es pasta "C:\Windows\System32"
echo para usuario Users authenticated
echo ------------------------------------------------------------- 
echo Progresso: ������������������������������������������۲������ 86%%
echo -------------------------------------------------------------  
>nul^
      (
	Cacls "C:\Windows\System32" /T /E /G  "Users authenticated":f
       ) 2>nul
cls
echo.
echo.
echo Aplicando Permiss�es pasta "C:\Windows\System32"
echo para usuario ALL APPLICATIONS PACKAGES
echo ------------------------------------------------------------- 
echo Progresso: �������������������������������������������۲����� 87%%
echo -------------------------------------------------------------  
>nul^
      (
	Cacls "C:\Windows\System32" /T /E /G  "ALL APPLICATIONS PACKAGES":f
       ) 2>nul
cls
echo.
echo.
echo Aplicando Permiss�es pasta "C:\Windows\System32"
echo para usuario ALL APPLICATIONS PACKAGES RESTRICTED
echo ------------------------------------------------------------- 
echo Progresso: �������������������������������������������۲����� 88%%
echo -------------------------------------------------------------  
>nul^
      (
  	Cacls "C:\Windows\System32" /T /E /G  "ALL APPLICATIONS PACKAGES RESTRICTED":f
       ) 2>nul
cls
echo.
echo.
echo Aplicando Permiss�es pasta "C:\Windows\System32"
echo para usuario %USERNAME%
echo ------------------------------------------------------------- 
echo Progresso: ��������������������������������������������۲���� 89%%
echo -------------------------------------------------------------  
>nul^
      (
  	Cacls "C:\Windows\System32" /T /E /G  %USERNAME%:f
       ) 2>nul
cls
echo.
echo.
echo Aplicando Permiss�es pasta "C:\Windows\System32"
echo para usuario postgres
echo ------------------------------------------------------------- 
echo Progresso: ��������������������������������������������۲���� 90%%
echo -------------------------------------------------------------  
>nul^
      (
	Cacls "C:\Windows\System32" /T /E /G  postgres:f
       ) 2>nul
cls
echo.
echo.
echo Aplicando Permiss�es pasta "C:\Windows\System32"
echo para usuario PostgreSQL
echo ------------------------------------------------------------- 
echo Progresso: ���������������������������������������������۲��� 91%%
echo -------------------------------------------------------------  
>nul^
      (
  	Cacls "C:\Windows\System32" /T /E /G  PostgreSQL:f
       ) 2>nul
cls
echo.
echo.
echo Alterando Permiss�es pasta "C:\Windows\SysWOW64"
echo ------------------------------------------------------------- 
echo Progresso: ���������������������������������������������۲��� 92%%
echo -------------------------------------------------------------  
>nul^
      (
	takeown /f "C:\Windows\SysWOW64" /r /d y
       ) 2>nul
cls
echo.
echo.
echo Aplicando Permiss�es pasta "C:\Windows\SysWOW64"
echo para usuario everyone
echo ------------------------------------------------------------- 
echo Progresso: ����������������������������������������������۲�� 93%%
echo -------------------------------------------------------------  
>nul^
      (
	Cacls "C:\Windows\SysWOW64" /T /E /G  everyone:f
       ) 2>nul
cls
echo.
echo.
echo Aplicando Permiss�es pasta "C:\Windows\SysWOW64"
echo para usuario Administrators
echo ------------------------------------------------------------- 
echo Progresso: ����������������������������������������������۲�� 94%%
echo -------------------------------------------------------------  
>nul^
      (
	Cacls "C:\Windows\SysWOW64" /T /E /G  Administrators:f   
       ) 2>nul
cls
echo.
echo.
echo Aplicando Permiss�es pasta "C:\Windows\SysWOW64"
echo para usuario Users
echo ------------------------------------------------------------- 
echo Progresso: �����������������������������������������������۲� 95%%
echo -------------------------------------------------------------  
>nul^
      (
       Cacls "C:\Windows\SysWOW64" /T /E /G  Users:f  
       ) 2>nul
cls
echo.
echo.
echo Aplicando Permiss�es pasta "C:\Windows\SysWOW64"
echo para usuario Users authenticated
echo ------------------------------------------------------------- 
echo Progresso: �����������������������������������������������۲� 96%%
echo -------------------------------------------------------------  
>nul^
      (
       Cacls "C:\Windows\SysWOW64" /T /E /G  "Users authenticated":f  
       ) 2>nul
cls
echo.
echo.
echo Aplicando Permiss�es pasta "C:\Windows\SysWOW64"
echo ------------------------------------------------------------- 
echo Progresso: ������������������������������������������������۲ 97%%
echo -------------------------------------------------------------  
>nul^
      (
	Cacls "C:\Windows\SysWOW64" /T /E /G  postgres:f
        Cacls "C:\Windows\SysWOW64" /T /E /G  PostgreSQL:f
       ) 2>nul
cls
echo.
echo.
echo Aplicando Permiss�es pasta "C:\Windows\SysWOW64"
echo ------------------------------------------------------------- 
echo Progresso: ������������������������������������������������۲ 98%%
echo -------------------------------------------------------------  
>nul^
      (
	Cacls "C:\Windows\SysWOW64" /T /E /G  %USERNAME%:f
       ) 2>nul
cls
echo.
echo.
echo Aplicando Permiss�es pasta "C:\Windows\SysWOW64"
echo ------------------------------------------------------------- 
echo Progresso: ������������������������������������������������۲ 99%%
echo -------------------------------------------------------------  
>nul^
      (
       Cacls "C:\Windows\SysWOW64" /T /E /G  "ALL APPLICATIONS PACKAGES":f
       Cacls "C:\Windows\SysWOW64" /T /E /G  "ALL APPLICATIONS PACKAGES RESTRICTED":f
       ) 2>nul
cls
echo.
echo.
echo Finalizando Permiss�es...
echo ------------------------------------------------------------- 
echo Progresso: �������������������������������������������������� 100%%
echo -------------------------------------------------------------  
GOTO END
:END
cls
echo.
echo.
echo Completo...
echo ------------------------------------------------------------- 
echo Progresso: �������������������������������������������������� 100%%
echo.
echo.
ECHO Bat dos Pia da Permiss�es Permiss�es Frente de Caixa
ECHO By Douglas Cezaro
timeout /t 3
@CHOICE /t 1 /C snc /M "" /N /CS /D s
del LOG1.txt