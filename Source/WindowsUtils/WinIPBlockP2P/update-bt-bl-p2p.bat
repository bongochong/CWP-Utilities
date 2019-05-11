title CWP Utilities >nul 2>nul
mode con: cols=99 lines=33 >nul 2>nul
cd %~dp0
@echo off
del "combined-final.p2p" >nul 2>nul
cd bin
rm level1BT.7z >nul 2>nul
rm bt_level1.p2p >nul 2>nul
rm level2BT.7z >nul 2>nul
rm bt_level2.p2p >nul 2>nul
rm combined.txt >nul 2>nul
rm combined-sort.txt >nul 2>nul
@echo on
wget -nv -O level1BT.7z "http://list.iblocklist.com/?list=ydxerpxkpcfqjaybcssw&fileformat=p2p&archiveformat=7z"
wget -nv -O level2BT.7z "http://list.iblocklist.com/?list=gyisgnzbhppbvsphucsw&fileformat=p2p&archiveformat=7z"
7za e level1BT.7z
7za e level2BT.7z
mv ydxerpxkpcfqjaybcssw.txt bt_level1.p2p
mv gyisgnzbhppbvsphucsw.txt bt_level2.p2p
cat *.p2p > combined.txt
@echo off
timeout 5 >nul 2>nul
sort combined.txt > combined-sort.txt
uniq combined-sort.txt > combined-final.p2p
timeout 3 >nul 2>nul
sed -i "/^#/d" combined-final.p2p
timeout 3 >nul 2>nul
sed -i "/^[[:space:]]*$/d" combined-final.p2p
timeout 3 >nul 2>nul
@echo on
mv combined-final.p2p ..
@echo off
echo ...
echo Done! Now you may also move your block list (combined-final.p2p) from the folder that pops up to another directory, if you so wish. Or you can simply point your torrent and other file-sharing clients to the list.
timeout 1 >nul 2>nul
start %~dp0
echo ...
echo Hit enter to return to the main menu.
echo ...
pause
cd ..\..
WinUtilsMultiLauncher.bat
