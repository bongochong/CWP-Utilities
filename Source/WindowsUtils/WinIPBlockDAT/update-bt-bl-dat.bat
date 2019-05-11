title CWP Utilities >nul 2>nul
mode con: cols=99 lines=33 >nul 2>nul
cd %~dp0
@echo off
del "combined-final-win.dat" >nul 2>nul
cd bin
rm level1BTdat.7z >nul 2>nul
rm bt_level1.dat >nul 2>nul
rm level2BTdat.7z >nul 2>nul
rm bt_level2.dat >nul 2>nul
rm combined-win.txt >nul 2>nul
rm combined-win-sort.txt >nul 2>nul
@echo on
wget -nv -O level1BTdat.7z "http://list.iblocklist.com/?list=ydxerpxkpcfqjaybcssw&fileformat=dat&archiveformat=7z"
wget -nv -O level2BTdat.7z "http://list.iblocklist.com/?list=gyisgnzbhppbvsphucsw&fileformat=dat&archiveformat=7z"
7za e level1BTdat.7z
7za e level2BTdat.7z
mv ydxerpxkpcfqjaybcssw.txt bt_level1.dat
mv gyisgnzbhppbvsphucsw.txt bt_level2.dat
cat *.dat > combined-win.txt
@echo off
timeout 5 >nul 2>nul
sort combined-win.txt > combined-win-sort.txt
uniq combined-win-sort.txt > combined-final-win.dat
timeout 3 >nul 2>nul
sed -i "/^#/d" combined-final-win.dat
timeout 3 >nul 2>nul
sed -i "/^[[:space:]]*$/d" combined-final-win.dat
timeout 3 >nul 2>nul
@echo on
mv combined-final-win.dat ..
@echo off
echo ...
echo Done! Now you may also move your block list (combined-final-win.dat) from the folder that pops up to another directory, if you so wish. Or you can simply point your torrent and other file-sharing clients to the list.
timeout 1 >nul 2>nul
start %~dp0
echo ...
echo Hit enter to return to the main menu.
echo ...
pause
cd ..\..
WinUtilsMultiLauncher.bat
