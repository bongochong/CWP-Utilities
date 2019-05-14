The standard version is this one: https://github.com/bongochong/CWP-Utilities/raw/master/Releases/CWP-Utilities-Installer-RC-4.exe

The No-JRE version is this one: https://github.com/bongochong/CWP-Utilities/raw/master/Releases/CWP-Utilities-Installer-RC-4-NoJRE.exe

You still need to have Java installed on your machine to use the No-JRE version, as the hosts file utilities depend on a neat little java text-parsing class. To check if you have Java installed, open Command Prompt and enter 'java -version'. If it gives you info about Java, then you have it and can use the No-JRE version. If you do not have Java, then use the standard version, which includes the most compact version of the JRE currently possible. I am working on replacing the single Java component, but for now, this will have to do.
