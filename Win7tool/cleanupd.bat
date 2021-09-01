@echo off
CLS
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
color 17
echo ... WARNING ...
ping 127.0.0.1 -n 3 > nul
color 0C
echo ... IF WINDOWS UPDATES IS SLOW, WAIT A BIT. WIN UPDATES IS DOWNLOADING THE REQUIRED FILES! ...
ping 127.0.0.1 -n 10 > nul

color 17
mode con cols=90 lines=30
echo .. Clearing the windows update component ..
sc.exe config wuauserv start= disabled
sc.exe config bits start= disabled
sc.exe config cryptsvc start= disabled
sc.exe config appidsvc start= disabled

net stop bits
net stop wuauserv
net stop appidsvc
net stop cryptsvc
taskkill /im wuauclt.exe /f

ping 127.0.0.1 -n 6 > nul



REM READ MORE ABOUT DcomLaunch HERE https://www.coretechnologies.com/blog/windows-services/dcomlaunch/
REM sc.exe config DcomLaunch start= disabled
	
:Reset
echo Deleting *.qmgr files
del /s /q /f "%ALLUSERSPROFILE%\Microsoft\Network\Downloader\qmgr*.dat"
del /s /q /f "%ALLUSERSPROFILE%\Application Data\Microsoft\Network\Downloader\qmgr*.dat" 

REM for /d %%i in ("%SystemRoot%\SoftwareDistribution\Download\*.*") do rmdir /s "%%~i"

Ren C:\Windows\SoftwareDistribution SoftwareDistribution.old
Ren C:\Windows\System32\catroot2 Catroot2.old
ping 127.0.0.1 -n 6 > nul


echo Removing Windows update cache files....
echo .

cd /d %windir%\system32

if exist "%SYSTEMROOT%\winsxs\pending.xml.bak" del /s /q /f "%SYSTEMROOT%\winsxs\pending.xml.bak" 
if exist "%SYSTEMROOT%\winsxs\pending.xml" ( 
    takeown /f "%SYSTEMROOT%\winsxs\pending.xml" 
    attrib -r -s -h /s /d "%SYSTEMROOT%\winsxs\pending.xml" 
    ren "%SYSTEMROOT%\winsxs\pending.xml" pending.xml.bak 
) 
  
if exist "%SYSTEMROOT%\SoftwareDistribution.bak" rmdir /s /q  "%SYSTEMROOT%\SoftwareDistribution.bak"
if exist "%SYSTEMROOT%\SoftwareDistribution" ( 
    attrib -r -s -h /s /d "%SYSTEMROOT%\SoftwareDistribution" 
    ren "%SYSTEMROOT%\SoftwareDistribution" SoftwareDistribution.bak 
) 
 
if exist "%SYSTEMROOT%\system32\Catroot2.bak" rmdir /s /q  "%SYSTEMROOT%\system32\Catroot2.bak" 
if exist "%SYSTEMROOT%\system32\Catroot2" ( 
    attrib -r -s -h /s /d "%SYSTEMROOT%\system32\Catroot2" 
    ren "%SYSTEMROOT%\system32\Catroot2" Catroot2.bak 
) 
  
if exist "%SYSTEMROOT%\WindowsUpdate.log.bak" del /s /q  /f "%SYSTEMROOT%\WindowsUpdate.log.bak" 
if exist "%SYSTEMROOT%\WindowsUpdate.log" ( 
    attrib -r -s -h /s /d "%SYSTEMROOT%\WindowsUpdate.log" 
    ren "%SYSTEMROOT%\WindowsUpdate.log" WindowsUpdate.log.bak 
) 
del /f /s /q %windir%\windowsupdate.log




REM del /s /f /q "%TEMP%\*.*"
REM del /s /f /q "%SYSTEMROOT%\Temp\*.*"

PAUSE