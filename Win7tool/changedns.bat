@ECHO OFF
SETLOCAL EnableDelayedExpansion

CLS
color 17
mode con cols=90 lines=30
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

:MENU
ECHO 1 - Google DNS
ECHO 2 - OpenDNS
ECHO 3 - Cloudfire DNS
SET /P M=Type what you need: 
IF %M%==1 GOTO DNS1
IF %M%==2 GOTO DNS2
IF %M%==3 GOTO DNS3

:DNS1
netsh interface ipv4 set dns name="Local Area Connection" static 8.8.8.8 primary
netsh interface ipv4 add dns name="Local Area Connection" 8.8.4.4
ipconfig /flushdns

:DNS2 
netsh interface ipv4 set dns name="Local Area Connection" static 208.67.222.222 primary
netsh interface ipv4 add dns name="Local Area Connection" 208.67.220.220
ipconfig /flushdns

:DNS3
netsh interface ipv4 set dns name="Local Area Connection" static 1.1.1.2 primary
netsh interface ipv4 add dns name="Local Area Connection" 1.0.0.2
ipconfig /flushdns

pause
