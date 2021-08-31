@ECHO OFF&COLOR E && CLS && MODE 60,20

ECHO. Installing Windows Updates... Please Wait!

SETLOCAL ENABLEEXTENSIONS ENABLEDELAYEDEXPANSION
PUSHD %~dp0
FOR %AA IN (*-KB*.MSU) DO (
	CALL :SUB %%~nA
	WUSA "%%~fA" /norestart)
	
ECHO= == Press any key to quit ==
>NUL PAUSE
REM SHUTDOWN.exe /r /t 0
ENDLOCAL
GOTO :EOF

:SUB
    SET "KB_NUM=%*"
    FOR /F "DELIMS=-" %%B IN ("%KB_NUM:*-KB=%") DO SET "KB_NUM=%%B"
    GOTO :EOF
