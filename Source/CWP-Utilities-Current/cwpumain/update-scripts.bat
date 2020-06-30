title CWP Utilities >nul 2>nul
mode con: cols=99 lines=33 >nul 2>nul
@echo off
set PATH=%~dp0bin;%PATH%
echo Fetching scripts from repository...
cd %~dp0
wget -nv -O hosts-stats.bat "https://raw.githubusercontent.com/bongochong/CWP-Utilities/master/Source/CWP-Utilities-Current/cwpumain/hosts-stats.bat"
wget -nv -O hosts-updater-win-dual.bat "https://raw.githubusercontent.com/bongochong/CWP-Utilities/master/Source/CWP-Utilities-Current/cwpumain/hosts-updater-win-dual.bat"
wget -nv -O hosts-updater-win-ipv4.bat "https://raw.githubusercontent.com/bongochong/CWP-Utilities/master/Source/CWP-Utilities-Current/cwpumain/hosts-updater-win-ipv4.bat"
wget -nv -O update-bt-bl-dat.bat "https://raw.githubusercontent.com/bongochong/CWP-Utilities/master/Source/CWP-Utilities-Current/cwpumain/update-bt-bl-dat.bat"
wget -nv -O update-bt-bl-p2p.bat "https://raw.githubusercontent.com/bongochong/CWP-Utilities/master/Source/CWP-Utilities-Current/cwpumain/update-bt-bl-p2p.bat"
wget -nv -O update-pac-win-local.bat "https://raw.githubusercontent.com/bongochong/CWP-Utilities/master/Source/CWP-Utilities-Current/cwpumain/update-pac-win-local.bat"
wget -nv -O update-pac-win-template.bat "https://raw.githubusercontent.com/bongochong/CWP-Utilities/master/Source/CWP-Utilities-Current/cwpumain/update-pac-win-template.bat"
wget -nv -O bin/hostpatterns.dat "https://raw.githubusercontent.com/bongochong/CWP-Utilities/master/Source/CWP-Utilities-Current/cwpumain/bin/hostpatterns.dat"
echo Finished fetching scripts.
:parse
if "%~1"=="" goto endparse
if "%~1"=="-el" goto endloop
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