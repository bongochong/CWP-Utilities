title CWP Utilities (please upgrade to the latest release) >nul 2>nul
mode con: cols=99 lines=33 >nul 2>nul
@echo off
cd %~dp0
echo.
for /F %%C in ('Find /V /C "" ^< %SystemDrive%\Windows\System32\Drivers\etc\HOSTS') do set Count=%%C
echo Your Hosts File is %Count% Lines Long
for /F %%A in ("%SystemDrive%\Windows\System32\Drivers\etc\HOSTS") do set _existingFileSize=%%~zA
call echo and %%_existingFileSize%% bytes in size.
echo.
for /F %%B in ('Find /V /C "" ^< bin\processing\hosts\hosts.final') do set Names=%%B
echo As of last update, you are blocking %Names% domains with your hosts file.
echo.
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
cd ..
WinUtilsMultiLauncher.bat

:endloop
echo ...
echo Hit enter to exit.
echo ...
pause
exit
