title CWP Utilities >nul 2>nul
mode con: cols=99 lines=33 >nul 2>nul
cd %~dp0
cd bin\processing\dat\processed
@echo off
del "combined-final-win.dat" >nul 2>nul
cd %~dp0\bin
rm processing/dat/level1BTdat.7z >nul 2>nul
rm processing/dat/bt_level1.dat >nul 2>nul
rm processing/dat/level2BTdat.7z >nul 2>nul
rm processing/dat/bt_level2.dat >nul 2>nul
rm processing/dat/combined-win.txt >nul 2>nul
rm processing/dat/combined-win-sort.txt >nul 2>nul
@echo on
wget -nv -O processing/dat/level1BTdat.7z "http://list.iblocklist.com/?list=ydxerpxkpcfqjaybcssw&fileformat=dat&archiveformat=7z"
timeout 5
wget -nv -O processing/dat/level2BTdat.7z "http://list.iblocklist.com/?list=gyisgnzbhppbvsphucsw&fileformat=dat&archiveformat=7z"
timeout 5
cd processing\dat
7za e level1BTdat.7z
timeout 3
7za e level2BTdat.7z
timeout 3
cd %~dp0\bin
mv processing/dat/ydxerpxkpcfqjaybcssw.txt processing/dat/bt_level1.dat
mv processing/dat/gyisgnzbhppbvsphucsw.txt processing/dat/bt_level2.dat
cat processing/dat/*.dat > processing/dat/combined-win.txt
@echo off
timeout 5 >nul 2>nul
sort processing/dat/combined-win.txt > processing/dat/combined-win-sort.txt
uniq processing/dat/combined-win-sort.txt > processing/dat/combined-final-win.dat
timeout 3 >nul 2>nul
sed -i "/^#/d" processing/dat/combined-final-win.dat
timeout 3 >nul 2>nul
sed -i "/^[[:space:]]*$/d" processing/dat/combined-final-win.dat
timeout 3 >nul 2>nul
@echo on
mv processing/dat/combined-final-win.dat processing/dat/processed/
@echo off
echo ...
echo Done! Now you may also move your block list (combined-final-win.dat) from the folder that pops up to another directory, if you so wish. Or you can simply point your torrent and other file-sharing clients to the list.
timeout 1 >nul 2>nul
start %~dp0\bin\processing\dat\processed\
echo ...
echo Hit enter to return to the main menu.
echo ...
pause
cd %~dp0
cd ..
WinUtilsMultiLauncher.bat
