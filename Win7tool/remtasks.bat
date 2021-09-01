@echo off
echo DELETING TELEMETRY TASKS...
CLS
color 17
mode con cols=90 lines=30

REM CHECK PERMS
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
ping 127.0.0.1 -n 6 > nul

schtasks /delete /tn "\Microsoft\Windows\Application Experience\AitAgent" /f
schtasks /delete /tn "\Microsoft\Windows\Application Experience\Microsoft Compatibility Appraiser" /f
schtasks /delete /tn "\Microsoft\Windows\Application Experience\ProgramDataUpdater" /f
schtasks /delete /tn "\Microsoft\Windows\Autochk\Proxy" /f
schtasks /delete /tn "\Microsoft\Windows\Customer Experience Improvement Program\Consolidator" /f
schtasks /delete /tn "\Microsoft\Windows\Customer Experience Improvement Program\KernelCeipTask" /f
schtasks /delete /tn "\Microsoft\Windows\Customer Experience Improvement Program\UsbCeip" /f
schtasks /delete /tn "\Microsoft\Windows\DiskDiagnostic\Microsoft-Windows-DiskDiagnosticDataCollector" /f
schtasks /delete /tn "\Microsoft\Windows\Maintenance\WinSAT" /f
schtasks /delete /tn "\Microsoft\Windows\CloudExperienceHost\CreateObjectTask" /f
schtasks /delete /tn "\Microsoft\Windows\NetTrace\GatherNetworkInfo" /f
schtasks /delete /tn "\Microsoft\Windows\Shell\FamilySafetyMonitor" /f
schtasks /delete /tn "\Microsoft\Windows\Shell\FamilySafetyRefresh" /f
schtasks /delete /tn "\Microsoft\Windows\IME\SQM data sender" /f
schtasks /delete /tn "\Microsoft\Windows\Setup\EOSNotify" /f
schtasks /delete /tn "\Microsoft\Windows\Setup\EOSNotify2" /f
takeown /f "C:\Windows\System32\EOSNotify.exe"
icacls "C:\Windows\System32\EOSNotify.exe" /grant administrators:F
icacls "C:\Windows\System32\EOSNotify.exe" /inheritance:r /deny SYSTEM:F /grant Administrators:F
del /f "C:\Windows\System32\EOSNotify.exe"
echo If you see "The system cannot find the file specified." then the directory doesn't exist.


pause