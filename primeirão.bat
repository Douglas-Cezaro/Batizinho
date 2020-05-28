@echo off
cls
:menu
cls
color 0b

date /t

echo Computador: %computername%        Usuario: %username%
echo By Douglas Cezaro
                   
echo            MENU TAREFAS
echo  ==================================
echo * 1. Esvaziar a Lixeira            * 
echo * 2. Fazer Backup                  *
echo * 3. Escanear Disco Local          *
echo * 4. Painel de Controle            *
echo * 5. Gerenciador de Dispositivos   *
echo * 6. Gerenciador de Tarefas        *
echo * 7. Finalizar Processos           *
echo * 8. Menu Servicos                 *
echo * 9. Sair                          * 
echo  ==================================

set /p opcao= Escolha uma opcao: 
echo ------------------------------
if %opcao% equ 1 goto opcao1
if %opcao% equ 2 goto opcao2
if %opcao% equ 3 goto opcao3
if %opcao% equ 4 goto opcao4
if %opcao% equ 5 goto opcao5
if %opcao% equ 6 goto opcao6
if %opcao% equ 7 goto opcao7
if %opcao% equ 8 goto opcao8
if %opcao% equ 9 goto opcao9
if %opcao% GEQ 10 goto opcao10

:opcao1
cls
rd /S /Q c:\$Recycle.bin
echo ==================================
echo *      Lixeira Esvaziada          *
echo ==================================
pause
goto menu

:opcao2
cls
@ECHO OFF
FOR /F "TOKENS=1,2,3,4 DELIMS=/ " %%A IN ('DATE /T') DO SET DATA=%%A-%%B-%%C

"C:\Arquivos de programas\WinRAR\Rar.exe" a  backup_%DATA% -r -as "C:\Users\Administrador\Desktop\backup" "C:\Users\Administrador\Documents\*.*"
echo ==================================
echo *      Backup concluido           *
echo ==================================
pause
goto menu

:opcao3
cls
echo ==================================
echo *     Escaneamento de disco       *
echo ==================================
chkdsk c:
pause
goto menu

:opcao4
cls
control.exe
pause
goto menu

:opcao5
cls
devmgmt.msc
pause
goto menu


:opcao6
cls
taskmgr
pause
goto menu

:opcao7
echo off
cls
set /p processo=Digite o nome do processo:
timeout /t 10
set pcommand="wmic process where name="%processo%.exe" | find "%processo%.exe" /c"

FOR /F "tokens=*" %%i IN (' %pcommand% ') DO SET pcount=%%i
if %pcount% GTR 1 (
    echo Tem mais de um processo.
    taskkill /f /im %processo%.exe

) else (
    echo Tem um ou nenhum processo.
)
pause
goto menu

:opcao8
echo off
cls
set /p servico=Digite o nome do servico:

:menuservico
cls
echo            %servico%
echo  ==================================
echo * 1. Iniciar Servico               *
echo * 2. Parar Servico                 *
echo * 3. Pausar Servico                *
echo * 4. Continuar Servico             *
echo * 5. Voltar Menu                   *
echo * 6. Sair                          *
echo  ==================================
set /p op= Escolha uma opcao: 
echo ------------------------------
if %op% equ 1 goto start 
if %op% equ 2 goto stop
if %op% equ 3 goto parar
if %op% equ 4 goto continuar
if %op% equ 5 goto sair
if %op% equ 6 goto fechar
if %op% GEQ 7 goto op5
:start
cls
echo Iniciando servico %servico% ...
msg/time:5 /w * "Intervalo de 5 segundos. Aguarde..." 
net start %servico%
pause
goto menuservico

:continuar
cls
echo Continuando servico %servico% ...
timeout /t 10
net continue %servico%
pause
goto menuservico


:stop
cls
echo Parando servico %servico% ...
timeout /t 10
net stop %servico%
pause
goto menuservico

:parar
cls
echo Pausando servico %servico% ...
timeout /t 10
net pause %servico%
pause
timeout /t 10
net stop %servico%
pause
goto menuservico

:sair
cls
goto menu

:fechar
cls
exit

:op5
echo ==============================================
echo * Opcao Invalida! Escolha outra opcao do menu *
echo ==============================================
pause
goto menu

:opcao9
cls
exit

:opcao10
echo ==============================================
echo * Opcao Invalida! Escolha outra opcao do menu *
echo ==============================================
pause
goto menu