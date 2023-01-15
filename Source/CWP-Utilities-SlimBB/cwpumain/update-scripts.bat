title CWP Utilities >nul 2>nul
mode con: cols=99 lines=33 >nul 2>nul
@echo off
set PATH=%~dp0bin;%PATH%
echo.
echo Fetching scripts from repository...
echo.
cd %~dp0
busybox wget -nv -O hosts-stats.bat "https://raw.githubusercontent.com/bongochong/CWP-Utilities/master/Source/CWP-Utilities-SlimBB/cwpumain/hosts-stats.bat"
busybox wget -nv -O hosts-updater-win-dual.bat "https://raw.githubusercontent.com/bongochong/CWP-Utilities/master/Source/CWP-Utilities-SlimBB/cwpumain/hosts-updater-win-dual.bat"
busybox wget -nv -O hosts-updater-win-ipv4.bat "https://raw.githubusercontent.com/bongochong/CWP-Utilities/master/Source/CWP-Utilities-SlimBB/cwpumain/hosts-updater-win-ipv4.bat"
busybox wget -nv -O update-bt-bl-dat.bat "https://raw.githubusercontent.com/bongochong/CWP-Utilities/master/Source/CWP-Utilities-SlimBB/cwpumain/update-bt-bl-dat.bat"
busybox wget -nv -O update-bt-bl-p2p.bat "https://raw.githubusercontent.com/bongochong/CWP-Utilities/master/Source/CWP-Utilities-SlimBB/cwpumain/update-bt-bl-p2p.bat"
busybox wget -nv -O update-pac-win-local.bat "https://raw.githubusercontent.com/bongochong/CWP-Utilities/master/Source/CWP-Utilities-SlimBB/cwpumain/update-pac-win-local.bat"
busybox wget -nv -O update-pac-win-template.bat "https://raw.githubusercontent.com/bongochong/CWP-Utilities/master/Source/CWP-Utilities-SlimBB/cwpumain/update-pac-win-template.bat"
busybox wget -nv -O bin/hostpatterns.dat "https://raw.githubusercontent.com/bongochong/CWP-Utilities/master/Source/CWP-Utilities-SlimBB/cwpumain/bin/hostpatterns.dat"
busybox wget -nv -O bin/tld-filter.dat "https://raw.githubusercontent.com/bongochong/CWP-Utilities/master/Source/CWP-Utilities-SlimBB/cwpumain/bin/tld-filter.dat"
busybox wget -nv -O bin/wildcardwhitelist.dat "https://raw.githubusercontent.com/bongochong/CWP-Utilities/master/Source/CWP-Utilities-Current/cwpumain/bin/wildcardwhitelist.dat"
busybox wget -nv -O bin/processing/pac/pactemplate.txt "https://raw.githubusercontent.com/bongochong/CWP-Utilities/master/Source/CWP-Utilities-SlimBB/cwpumain/bin/processing/pac/pactemplate.txt"
echo.
echo Finished fetching scripts. You are now up-to-date!
echo.
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
