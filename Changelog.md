**Changelog**:

05/14/2019 - The hosts updater utilities now work without the Java component. I rewrote the routines in that Java parsing class to use sed and pcregrep (a small GNU utility for Perl-compatible regular expressions) instead. This means, finally, NO MORE JRE shipped with any installers, and NO MORE JAVA whatsoever. I also ensured that the final files spit out by every utility are fully Unicode text. This was not an issue before, but I wanted to do it, so I did. Release forthcoming.

---

05/13/2019 - Replaced the one non-FOSS component with a FOSS one. CWP Utilities is now 100% FOSS. Updated a bunch of readme files with way more details. We are now at release candidate 4, and you can download it from here: [CWP-Utilities-Installer-RC-4.exe](https://github.com/bongochong/CWP-Utilities/raw/master/Releases/CWP-Utilities-Installer-RC-4.exe) **PLEASE uninstall the old version** before installing this one. This is necessary because of an improved directory structure implemented in the last two release candidates, and the replacement of a crucial binary with a better FOSS one. It's worth it.

Oh, and guess what. For you size-queens (or anti-size-queens), there's now a version that does not ship with a compact JRE. You still **must have Java installed on your system** (you can check this by opening up Command Prompt and entering `java -version`). It is necessary for the hosts file updater. Anyway, here's the installer without an included JRE: [CWP-Utilities-Installer-RC-4-NoJRE.exe](https://github.com/bongochong/CWP-Utilities/raw/master/Releases/CWP-Utilities-Installer-RC-4-NoJRE.exe), you'll notice it is much smaller.

---

05/13/2019 - Further improved directory structure and slimmed down installer. Takes up even less space. Made the hosts restorer script a tad bit friendlier as well, and fixed a minor bug where explorer would not show up at the end of certain scripts to display the file location.

---

05/13/2019 - Smarter directory structure. Leaner and meaner. Takes up a lot less space. Reduced installer size drastically as well. Also added a little utility that can restore your default hosts file (it can be found in the `docs` folder of the install directory, and must be run as administrator).

---

05/10/2019 - FML. The bug-fix to the PAC file updater introduced another tiny bug. Now that's fixed. Tested it like 10 times. No issues. Sorry Folks. All good now.

---

05/10/2019 - Fixed an almost unnoticeable bug in the PAC file updater. No bugs now to my knowledge. Also added a help file.

---

05/10/2019 - Improved some templates that the user can edit for greater flexibility in the scripts.

---

05/10/2019 - PAC Updater now fully fleshed out. Processes most domain lists and generates a comprehensive PAC file by default. Almost as rich as the hosts updater now.

---

05/09/2019 - First Commit of Everything
