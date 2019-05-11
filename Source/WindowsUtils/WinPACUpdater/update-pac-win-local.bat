title CWP Utilities >nul 2>nul
mode con: cols=99 lines=33 >nul 2>nul
cd %~dp0
@echo off
del "pac-done.js" >nul 2>nul
cd bin
rm pac-* >nul 2>nul
rm *.pac >nul 2>nul
@echo on
wget -nv -O 1.pac "https://ssl.bblck.me/blacklists/domain-list.txt"
wget -nv -O 2.pac "https://s3.amazonaws.com/lists.disconnect.me/simple_ad.txt"
wget -nv -O 3.pac "https://s3.amazonaws.com/lists.disconnect.me/simple_tracking.txt"
wget -nv -O 4.pac "https://s3.amazonaws.com/lists.disconnect.me/simple_malvertising.txt"
wget -nv -O 5.pac "https://dshield.org/feeds/suspiciousdomains_Medium.txt"
wget -nv -O 6.pac "https://dshield.org/feeds/suspiciousdomains_High.txt"
wget -nv -O 7.pac "https://pgl.yoyo.org/adservers/serverlist.php?hostformat=nohtml&showintro=0&mimetype=plaintext"
cat *.pac > pac-comb.txt
sed -i "s/#.*$//" pac-comb.txt
sed -i "/^$/d" pac-comb.txt
sort pac-comb.txt > pac-sort.txt
uniq pac-sort.txt > pac-uniq.txt
head -c -1 pac-uniq.txt > pac-pre.txt
cp pac-pre.txt pac-pre2.txt
head -c -1 pac-pre.txt > pac-pre01.txt
head -c -1 pac-pre2.txt > pac-pre02.txt
sed -i "s/^/*./" pac-pre01.txt
cat pac-pre01.txt pac-pre02.txt > pac-wew.txt
cp pac-wew.txt pac-lad.txt 
sed -i "s/^/shExpMatch(host, '/" pac-lad.txt
sed -i "s/$/') ||/" pac-lad.txt
sed "2r pac-lad.txt" < pactemplate.txt > pac-done.txt
cp pac-done.txt ..
cd ..
rename pac-done.txt pac-done.js
@echo off
echo ...
echo Done! Now you may also move your PAC file (pac-done.js) from the folder that pops up to another directory, if you so wish. Please search the web for "ad-blocking PAC" if you would like to know more about this method.
timeout 1 >nul 2>nul
start %~dp0
echo ...
echo Hit enter to return to the main menu.
echo ...
pause
cd ..
WinUtilsMultiLauncher.bat