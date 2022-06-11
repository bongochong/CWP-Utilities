title CWP Utilities >nul 2>nul
mode con: cols=99 lines=33 >nul 2>nul
@echo off
set PATH=%~dp0bin;%PATH%
cd %~dp0
cd bin\processing\btb\processed
del "combined-final.p2p" >nul 2>nul
cd %~dp0bin
busybox rm processing/btb/webattackBT.7z >nul 2>nul
busybox rm processing/btb/bt_webattack.p2p >nul 2>nul
busybox rm processing/btb/bpeersBT.7z >nul 2>nul
busybox rm processing/btb/bt_bpeers.p2p >nul 2>nul
busybox rm processing/btb/combined.txt >nul 2>nul
busybox rm processing/btb/combined-sort.txt >nul 2>nul
@echo on
busybox wget -nv -O processing/btb/webattackBT.7z -U "Lynx/2.8.9dev.9 libwww-FM/2.14 SSL-MM/1.4.1 GNUTLS/3.4.11" "http://list.iblocklist.com/?list=czvaehmjpsnwwttrdoyl&fileformat=p2p&archiveformat=7z"
timeout 2
busybox wget -nv -O processing/btb/bpeersBT.7z -U "Lynx/2.8.9dev.9 libwww-FM/2.14 SSL-MM/1.4.1 GNUTLS/3.4.11" "http://list.iblocklist.com/?list=cwworuawihqvocglcoss&fileformat=p2p&archiveformat=7z"
timeout 2
cd processing\btb
7za e webattackBT.7z
timeout 2
7za e bpeersBT.7z
timeout 2
cd %~dp0bin
busybox mv processing/btb/czvaehmjpsnwwttrdoyl.txt processing/btb/bt_webattack.p2p
busybox mv processing/btb/cwworuawihqvocglcoss.txt processing/btb/bt_bpeers.p2p
busybox cat processing/btb/*.p2p > processing/btb/combined.txt
sed -i "s/amp;//g" processing/btb/combined.txt
@echo off
timeout 2 >nul 2>nul
busybox sort -f processing/btb/combined.txt > processing/btb/combined-sort.txt
busybox uniq -i processing/btb/combined-sort.txt > processing/btb/combined-final.p2p
timeout 2 >nul 2>nul
sed -i "/^#/d" processing/btb/combined-final.p2p
timeout 2 >nul 2>nul
sed -i "/^[[:space:]]*$/d" processing/btb/combined-final.p2p
timeout 2 >nul 2>nul
@echo on
busybox mv processing/btb/combined-final.p2p processing/btb/processed/
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
