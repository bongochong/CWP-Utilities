All data herein is released under a FOSS Common Public Attribution License (https://github.com/bongochong/CWP-Utilities/blob/master/LICENSE.md), with the following exceptions for the included external dependencies:

1. Several Windows ports of LiGnux tools by the GnuWin32 project (http://gnuwin32.sourceforge.net/). I use them for a good portion of the parsing commands.

2. Nano Windows port by LH_Mouse (https://github.lhmouse.com/). I use this to provide the editor function in the main interface.

3. Curl for Windows by Daniel Stenberg (https://curl.haxx.se/). I use this to provide an optional FTP upload function to the PAC file updater (see the 'update-pac-win-template.bat' file in the install directory under cwpumain).

4. Sed for Windows by Michael Builov (https://github.com/mbuilov). I also use this for a good portion of the parsing commands.

5. Wget for Windows by Jernej Simončič (https://eternallybored.org/). I use this to retrieve lists.

6. Elevate by Kai Liu (http://code.kliu.org/). I use this to ensure that the scripts run with the proper permissions for the user.

7. 7-Zip CLI binary by Igor Pavlov (https://www.7-zip.org/). I use this to unpack the larger block lists (like for the torrent client block list updaters) prior to parsing.

Just like my script utilities, these are all also fully open sourced or released under FOSS licenses (or public domain, which is now considered FOSS-compatible). Please inspect the respective websites for details about their particular licenses. Each website also provides the source code for the above programs / libraries.
