title CWP Utilities >nul 2>nul
mode con: cols=99 lines=33 >nul 2>nul
@echo off
set PATH=%~dp0bin;%PATH%
cd %~dp0
cd bin\processing\hosts\processed
del "hosts.bak" >nul 2>nul
del "final-hosts.txt" >nul 2>nul
rename HOSTS hosts.bak >nul 2>nul
cd %~dp0bin
rm processing/hosts/*.final >nul 2>nul
rm processing/hosts/*.hosts >nul 2>nul
rm processing/hosts/hosts.* >nul 2>nul
rm processing/hosts/sorted-hosts.txt >nul 2>nul
rm processing/hosts/sorted-hosts6.txt >nul 2>nul
rm processing/hosts/hosts-dual.txt >nul 2>nul
rm processing/hosts/hosts4 >nul 2>nul
rm processing/hosts/hosts6 >nul 2>nul
rm processing/hosts/uniq-hosts-final.pre >nul 2>nul
rm processing/hosts/final-hosts.txt >nul 2>nul
@echo on
wget -nv -O processing/hosts/hosts.1 "http://winhelp2002.mvps.org/hosts.txt"
wget -nv -O processing/hosts/hosts.2 "https://pgl.yoyo.org/adservers/serverlist.php?hostformat=hosts&showintro=0&mimetype=plaintext"
wget -nv -O processing/hosts/hosts.3 "https://www.malwaredomainlist.com/hostslist/hosts.txt"
wget -nv -O processing/hosts/hosts.4 "https://hosts-file.net/ad_servers.txt"
wget -nv -O processing/hosts/hosts.5 "https://hosts-file.net/exp.txt"
wget -nv -O processing/hosts/hosts.6 "https://adaway.org/hosts.txt"
wget -nv -O processing/hosts/hosts.7 "https://raw.githubusercontent.com/bongochong/CombinedPrivacyBlockLists/master/WindowsTelemetryBlockSupplements/SBBTYZ-IPv4.txt"
wget -nv -O processing/hosts/hosts.8 "https://raw.githubusercontent.com/bongochong/CombinedPrivacyBlockLists/master/NoFormatting/Device9domains-IPv4.txt"
cat processing/hosts/hosts.* > processing/hosts/hosts-cat.final
d2u processing/hosts/hosts-cat.final
pcregrep -v -f hostpatterns.dat processing/hosts/hosts-cat.final > processing/hosts/hosts-pre.final
sort processing/hosts/hosts-pre.final > processing/hosts/sorted-hosts.final
uniq processing/hosts/sorted-hosts.final > processing/hosts/uniq-hosts.final
cp processing/hosts/uniq-hosts.final processing/hosts/uniq-hosts-final.pre
d2u processing/hosts/uniq-hosts.final
sed -i -e "s/#.*$//" processing/hosts/uniq-hosts.final
sed -i -e "/[[:space:]]*#/d" processing/hosts/uniq-hosts.final
sed -i -e "/[[:blank:]]*#/d" processing/hosts/uniq-hosts.final
sed -i "s/\t/ /g" processing/hosts/uniq-hosts.final
sed -i "s/^127.0.0.1/0.0.0.0/g" processing/hosts/uniq-hosts.final
sed -i -e "s/[[:space:]]\+/ /g" processing/hosts/uniq-hosts.final
sed -i -e "s/[[:space:]]*$//" processing/hosts/uniq-hosts.final
sed -i -e "s/[[:blank:]]*$//" processing/hosts/uniq-hosts.final
d2u processing/hosts/uniq-hosts.final
sort processing/hosts/uniq-hosts.final > processing/hosts/final-sort.hosts
d2u processing/hosts/final-sort.hosts
uniq -i processing/hosts/final-sort.hosts > processing/hosts/final-uniq.hosts
d2u processing/hosts/final-uniq.hosts
head -c -1 processing/hosts/final-uniq.hosts > processing/hosts/hosts.final
d2u processing/hosts/hosts.final
sed "s/^0.0.0.0/::/g" processing/hosts/hosts.final > processing/hosts/hosts6.final
d2u processing/hosts/hosts6.final
cp processing/hosts/hosts.final processing/hosts/sorted-hosts.txt
cp processing/hosts/hosts6.final processing/hosts/sorted-hosts6.txt
@echo off
cd %~dp0bin\processing\hosts
cscript optimizer-pre.js
timeout 5 >nul 2>nul
cscript optimizer6-pre.js
timeout 5 >nul 2>nul
cd %~dp0bin
@echo on
cat processing/hosts/hosts4 processing/hosts/hosts6 > processing/hosts/hosts-dual.txt
cp processing/hosts/hosts-dual.txt processing/hosts/processed/
cd %~dp0bin\processing\hosts\processed
rename hosts-dual.txt HOSTS
copy /Y HOSTS %SystemDrive%\Windows\System32\Drivers\etc\HOSTS
ipconfig /flushdns
@echo off
echo ...
echo Done! Your hosts file has been updated. There is nothing left for you to do here.
timeout 1 >nul 2>nul
echo ...
echo Hit enter to return to the main menu.
echo ...
pause
cd %~dp0
cd ..
WinUtilsMultiLauncher.bat
