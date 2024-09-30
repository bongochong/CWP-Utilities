# [Combined Windows Privacy Utilities](https://github.com/bongochong/CWP-Utilities/raw/master/Releases/CWP-Utilities-Stable-1.8.0.exe) 
*2023 brought me some serious challenges and setbacks, due to a significant death in the family, which I am still recovering from. That being said, I have been working on notable additions and optimizations for a new release, which will eventually get pushed to this repo. I'm still actively maintaining this software, but if you truly can't wait for the improvements that are on the backburner while this project is in maintenance mode, I encourage you to install Cygwin and try out [the Cygwin port of my command line block list utilities](https://github.com/bongochong/CombinedPrivacyBlockLists/tree/master/BLT/Cygwin).*  
<p align="left">
  <img src="https://i.imgur.com/YaMNcVc.png">
  <img src="https://i.imgur.com/qROhmY0.png">
</p>

Are you tired of ads and trackers affecting your web browsing and eating up bandwidth? Do you want to use file sharing applications in a safer way, with less risk of being snooped on? Do you want to take preemptive measures against spyware? Or, would you simply like to have an easier way of keeping your hosts file and torrent client block lists thorough and up-to-date on Windows? You've come to the right place if you answered yes to any of those questions.  
<p align="center"><img src="https://github.com/bongochong/CWP-Utilities/raw/master/Screenshots/systray-active.png" alt="Active SysTray"></p>

Combined Windows Privacy Utilities (or CWP Utilities) is a free and open source suite of integrated tools for Windows users, to help them guard their privacy and security. It does this through drastically simplifying the work of parsing and structuring data from a number of different trustworthy block lists, then combining them into single, usable files, and putting them in their proper locations. [A simple installer is provided](https://github.com/bongochong/CWP-Utilities/raw/master/Releases/CWP-Utilities-Stable-1.8.0.exe), to make everything easily accessible. The program can be installed anywhere on any device that runs Windows, along with USB drives, as all of the utilities dynamically recognize system paths. It creates no registry entries, cleans up after itself, and if one chooses to uninstall it, no files are left behind. Please consider [donating to the project](https://github.com/bongochong/CWP-Utilities/blob/master/DONATE.md) if you find it useful. It is also **highly recommended** to use the "Update Scripts" feature after installing, as this will ensure the utilities are in sync with the current versions present in this repository.

CWP Utilities automates the process of maintaining an up-to-date and comprehensive hosts file, in order to block a variety of trackers, advertisements, and malware, on a system-wide level. It also enables the average user to easily keep the block lists for their file sharing applications up-to-date and thorough, along with facilitating the easy utilization of a Proxy Auto-Configuration (or PAC) file, for ad and tracker-blocking on devices that are less configurable (e.g. non-rooted phones). Think of it as a more capable replacement for HostsMan, even though it's not as pretty. It can also fetch hosts lists from servers HostsMan cannot, thanks to an up-to-date build of wget for Windows.
![Main Interface](/Screenshots/screen05-new.png)

CWP Utilities currently provides a system tray-based interface and a simple, interactive command line interface, allowing the user to perform the aforementioned tasks hassle free. The hosts file updater automatically installs the resultant list in the correct system location and flushes the DNS cache for immediate use. Along with merging and sorting the data from [multiple block lists](/MoreInfo/DefaultHostsLists.md) out of the box, it also reduces the size of the hosts file via an optimization script, allowing for slower machines to utilize larger block lists. Obviously it de-duplicates the data as well, and has an option to create entries that will block malicious traffic over IPv6 too.

The file sharing block list updaters output [their lists](/MoreInfo/DefaultBitTorrentBlockLists.md) in a subdirectory of each tool's folder, which can be moved to another directory of the user's choosing thereafter. An explorer window appears upon completion of the block list update, revealing the location of the list. The [PAC updater](/MoreInfo/DefaultPACFileSources.md) does the same, but a template script is also included that allows for greater flexibility.

All the scripts which perform these routines are configurable directly in a text editor of one's choosing, or via the [simple yet capable text editor](https://liquidninja.com/metapad/sourcecode.html) shipped with CWP Utilities. More useful features are planned for the future, as is a more flexible GUI, but I thought I would start sharing fully functional releases with the public, in hopes that others will find my tools as useful and beneficial as I have.

This set of utilities is inspired by a lot of scripting work I have done over the years to automate repetitive tasks on my personal devices, and during my stints as a SysAdmin. It is built around significantly friendlier Windows versions of the scripts from my [Combined Privacy Block Lists repository](https://github.com/bongochong/CombinedPrivacyBlockLists/), which also contains some lists I maintain, and more software. If anyone would like to pitch in - especially in regard to crafting a more comprehensive GUI - I would be more than happy to work with you as time allows.

All of the scripts and underlying binaries have been tested on 32 and 64 bit versions of Windows 7, Windows 8.1, and Windows 10, though it should all work in Vista as well.

**TLDR:** This is a bunch of batch scripts I wrote, which I hacked together into an integrated utility. The scripts use Windows ports of GNU utilities and some other FOSS software, in order to aid in automating the process of updating and editing various files for blocking undesirable traffic on your computers and phones. It sports both a command line interface, and a simple system tray GUI.

***Notes***: It is strongly encouraged to use the installer, as it provides useful shortcuts which bring you directly to the main interface and each individual utility. If you prefer to run the program manually, you can run the `LauncherLauncher.bat` or `CWPU-Tray.exe` files, both of which are housed in the root folder of the install directory. Alternatively, you may run `WinUtilsMultiLauncher.bat` from the same location, as long as you do so with administrative privileges. Do not attempt to run CWP Utilities outside of using the the aforementioned methods, as it will not work as intended if you do.

Though one can also simply use pre-made block lists like the ones I provide in my other repo and many others, CWP Utilities cuts out the middle man, allowing you to generate and use your own lists, directly from the sources. I believe that the default configurations are far better than adequate for the vast majority of users, though if you have *any* experience with shell scripting, then modifying the scripts in CWP Utilities should be a relatively simple process (which is why options for doing so are included).

***Disclaimer***: It should also be noted that a small number of AV scanners report false-positive results for this suite of utilities. This is solely due to the administrative privileges necessary for CWP Utilities to function properly (specifically the hosts file tools). ClamAV and the vast majority of widely used AV engines report that CWP Utilities is clean software (which it undoubtedly is), and this has been confirmed by the fine folks at [**MajorGeeks**](https://www.majorgeeks.com/files/details/combined_windows_privacy_utilities.html), along with [**Softpedia**](https://www.softpedia.com/get/Internet/Secure-Browsing-VPN/Combined-Windows-Privacy-Utilities.shtml).  
<p align="center"><img src="https://github.com/bongochong/CWP-Utilities/raw/master/Screenshots/sp100clean.png" alt="Softpedia 100% Clean"></p>
  
***Addendum***: As of 7/28/2020, Windows Defender is reported to now block changes to the hosts file on some installations of Windows 8.1 and 10. This is a profoundly ridiculous move on the part of Microsoft. If you are affected by this issue, please simply add an exclusion rule for your hosts file (`%systemroot%\system32\drivers\etc\hosts`) to Defender. This affects users of HostsMan and other block list utilities too. See here: [for more info](https://old.reddit.com/r/windows/comments/i03dhg/windows_defender_started_quarantining_hosts_file/).
<p align="right">
  <img src="https://i.imgur.com/Zgo2UnG.png">
</p>
  
---

**More Screenshots**:  

![start menu entries](https://github.com/bongochong/CWP-Utilities/raw/master/Screenshots/Start-Menu.png)
![Main Program Icon](/Screenshots/Main-Icon.png)
![systray inactive](https://github.com/bongochong/CWP-Utilities/raw/master/Screenshots/systray-inactive.png)  
![Installer1](/Screenshots/screen01-new.png)  
![Installer2](/Screenshots/screen02-new.png)  
![StartingUp](/Screenshots/screen03-new.png)  
![WelcomeScreen](/Screenshots/screen04-new.png)
