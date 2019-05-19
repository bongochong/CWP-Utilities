**Changelog**:

05/19/2019 - Switched the bundled text editor over to one that the average user can take advantage of for editing script configurations. It also happens to be considerably smaller than the previously used Windows port of Nano, so I've saved more space yet again. Aside from that, check the last few changelog entries for a better idea of the improvements and changes that have been taking place. We are now at Stable Release 1.2. This should be the last release for a good while, as I want to start working on a nice GUI. Enjoy!

The new release can be downloaded from here: [CWP-Utilities-Stable-1.2.exe](https://github.com/bongochong/CWP-Utilities/raw/master/Releases/CWP-Utilities-Stable-1.2.exe). **PLEASE uninstall the old version** before installing this one. This is necessary because of the significant changes and improvements.

---

05/18/2019 - You can now pass flags to the main script, which means I've added some usability enhancements (like a separate start menu item for each main feature of CWP Utilities). I also decided to use different icons (I think most people using this will like them a lot). In addition, I have updated the help file which is included with the program. This means we are now at Stable Release 1.1. This is the best version yet.

P.S. The installer now has support for a wide array of languages.

---

05/16/2019 - We are now at Stable Release 1.0. Along with all the changes from previous days (listed below this entry), I have added a help menu, and after much testing, I believe this to be stable for any Windows machine running Win10, 8, 7, or Vista. CWP Utilities is now much leaner, more efficient, and thorough in its routines.

What is planned after this release? Options to pass flags to the main script, so each utility can be run in a standalone fashion. Along with a point 'n' click GUI including configuration options, and more. Stay tuned.

---

05/14/2019 - The hosts updater utilities now work **without** the Java component. I rewrote the routines in that Java parsing class to use sed and pcregrep (a small GNU utility for Perl-compatible regular expressions) instead. This means, finally, **NO MORE JRE** shipped with any installers, and **NO MORE JAVA** whatsoever.

I also ensured that the final files spit out by every utility are fully Unicode-compatible, and I perfected each utility's ability to detect duplicate lines, empty lines, commented lines and so on. These were not issues before, but I wanted to do it, so I did. We are now at release candidate 5.

---

05/13/2019 - Replaced the one non-FOSS component with a FOSS one. CWP Utilities is now 100% FOSS. Updated a bunch of readme files with way more details. We are now at release candidate 4, and you can download it from here: [CWP-Utilities-Installer-RC-4.exe](https://github.com/bongochong/CWP-Utilities/raw/master/Backups/OldReleases/CWP-Utilities-Installer-RC-4.exe).

Oh, and guess what. For you size-queens (or anti-size-queens), there's now a version that does not ship with a compact JRE. You still must have Java installed on your system for this release (you can check this by opening up Command Prompt and entering `java -version`). It is necessary for the hosts file updater. Anyway, here's the installer without an included JRE: [CWP-Utilities-Installer-RC-4-NoJRE.exe](https://github.com/bongochong/CWP-Utilities/raw/master/Backups/OldReleases/CWP-Utilities-Installer-RC-4-NoJRE.exe), you'll notice it is much smaller.

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
