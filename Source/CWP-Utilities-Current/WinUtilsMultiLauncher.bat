title CWP Utilities >nul 2>nul
mode con: cols=99 lines=33 >nul 2>nul
@echo off
:parse
if "%~1"=="" goto endparse
if "%~1"=="-01" goto Single
if "%~1"=="-02" goto Dual
if "%~1"=="-03" goto PAC
if "%~1"=="-04" goto DAT
if "%~1"=="-05" goto P2P
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
ECHO 1 = Update Your Hosts File with Security-Minded IPv4 Entries
ECHO 2 = Update Your Hosts File with Security-Minded IPv4 and IPv6 Entries
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
ECHO 11 = Read the help file
ECHO 12 = Stop this program
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
if "%C%"=="11" goto Help
if "%C%"=="12" goto Done
goto choice

:Single
ECHO You have chosen to update your hosts file with IPv4 entries only.
pause
cd %~dp0\cwpumain
hosts-updater-win-ipv4.bat

:Dual
ECHO You have chosen to update your hosts file with both IPv4 and IPv6 entries.
pause
cd %~dp0\cwpumain
hosts-updater-win-dual.bat

:PAC
ECHO You have chosen to update your PAC file for ad-blocking over a network proxy.
pause
cd %~dp0\cwpumain
update-pac-win-local.bat

:DAT
ECHO You have chosen to update the DAT block list for your bittorrent client.
pause
cd %~dp0\cwpumain
update-bt-bl-dat.bat

:P2P
ECHO You have chosen to update the P2P block list for your bittorrent client.
pause
cd %~dp0\cwpumain
update-bt-bl-p2p.bat

:edH4
ECHO You have chosen to edit the IPv4 hosts updater configuration
pause
cd %~dp0\cwpumain
nano hosts-updater-win-ipv4.bat
goto start

:edH6
ECHO You have chosen to edit the dual stack hosts updater configuration
pause
cd %~dp0\cwpumain
nano hosts-updater-win-dual.bat
goto start

:edPac
ECHO You have chosen to edit the PAC updater configuration
pause
cd %~dp0\cwpumain
nano update-pac-win-local.bat
goto start

:edDat
ECHO You have chosen to edit the DAT block list updater configuration
pause
cd %~dp0\cwpumain
nano update-bt-bl-dat.bat
goto start

:edP2p
ECHO You have chosen to edit the P2P block list updater configuration
pause
cd %~dp0\cwpumain
nano update-bt-bl-p2p.bat
goto start

:Help
Echo You have chosen to read the help file for this program.
start "" "https://github.com/bongochong/CWP-Utilities/blob/master/Help.md"
goto start

:Done
Echo You may now close this window. Hit enter to exit.
pause
goto END

:END
exit