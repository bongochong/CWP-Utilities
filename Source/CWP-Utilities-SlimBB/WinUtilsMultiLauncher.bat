title CWP Utilities (SlimBB Edition) >nul 2>nul
mode con: cols=99 lines=33 >nul 2>nul
@echo off
set PATH=%~dp0cwpumain\bin;%PATH%
:parse
if "%~1"=="" goto endparse
if "%~1"=="-01" goto SingleEL
if "%~1"=="-02" goto DualEL
if "%~1"=="-03" goto PACel
if "%~1"=="-04" goto DATel
if "%~1"=="-05" goto P2Pel
if "%~1"=="-06" goto endH4
if "%~1"=="-07" goto endH6
if "%~1"=="-08" goto endPac
if "%~1"=="-09" goto endDat
if "%~1"=="-10" goto endP2p
SHIFT
goto parse
:endparse
ECHO.
ECHO **************************************************************
ECHO *Welcome to Combined Windows Privacy Utilities Multi-Launcher*
ECHO **************************************************************
ECHO *Your One Stop Shop for Block List-Based Privacy and Security*
ECHO **************************************************************
ECHO.
pause
:start
cls
ECHO What would you like to do?
ECHO.
ECHO 1 = Update Your Hosts File with Ad-Blocking IPv4 Entries
ECHO 2 = Update Your Hosts File with Ad-Blocking IPv4 and IPv6 Entries
ECHO 3 = Update Your PAC File for Ad-Blocking over a Network Configuration
ECHO 4 = Update the DAT Block List for Your BitTorrent Client (e.g. Halite)
ECHO 5 = Update the P2P Block List for Your BitTorrent Client (e.g. Transmission)
ECHO ............................
ECHO ...ADVANCED OPTIONS BELOW...
ECHO ............................
ECHO 6 = Edit the IPv4 hosts updater configuration
ECHO 7 = Edit the dual stack hosts updater configuration
ECHO 8 = Edit the PAC updater configuration
ECHO 9 = Edit the DAT block list updater configuration
ECHO 10 = Edit the P2P block list updater configuration
ECHO ............................
ECHO 11 = View statistics about your hosts file
ECHO 12 = Edit your current hosts file
ECHO ............................
ECHO 13 = Read the help file
ECHO 14 = Stop this program
ECHO ............................
ECHO 15 = Update scripts from repository
ECHO ............................
ECHO 16 = Donate to Support My Work
ECHO ............................
ECHO.

:choice
set /P C=[What would you like to do]? 
if "%C%"=="1" goto Single
if "%C%"=="2" goto Dual
if "%C%"=="3" goto PAC
if "%C%"=="4" goto DAT
if "%C%"=="5" goto P2P
if "%C%"=="6" goto edH4
if "%C%"=="7" goto edH6
if "%C%"=="8" goto edPac
if "%C%"=="9" goto edDat
if "%C%"=="10" goto edP2p
if "%C%"=="11" goto Stats
if "%C%"=="12" goto edSysHosts
if "%C%"=="13" goto Help
if "%C%"=="14" goto Done
if "%C%"=="15" goto RepSync
if "%C%"=="16" goto Support
goto choice

:Single
ECHO You have chosen to update your hosts file with IPv4 entries only.
pause
cd %~dp0cwpumain
hosts-updater-win-ipv4.bat

:SingleEL
ECHO You have chosen to update your hosts file with IPv4 entries only.
pause
cd %~dp0cwpumain
hosts-updater-win-ipv4.bat -el

:Dual
ECHO You have chosen to update your hosts file with both IPv4 and IPv6 entries.
pause
cd %~dp0cwpumain
hosts-updater-win-dual.bat

:DualEL
ECHO You have chosen to update your hosts file with both IPv4 and IPv6 entries.
pause
cd %~dp0cwpumain
hosts-updater-win-dual.bat -el

:PAC
ECHO You have chosen to update your PAC file for ad-blocking over a network proxy.
pause
cd %~dp0cwpumain
update-pac-win-local.bat

:PACel
ECHO You have chosen to update your PAC file for ad-blocking over a network proxy.
pause
cd %~dp0cwpumain
update-pac-win-local.bat -el

:DAT
ECHO You have chosen to update the DAT block list for your bittorrent client.
pause
cd %~dp0cwpumain
update-bt-bl-dat.bat

:DATel
ECHO You have chosen to update the DAT block list for your bittorrent client.
pause
cd %~dp0cwpumain
update-bt-bl-dat.bat -el

:P2P
ECHO You have chosen to update the P2P block list for your bittorrent client.
pause
cd %~dp0cwpumain
update-bt-bl-p2p.bat

:P2Pel
ECHO You have chosen to update the P2P block list for your bittorrent client.
pause
cd %~dp0cwpumain
update-bt-bl-p2p.bat -el

:edH4
ECHO You have chosen to edit the IPv4 hosts updater configuration
pause
cd %~dp0cwpumain
metapad hosts-updater-win-ipv4.bat
goto start

:endH4
ECHO You have chosen to edit the IPv4 hosts updater configuration
pause
cd %~dp0cwpumain
metapad hosts-updater-win-ipv4.bat
goto END

:edH6
ECHO You have chosen to edit the dual stack hosts updater configuration
pause
cd %~dp0cwpumain
metapad hosts-updater-win-dual.bat
goto start

:endH6
ECHO You have chosen to edit the dual stack hosts updater configuration
pause
cd %~dp0cwpumain
metapad hosts-updater-win-dual.bat
goto END

:edPac
ECHO You have chosen to edit the PAC updater configuration
pause
cd %~dp0cwpumain
metapad update-pac-win-local.bat
goto start

:endPac
ECHO You have chosen to edit the PAC updater configuration
pause
cd %~dp0cwpumain
metapad update-pac-win-local.bat
goto END

:edDat
ECHO You have chosen to edit the DAT block list updater configuration
pause
cd %~dp0cwpumain
metapad update-bt-bl-dat.bat
goto start

:endDat
ECHO You have chosen to edit the DAT block list updater configuration
pause
cd %~dp0cwpumain
metapad update-bt-bl-dat.bat
goto END

:edP2p
ECHO You have chosen to edit the P2P block list updater configuration
pause
cd %~dp0cwpumain
metapad update-bt-bl-p2p.bat
goto start

:endP2p
ECHO You have chosen to edit the P2P block list updater configuration
pause
cd %~dp0cwpumain
metapad update-bt-bl-p2p.bat
goto END

:Stats
ECHO You have chosen to view statistics about your hosts file.
pause
cd %~dp0cwpumain
hosts-stats.bat -cl

:edSysHosts
ECHO You have chosen to edit your current Windows hosts file directly.
pause
cd %~dp0
SysHostsEd.bat -cl

:Help
Echo You have chosen to read the help file for this program.
start "" "https://github.com/bongochong/CWP-Utilities/blob/master/Help.md"
goto start

:RepSync
Echo You have chosen to update the scripts from the repository.
pause
cd %~dp0cwpumain
update-scripts.bat

:Support
Echo You have chosen to view the donation instructions for this program.
start "" "https://github.com/bongochong/CWP-Utilities/blob/master/DONATE.md"
goto start

:Done
Echo You may now close this window. Hit enter to exit.
pause
goto END

:END
exit