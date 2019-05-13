title CWP Utilities Hosts Restorer >nul 2>nul
mode con: cols=99 lines=33 >nul 2>nul
@echo off
ECHO ***************************************
ECHO *Let's Restore Your Default Hosts File*
ECHO ***************************************
pause
:start
cls
ECHO What Version of Windows are You Running?
ECHO.
ECHO 1 = Windows 7 or Newer
ECHO 2 = Windows Vista
ECHO 3 = Windows XP
ECHO.

:choice
set /P C=[What Version of Windows are You Running]? 
if "%C%"=="1" goto seven
if "%C%"=="2" goto vista
if "%C%"=="3" goto xp
goto choice

:seven
ECHO You have chosen to restore your hosts file for Windows 7 or newer.
pause
cd %~dp0
copy /Y Windows7andNewerHosts.txt %SystemDrive%\Windows\System32\Drivers\etc\HOSTS
echo Operation successful. We're done here. Hit enter to exit.
pause

:vista
ECHO You have chosen to restore your hosts file for Windows Vista.
pause
cd %~dp0
copy /Y WindowsVistaHosts.txt %SystemDrive%\Windows\System32\Drivers\etc\HOSTS
echo Operation successful. We're done here. Hit enter to exit.
pause

:xp
ECHO You have chosen to restore your hosts file for Windows XP.
pause
cd %~dp0
copy /Y WindowsXPHosts.txt %SystemDrive%\Windows\System32\Drivers\etc\HOSTS
echo Operation successful. We're done here. Hit enter to exit.
pause
