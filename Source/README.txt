All data herein is released under a FOSS Common Public Attribution License (https://github.com/bongochong/CWP-Utilities/blob/master/LICENSE.md), with the following exceptions for the included external dependencies:

1. Several Windows ports of LiGnux tools by the GnuWin32 project (http://gnuwin32.sourceforge.net/). I use them for a good portion of the parsing commands.

2. Curl for Windows by Daniel Stenberg (https://curl.haxx.se/). I use this to provide an optional FTP upload function to the PAC file updater (see the 'update-pac-win-template.bat' file in the install directory under cwpumain).

3. Sed for Windows by Michael Builov (https://github.com/mbuilov). I also use this for a good portion of the parsing commands.

4. Wget for Windows by Jernej Simončič (https://eternallybored.org/). I use this to retrieve lists.

5. Elevate by Kai Liu (http://code.kliu.org/). I use this to ensure that the scripts run with the proper permissions for the user.

6. 7-Zip CLI binary by Igor Pavlov (https://www.7-zip.org/). I use this to unpack the larger block lists (like for the torrent client block list updaters) prior to parsing.

7. Metapad by Alexander Davidson (https://liquidninja.com/metapad/). I use this to provide the user with a simple editor that is suitable for modifying each script's configuration, in-case they only have something like Notepad on their system.

Just like my script utilities, these are all also fully open sourced and released under FOSS licenses (or public domain, which is now considered FOSS-compatible). Please inspect the respective websites for details about their particular licenses. Each website also provides the source code for the above programs / libraries.

P.S. I would like to thank the icon creator RDTG (https://www.wincustomize.com/explore/iconpackager/2157/) for his careful re-scaling of classic Windows 98 icons.
