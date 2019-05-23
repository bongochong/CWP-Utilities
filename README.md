# [Combined Windows Privacy Utilities](https://github.com/bongochong/CWP-Utilities/raw/master/Releases/CWP-Utilities-Stable-1.7.1.exe) 
Are you tired of ads and trackers affecting your web browsing? Do you want to use file sharing applications in a safer way, with less risk of being snooped on? Do you want to take preemptive measures against spyware? Or, would you simply like to have an easier way of keeping your hosts file and torrent client block lists thorough and up-to-date on Windows? Look no further.  
<p align="center"><img src="https://github.com/bongochong/CWP-Utilities/raw/master/Screenshots/systray-active.png" alt="Active SysTray"></p>

Combined Windows Privacy Utilities (or CWP Utilities) is a suite of free and open source tools for Windows users, to help them guard their privacy and security. It does this through drastically simplifying the work of retrieving, parsing, and structuring data from a number of different trustworthy block lists, then combining them into single, usable files, and putting them in their proper places. [A simple installer is provided (just click this link to download it)](https://github.com/bongochong/CWP-Utilities/raw/master/Releases/CWP-Utilities-Stable-1.7.1.exe), and strongly encouraged to be used. The program can be installed anywhere on any device that runs Windows, along with USB drives, as all of the utilities dynamically recognize proper system paths. It creates no registry entries, cleans up after itself, and if one chooses to uninstall it, no files are left behind.

CWP Utilities automates the process of maintaining an up-to-date and comprehensive hosts file, in order to block a variety of trackers, advertisements, and malware, on a system-wide level. It also enables the average user to easily keep the block lists for their file sharing applications up-to-date and thorough, along with facilitating the easy utilization of a Proxy Auto-Configuration (or PAC) file, for ad and tracker-blocking on devices that are less configurable (e.g. non-rooted phones).
![Main Interface](/Screenshots/screen05-new.png)

CWP Utilities currently provides a system tray-based interface and a simple, interactive command line interface, allowing the user to perform the aforementioned tasks hassle free. The hosts file updater automatically installs the resultant list in the proper system location and flushes the DNS cache for immediate use. Along with merging and sorting the data from [multiple block lists](/MoreInfo/DefaultHostsLists.md) out of the box, it also reduces the size of the hosts file via an optimization script, allowing for slower machines to utilize larger block lists. Obviously it de-duplicates the data as well, and has an option to create entries that will block malicious traffic over IPv6 too.

The file sharing block list updaters output [their lists](/MoreInfo/DefaultBitTorrentBlockLists.md) in a subdirectory of each tool's folder, which can simply be moved to another directory of the user's choosing thereafter, or left in place. An explorer window appears upon completion of the block list update, revealing the location of the list. The [PAC updater](/MoreInfo/DefaultPACFileSources.md) does the same, but a template script is also included that allows for greater flexibility.

All the scripts which perform these routines are configurable directly in a text editor of one's choosing, or via the [simple yet capable text editor](https://liquidninja.com/metapad/sourcecode.html) bundled with CWP Utilities.  
![Built-In Editor](/Screenshots/screen06-newer.png)
More useful features are planned for the future, as is a more flexible GUI, but I thought I would start sharing fully functional releases with the public, in hopes that others will find my tools as useful and beneficial as I have.

This set of utilities is inspired by a lot of scripting work I have done over the years to automate repetitive tasks on my personal devices, and during my stints as a SysAdmin. It is built around significantly friendlier and improved Windows versions of the scripts from my [Combined Privacy Block Lists repository](https://github.com/bongochong/CombinedPrivacyBlockLists/), which also contains some lists I maintain, and more software. If anyone would like to pitch in - especially in regard to crafting a more comprehensive GUI - I would be more than happy to work with you as time allows.

All of the scripts and underlying binaries have been tested on 32 and 64 bit versions of both Windows 7, and Windows 10, though it's pretty much guaranteed to work on 8 and Vista as well.

***Notes***: It is strongly encouraged to use the installer, as it provides useful shortcuts which bring you directly to the main interface and each individual utility. If you prefer to run the program manually, you can run the `LauncherLauncher.bat` or `CWPU-Tray.exe` files, both of which are housed in the root folder of the install directory. Do not attempt to run CWP Utilities outside of using the the aforementioned methods, as it will not work as intended if you do.

Though one can also simply use pre-made block lists like the ones I provide in my other repo and many others, CWP Utilities cuts out the middle man, allowing you to generate and use your own lists, directly from the sources. I believe that the default configurations are far better than adequate for the vast majority of users, though if you have *any* experience with shell scripting, then modifying the scripts in CWP Utilities should be a relatively simple process (which is why options for doing so are included).

Lastly, someone questioned my inclusion of external software in the program. I'd like to address that with the following: 1. That is the nature of this type of shell scripting on Windows. There's no way around it, except by using a completely different language and style of development, which would unfortunately defeat the purposes of this being human readable and readily configurable. 2. Further, to ensure that my software works on every Windows machine, I include the dependencies, because it is easier for the user than hunting them down and installing them one-by-one themselves. 3. The external components that my tools rely on all have their source code accessible online in full, and are from widely respected FOSS projects detailed in the [readme file](https://raw.githubusercontent.com/bongochong/CWP-Utilities/master/Source/README.txt) of the [source directory](https://github.com/bongochong/CWP-Utilities/tree/master/Source) in this repo. That's all there is to it. I'm not going to re-write the GNU core utilities for Windows when other people have done a great job of it already.

---

More Screenshots:  
![start menu entries](https://github.com/bongochong/CWP-Utilities/raw/master/Screenshots/Start-Menu.png)
![Main Program Icon](/Screenshots/Main-Icon.png)
![systray inactive](https://github.com/bongochong/CWP-Utilities/raw/master/Screenshots/systray-inactive.png)  
![Installer1](/Screenshots/screen01-new.png)  
![Installer2](/Screenshots/screen02-new.png)  
![StartingUp](/Screenshots/screen03-new.png)  
![WelcomeScreen](/Screenshots/screen04-new.png)
