title CWP Utilities >nul 2>nul
mode con: cols=99 lines=33 >nul 2>nul
@echo off
echo Preparing to Launch Combined Windows Privacy Utilities...
echo ...
echo ___________________________________________
echo oooo_ooo____oo____ooo____ooo____oo_ooooooo_
echo _oo__oooo___oo__oo___oo__oooo___oo_oo______
echo _oo__oo_oo__oo_oo_____oo_oo_oo__oo_oooo____
echo _oo__oo__oo_oo_ooooooooo_oo__oo_oo_oo______
echo _oo__oo___oooo_oo_____oo_oo___oooo_oo______
echo oooo_oo____ooo_oo_____oo_oo____ooo_ooooooo_
echo ___________________________________________
echo ...
cd %~dp0
echo Ready to launch. Just hit yes, and we shall begin...
nircmd.exe elevate WinUtilsMultiLauncher.bat
exit