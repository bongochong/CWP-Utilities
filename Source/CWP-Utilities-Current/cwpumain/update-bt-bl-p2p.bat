title CWP Utilities >nul 2>nul
mode con: cols=99 lines=33 >nul 2>nul
cd %~dp0
cd bin\processing\p2p\processed
@echo off
del "combined-final.p2p" >nul 2>nul
cd %~dp0\bin
rm processing/p2p/level1BT.7z >nul 2>nul
rm processing/p2p/bt_level1.p2p >nul 2>nul
rm processing/p2p/level2BT.7z >nul 2>nul
rm processing/p2p/bt_level2.p2p >nul 2>nul
rm processing/p2p/combined.txt >nul 2>nul
rm processing/p2p/combined-sort.txt >nul 2>nul
@echo on
wget -nv -O processing/p2p/level1BT.7z "http://list.iblocklist.com/?list=ydxerpxkpcfqjaybcssw&fileformat=p2p&archiveformat=7z"
timeout 5
wget -nv -O processing/p2p/level2BT.7z "http://list.iblocklist.com/?list=gyisgnzbhppbvsphucsw&fileformat=p2p&archiveformat=7z"
timeout 5
cd processing\p2p
7za e level1BT.7z
timeout 3
7za e level2BT.7z
timeout 3
cd %~dp0\bin
mv processing/p2p/ydxerpxkpcfqjaybcssw.txt processing/p2p/bt_level1.p2p
mv processing/p2p/gyisgnzbhppbvsphucsw.txt processing/p2p/bt_level2.p2p
cat processing/p2p/*.p2p > processing/p2p/combined.txt
@echo off
timeout 5 >nul 2>nul
sort processing/p2p/combined.txt > processing/p2p/combined-sort.txt
uniq processing/p2p/combined-sort.txt > processing/p2p/combined-final.p2p
timeout 3 >nul 2>nul
sed -i "/^#/d" processing/p2p/combined-final.p2p
timeout 3 >nul 2>nul
sed -i "/^[[:space:]]*$/d" processing/p2p/combined-final.p2p
timeout 3 >nul 2>nul
@echo on
mv processing/p2p/combined-final.p2p processing/p2p/processed/
@echo off
echo ...
echo Done! Now you may also move your block list (combined-final.p2p) from the folder that pops up to another directory, if you so wish. Or you can simply point your torrent and other file-sharing clients to the list.
timeout 1 >nul 2>nul
start %~dp0\bin\processing\p2p\processed\
echo ...
echo Hit enter to return to the main menu.
echo ...
pause
cd %~dp0
cd ..
WinUtilsMultiLauncher.bat
