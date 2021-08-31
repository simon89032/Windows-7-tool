@echo off
CLS
color 17
mode con cols=90 lines=30
echo ... WARNING ...]
echo THIS WILL RESET YOUR WIN 7 UPDATE SETTINGS
echo ARE YOU SURE?
CHOICE /C YN 

 
REM  --> Check for permissions
>nul 2>&1 "%SYSTEMROOT%\system32\cacls.exe" "%SYSTEMROOT%\system32\config\system"

REM --> If error flag set, we do not have admin.
if '%errorlevel%' NEQ '0' (
    echo Requesting administrative privileges...
    goto UACPrompt
) else ( goto gotAdmin )

:UACPrompt
    echo Set UAC = CreateObject^("Shell.Application"^) > "%temp%\getadmin.vbs"
    set params = %*:"="
    echo UAC.ShellExecute "cmd.exe", "/c %~s0 %params%", "", "runas", 1 >> "%temp%\getadmin.vbs"

    "%temp%\getadmin.vbs"
    del "%temp%\getadmin.vbs"
    exit /B

:gotAdmin
    pushd "%CD%"
    CD /D "%~dp0"
	
	
ping 127.0.0.1 -n 3 > nul
echo Resetting the services as automatic
echo .

 ping 127.0.0.1 -n 3 > nul
sc.exe config cryptsvc start= auto
sc.exe config wuauserv start= auto
sc.exe config bits start= delayed-auto
sc.exe config msiserver start= auto
REM sc.exe config DcomLaunch start= auto
ping 127.0.0.1 -n 6 > nul

echo Starting services
echo .
net start wuauserv
net start cryptSvc
net start bits
net start msiserver

ping 127.0.0.1 -n 6 > nul

REM Change the ms_updates dir to your dir with the updates
echo .. Install the good updates ..
FOR /R C:\MS_Updates %%a IN (*.msu) DO %%a -norestart