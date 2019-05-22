**Explanation of Advanced Options in CWP Utilities**
---
If you are looking for the standard help file, please go here: https://github.com/bongochong/CWP-Utilities/blob/master/Help.md If you are not, then please continue reading.

You might not realize it yet, but the editor functions in the main interface are there for a good reason. Each utility is configurable to a large degree. For instance, the hosts file updaters can be modified to utilize more lists, or less lists, or any lists you like. The PAC file updater is also modifiable in a similar fashion (though unlike the hosts updaters, it only eats plain lists of domains). Even the torrent client block list utilities can have their lists added to, subtracted from, or changed, though I won't get into that, as I don't even know of any other block-lists you can subscribe to. We'll just cover the PAC and hosts file updaters for now.

1. Changing the block lists in the hosts file updaters is simple. When you choose the option to edit either one's configuration from the main interface, a text editor will pop up. Within each updater you will notice a series of lines which are prefixed with "wget". The first line is as follows:  
`wget -nv -O processing/hosts/hosts.1 "http://winhelp2002.mvps.org/hosts.txt"`

	The last line is as follows:  
`wget -nv -O processing/hosts/hosts.8 "https://raw.githubusercontent.com/bongochong/CombinedPrivacyBlockLists/master/NoFormatting/Device9domains-IPv4.txt"`

	There are lines in-between these, and if you're paying attention, you will notice that they are links to popular hosts file block lists, with each one followed by the file-name it will be saved as, in a numbered sequence. You can delete any of these, let's call them *subscriptions*, or add any that you like. Let's say you would like to add Dan Pollock's hosts file to the subscriptions. You would just put the following line below the last "wget" line in the updater file:  
`wget -nv -O processing/hosts/hosts.9 "https://someonewhocares.org/hosts/zero/hosts"`

	And so on, and so on. Anything you add will be sorted, de-duplicated and merged with the rest. I'm sure you get the picture. In-case you don't, the format is this:  
`wget -nv -O processing/hosts/hosts.# "https://a-link-to-another.hosts.file"`  

	It should also be noted that you can modify the hosts file updater to *not* replace your system's hosts file. This can be done by removing the following lines from each updater:  
`copy /Y HOSTS %SystemDrive%\Windows\System32\Drivers\etc\HOSTS`  
`ipconfig /flushdns`  

	If you do this, then you can simply paste the updater's list into your current hosts file. The optimized list will be called "HOSTS", and the line-by-line list will be called "final-hosts.txt", both residing in the `cwpumain\bin\processing\hosts\processed` directory of the install folder.
  
2. Changing the block lists for the PAC file updater is similarly easy. If you choose the option to edit its configuration from the main interface, you will notice more lines prefixed with "wget". The format is almost identical, except in this case, the number precedes the file extension (".pac").

	The format is as follows:  
`wget -nv -O processing/pac/#.pac "https://a-link-to-another-list-of.bad.domains"`  

	Simply add whatever subscriptions you like, or delete whichever you don't. Note that this updater can only handle simple lists of domains. You can look at the content of the lists already there to get a better idea of how these differ from hosts files. I intentionally designed it to be a little simpler, though if I decide to make it more capable, you'll see it in the changelog of CWP Utilities. 

That's all for now. Jahbless!
