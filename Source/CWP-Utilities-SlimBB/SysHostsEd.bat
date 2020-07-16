title CWP Utilities (SlimBB Edition) >nul 2>nul
mode con: cols=99 lines=33 >nul 2>nul
@echo off
cd %~dp0
cwpumain\bin\metapad.exe %SystemDrive%\Windows\System32\Drivers\etc\HOSTS
:parse
if "%~1"=="" goto endloop
if "%~1"=="-cl" goto endparse
SHIFT
goto parse
:endparse
echo ...
echo Hit enter to return to the main menu.
echo ...
pause
cd %~dp0
WinUtilsMultiLauncher.bat

:endloop
exit