title CWP Utilities >nul 2>nul
mode con: cols=99 lines=33 >nul 2>nul
@echo off
set PATH=%~dp0bin;%PATH%
cd %~dp0
cd bin\processing\pac\processed
del "pac-done.js" >nul 2>nul
cd %~dp0bin
rm processing/pac/pac-* >nul 2>nul
rm processing/pac/*.pac >nul 2>nul
@echo on
wget -nv -O processing/pac/1.pac "https://mirror1.malwaredomains.com/files/immortal_domains.txt"
wget -nv -O processing/pac/2.pac "https://s3.amazonaws.com/lists.disconnect.me/simple_ad.txt"
wget -nv -O processing/pac/3.pac "https://s3.amazonaws.com/lists.disconnect.me/simple_tracking.txt"
wget -nv -O processing/pac/4.pac "https://s3.amazonaws.com/lists.disconnect.me/simple_malvertising.txt"
wget -nv -O processing/pac/5.pac "https://raw.githubusercontent.com/Spam404/lists/master/main-blacklist.txt"
wget -nv -O processing/pac/6.pac "https://pgl.yoyo.org/adservers/serverlist.php?hostformat=nohtml&showintro=0&mimetype=plaintext"
wget -nv -O processing/pac/7.pac "https://raw.githubusercontent.com/bongochong/CombinedPrivacyBlockLists/master/ABP2Hosts/piperun-hosts.txt"
cat processing/pac/*.pac > processing/pac/pac-comb.txt
sed -i -e "s/#.*$//" -e "/^$/d" -e "/^Site$/d" processing/pac/pac-comb.txt
sed -i -e "s/^127.0.0.1 //g" -e "s/^0.0.0.0 //g" -e "s/^::1 //g" -e sed "s/^:: //g" -e "/ /d" -e "s/\(.*\)/\L\1/" processing/pac/pac-comb.txt
pcregrep -f tld-filter.dat processing/pac/pac-comb.txt > processing/pac/pac-combi.txt
@echo off
rm processing/pac/pac-comb.txt >nul 2>nul
mv processing/pac/pac-combi.txt processing/pac/pac-comb.txt
@echo on
sort processing/pac/pac-comb.txt > processing/pac/pac-sort.txt
uniq -i processing/pac/pac-sort.txt > processing/pac/pac-uniq.txt
d2u processing/pac/pac-uniq.txt
mv processing/pac/pac-uniq.txt processing/pac/pac-pre.txt
cp processing/pac/pac-pre.txt processing/pac/pac-pre2.txt
cp processing/pac/pac-pre.txt processing/pac/pac-pre01.txt
cp processing/pac/pac-pre2.txt processing/pac/pac-pre02.txt
sed -i "s/^/*./" processing/pac/pac-pre01.txt
d2u processing/pac/pac-pre01.txt
cat processing/pac/pac-pre01.txt processing/pac/pac-pre02.txt > processing/pac/pac-wew.txt
head -c -1 processing/pac/pac-wew.txt > processing/pac/pac-lad.txt
sed -i -e "s/^/shExpMatch(host, '/" -e "s/$/') ||/" processing/pac/pac-lad.txt
sed "2r processing/pac/pac-lad.txt" < processing/pac/pactemplate.txt > processing/pac/pac-done.txt
d2u processing/pac/pac-done.txt
mv processing/pac/pac-done.txt processing/pac/processed/pac-done.txt
cd processing\pac\processed
rename pac-done.txt pac-done.js
@echo off
echo ...
echo Done! Now you may also move your PAC file (pac-done.js) from the folder that pops up to another directory, if you so wish. Please search the web for "ad-blocking PAC" if you would like to know more about this method.
timeout 1 >nul 2>nul
start "" "%~dp0bin\processing\pac\processed"
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
