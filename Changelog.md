**Changelog**:

07/16/2020 - Big changes, and a new edition as well. First off, the scripts have been improved (as per usual with a new release), and the system tray utility now has an Update Scripts function too (just like the console interface does), right in the Help menu. This means that the tray utility and console interface have reached feature parity again. Next, the most crucial Windows ports of the GNU/Linux utilities which enable this program to function, were all updated.
  
Finally, the most significant element of this release, is the introduction of a BusyBox-based edition of CWP Utilities (entitled *SlimBB*). Due to replacing many of the individual GNUWin32 utilities with BusyBox, this edition is smaller, and as a result, a bit quicker than the Main / Stable edition. Unfortunately, BusyBox's implementation of `sed` is not great, so I am still utilizing Michael Builov's fantastic port in both editions; Otherwise, BusyBox's integration with CWP Utilities is a no-brainer, and should allow for more rapid development of this utility suite. Both editions will continue to see development and remain in sync until further notice, but for the adventurous among you, please try out the new *SlimBB* edition. Cheers!

The new main release can be downloaded from here: [CWP-Utilities-Stable-1.7.8.exe](https://github.com/bongochong/CWP-Utilities/raw/master/Releases/CWP-Utilities-Stable-1.7.8.exe).

The new busybox-based release can be downloaded from here: [CWP-Utilities-SlimBB-1.7.8.exe](https://github.com/bongochong/CWP-Utilities/raw/master/Releases/CWP-Utilities-SlimBB-1.7.8.exe).

**Please uninstall completely, then install the new version to upgrade**. This is necessary due to the substantial changes and improvements of the update.

---

07/07/2020 - Significant improvements to CWP Utilities. The Windows port of PCREGREP has been updated in order to support a much wider array of patterns. This streamlined several of the scripts, allowing for greater efficiency in terms of pattern identification and overall parsing speed. **Please uninstall your existing installation of CWP Utilities before installing this one**. The feature which updates the core scripts of this program (option #15 in the console interface) is still present, and will allow you to keep your scripts in sync with this repo for future updates, but this full release was necessary because of replacing the PCREGREP binary and libraries with a new and improved version. We are now at stable release 1.7.7. Please upgrade to this version, and enjoy!

---

04/08/2020 - Overall improvements to scripts along with a new feature that allows the user to sync their CWP Utilities update scripts with the ones hosted on my github repository, thereby reducing the need for complete release updates. This feature is accessible via the last option of the console interface. We are now at stable release 1.7.6. Please upgrade to this version.

**Please delete the CWP Utilities shortcut folder and let the installer install its shortcuts again, if you are using a version that is older than 1.7.1**, as there's been useful additions and slight modifications to the shortcuts since.

**If you are using a version of CWP Utilities that is older than 1.6, please uninstall completely and then reinstall this version to upgrade**. Aside from these two scenarios, just install this version over the old one and you're good to go.

---

10/12/2019 - A considerable update. Hosts file defaults have been changed to use more rigorous parsing routines and better default subscriptions (IMHO). PAC file parsing routines have been improved as well. We are now at stable release 1.7.5. Please upgrade to this version.

---

09/17/2019 - A relatively major minor point release. This one enables the hosts file updaters to process plain bad domain lists in addition to the previous default behaviour of just processing other hosts files. It also updates the hosts parsing and PAC parsing routines to ensure removal of more undesirable lines from source lists. All in all, this is a small, though important update. Please upgrade to this version.

---

08/01/2019 - Another minor point release for the removal of some redundant operations in the scripts, and the addition of a new default source in the hosts file updaters. We are now at stable release 1.7.3.

---

05/23/2019 - Another minor point release to ensure feature parity between the main script menu and the systray program. Both now have options to edit the current hosts file on the system, and to view statistics about your hosts file (you must update your hosts file with CWP Utilities at-least once to view complete statistics). We are now at stable release 1.7.2.

---

05/22/2019 - Minor point release for an added feature on the systray program, which lets one edit their current Windows hosts file. Also made the menus in the systray program easier to understand. Now at version 1.7.1 Stable.

---

05/22/2019 - Small improvements to the big changes. Namely, the system tray program now directly can open the configuration files for editing (rather than going through the main script), and it displays the version number of CWP Utilities when clicking "About This Program" in the help sub-menu. This adds a nice amount of polish. Replaced an icon to make sure everything is visually cohesive. Added a start menu shortcut which brings the user directly to the location of the main scripts too. That's it. So, we're now at version 1.7 Stable.

---

05/22/2019 - Big changes in just a few hours, but guess what, there is no need to uninstall the old version before upgrading! You can just download the new release, and install it right over the old one with no issues. We are now at stable release 1.6. Why you ask? Because all functions have a standalone mode now, which can be activated via option flags in each script, *and* I built a utility with Free Pascal that lets you access all the functions - including configuration editing - of CWP Utilities via the system tray!

It works great. It looks good, and it's one step closer to a real ass GUI. In-fact, one could argue that it is a point 'n' click GUI in its own right. Anyway download it below. The system tray utility and the function shortcuts activate each tool in standalone mode now too. It's all great. Usability improvements all around. Enjoy 1.6!

---

05/21/2019 - Alright. I'm done with this charade. I *can* work on the core components of CWP Utilities *while* working on the GUI, and no one is going to stop me. We are now at Stable Release 1.5. I wanted to make sure the hosts file updaters could handle *any* hosts lists that are fed to it, and it only took two extra sed commands, so I added them. Now it does the thing. Enjoy 1.5!

*Note that this should be the last release which requires uninstalling the older version before upgrading. A solid directory structure has been established at this point, and file-names and locations are pretty much set-in-stone. Even when I'm finally done with a point 'n' click GUI, that will simply place a couple of additional files in the install directory, as I plan on crafting the GUI from an established and simple front-end framework.* 

---

05/20/2019 - I know I said that I was bidding you farewell with release 1.3, but I'm a perfectionist with terrible OCD, and while doing some work on the upcoming GUI, I noticed that the PAC file updater was incorrectly concatenating two particular domains during the merging process. I doubt anyone would have noticed, but I want you to have the best, so I fixed it. Here's Stable Release 1.4, and it will - fingers crossed - be the last one until I have a good GUI pumped out. Every other component is in perfect working order.

---

05/19/2019 - I know I said that release 1.2 was the last one before I start working on a conventional point 'n' click GUI, but I was wrong. I was so used to scripting on LiGnux that I forgot I could improve one more thing in CWP Utilities before starting on the GUI: Setting a temporary path in each batch script, for slightly improved directory structure (and the increased usability that comes along with this). So I did it. I also improved duplicate detection in the torrent client blocklist utilities, specifically for iblocklist lists. Now *this* release is the final one before I start on implementing a nice GUI. So, I bid you farewell for a few weeks (or even a couple of months), with Stable Release 1.3.

---

05/19/2019 - Switched the bundled text editor over to one that the average user can take advantage of for editing script configurations. It also happens to be considerably smaller than the previously used Windows port of Nano, so I've saved more space yet again. Aside from that, check the last few changelog entries for a better idea of the improvements and changes that have been taking place. We are now at Stable Release 1.2. This should be the last release for a good while, as I want to start working on a nice GUI. Enjoy!

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

05/13/2019 - Replaced the one non-FOSS component with a FOSS one. CWP Utilities is now 100% FOSS. Updated a bunch of readme files with way more details. We are now at release candidate 4.

Oh, and guess what. For you size-queens (or anti-size-queens), there's now a version that does not ship with a compact JRE. You still must have Java installed on your system for this release (you can check this by opening up Command Prompt and entering `java -version`). It is necessary for the hosts file updater. You'll notice this installer is much smaller.

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
