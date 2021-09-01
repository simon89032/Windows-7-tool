@echo off
:checksystem
cls
echo.
echo Checking operating system...
ping 127.0.0.1 -n 2 > nul
net session >nul 2>&1
setlocal
for /f "tokens=4-5 delims=. " %%i in ('ver') do set VERSION=%%i.%%j
if "%version%" == "6.1" (
	cls
	color 4f
	echo %version% is compatible
	goto admin
) else (
	cls
	color 4f
	echo.
	echo ERROR: %name% is not compatible with this operating system.
	timeout /t -1
	exit
)
endlocal
:admin
echo.

