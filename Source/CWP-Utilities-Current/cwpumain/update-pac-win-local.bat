title CWP Utilities >nul 2>nul
mode con: cols=99 lines=33 >nul 2>nul
cd %~dp0
cd bin\processing\pac\processed
@echo off
del "pac-done.js" >nul 2>nul
cd %~dp0\bin
rm processing/pac/pac-* >nul 2>nul
rm processing/pac/*.pac >nul 2>nul
@echo on
wget -nv -O processing/pac/1.pac "https://ssl.bblck.me/blacklists/domain-list.txt"
wget -nv -O processing/pac/2.pac "https://s3.amazonaws.com/lists.disconnect.me/simple_ad.txt"
wget -nv -O processing/pac/3.pac "https://s3.amazonaws.com/lists.disconnect.me/simple_tracking.txt"
wget -nv -O processing/pac/4.pac "https://s3.amazonaws.com/lists.disconnect.me/simple_malvertising.txt"
wget -nv -O processing/pac/5.pac "https://dshield.org/feeds/suspiciousdomains_Medium.txt"
wget -nv -O processing/pac/6.pac "https://dshield.org/feeds/suspiciousdomains_High.txt"
wget -nv -O processing/pac/7.pac "https://pgl.yoyo.org/adservers/serverlist.php?hostformat=nohtml&showintro=0&mimetype=plaintext"
cat processing/pac/*.pac > processing/pac/pac-comb.txt
sed -i "s/#.*$//" processing/pac/pac-comb.txt
sed -i "/^$/d" processing/pac/pac-comb.txt
sort processing/pac/pac-comb.txt > processing/pac/pac-sort.txt
uniq processing/pac/pac-sort.txt > processing/pac/pac-uniq.txt
head -c -1 processing/pac/pac-uniq.txt > processing/pac/pac-pre.txt
cp processing/pac/pac-pre.txt processing/pac/pac-pre2.txt
head -c -1 processing/pac/pac-pre.txt > processing/pac/pac-pre01.txt
head -c -1 processing/pac/pac-pre2.txt > processing/pac/pac-pre02.txt
sed -i "s/^/*./" processing/pac/pac-pre01.txt
cat processing/pac/pac-pre01.txt processing/pac/pac-pre02.txt > processing/pac/pac-wew.txt
cp processing/pac/pac-wew.txt processing/pac/pac-lad.txt 
sed -i "s/^/shExpMatch(host, '/" processing/pac/pac-lad.txt
sed -i "s/$/') ||/" processing/pac/pac-lad.txt
sed "2r processing/pac/pac-lad.txt" < processing/pac/pactemplate.txt > processing/pac/pac-done.txt
cp processing/pac/pac-done.txt processing/pac/processed/
cd processing\pac\processed
rename pac-done.txt pac-done.js
@echo off
echo ...
echo Done! Now you may also move your PAC file (pac-done.js) from the folder that pops up to another directory, if you so wish. Please search the web for "ad-blocking PAC" if you would like to know more about this method.
timeout 1 >nul 2>nul
start %~dp0\bin\processing\pac\processed
echo ...
echo Hit enter to return to the main menu.
echo ...
pause
cd %~dp0
cd ..
WinUtilsMultiLauncher.bat
