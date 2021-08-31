@echo off
CLS
color 17
mode con cols=90 lines=30
echo ... WARNING ...
echo THIS WILL RESET YOUR WIN 7 NETWORK SETTINGS
echo Allow Admin then wait
ping 127.0.0.1 -n 2 > nul

 
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
	
echo TCP/IP Reset
netsh winsock reset
netsh int ip reset

echo This will reset your proxy settings!
netsh winhttp reset proxy

echo Release current IP address
ipconfig /release

echo Flushes the ARP cache
arp -d *

echo Flush the NetBIOS cache
nbtstat -R

Refresh DCHP lease for IP address
ipconfig /renew

echo Flushes the DNS cache
ipconfig /flushdns

echo Re-registers with WINS
nbtstat -RR 

echo Re-register with DNS
ipconfig /registerdns 

echo Firewall sesttings reset
netsh advfirewall reset
