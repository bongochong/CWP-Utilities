title CWP Utilities (please upgrade to the latest release) >nul 2>nul
mode con: cols=99 lines=33 >nul 2>nul
@echo off
set PATH=%~dp0bin;%PATH%
cd %~dp0
cd bin\processing\btb\processed
del "combined-final.p2p" >nul 2>nul
cd %~dp0bin
rm processing/btb/level1BT.7z >nul 2>nul
rm processing/btb/bt_level1.p2p >nul 2>nul
rm processing/btb/level2BT.7z >nul 2>nul
rm processing/btb/bt_level2.p2p >nul 2>nul
rm processing/btb/combined.txt >nul 2>nul
rm processing/btb/combined-sort.txt >nul 2>nul
@echo on
wget -nv -O processing/btb/level1BT.7z -U "Lynx/2.8.9dev.9 libwww-FM/2.14 SSL-MM/1.4.1 GNUTLS/3.4.11" "http://list.iblocklist.com/?list=ydxerpxkpcfqjaybcssw&fileformat=p2p&archiveformat=7z"
timeout 2
wget -nv -O processing/btb/level2BT.7z -U "Lynx/2.8.9dev.9 libwww-FM/2.14 SSL-MM/1.4.1 GNUTLS/3.4.11" "http://list.iblocklist.com/?list=gyisgnzbhppbvsphucsw&fileformat=p2p&archiveformat=7z"
timeout 2
cd processing\btb
7za e level1BT.7z
timeout 2
7za e level2BT.7z
timeout 2
cd %~dp0bin
mv processing/btb/ydxerpxkpcfqjaybcssw.txt processing/btb/bt_level1.p2p
mv processing/btb/gyisgnzbhppbvsphucsw.txt processing/btb/bt_level2.p2p
cat processing/btb/*.p2p > processing/btb/combined.txt
sed -i "s/amp;//g" processing/btb/combined.txt
@echo off
timeout 2 >nul 2>nul
sort -f processing/btb/combined.txt > processing/btb/combined-sort.txt
uniq -i processing/btb/combined-sort.txt > processing/btb/combined-final.p2p
timeout 2 >nul 2>nul
sed -i "/^#/d" processing/btb/combined-final.p2p
timeout 2 >nul 2>nul
sed -i "/^[[:space:]]*$/d" processing/btb/combined-final.p2p
d2u processing/btb/combined-final.p2p
timeout 2 >nul 2>nul
@echo on
mv processing/btb/combined-final.p2p processing/btb/processed/
@echo off
echo ...
echo Done! Now you may also move your block list (combined-final.p2p) from the folder that pops up to another directory, if you so wish. Or you can simply point your torrent and other file-sharing clients to the list.
timeout 1 >nul 2>nul
start "" "%~dp0bin\processing\btb\processed"
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
