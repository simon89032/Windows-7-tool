@echo off

echo Uninstalling KB3075249 (telemetry for Win7/8.1)
start /w wusa.exe /uninstall /kb:3075249  /norestart
echo Uninstalling KB3080149 (telemetry for Win7/8.1)
start /w wusa.exe /uninstall /kb:3080149  /norestart
:: KB3021917: The annoying windows that pop up telling you about how your hardware is not good for Windows 7 and other bs. "...In order to determine whether performance issues may be encountered when the latest Windows operating system is installed. Telemetry is sent back to Microsoft for those computers that participate in the Windows Customer Experience Improvement Program (CEIP). " 
echo Uninstalling KB3021917 (telemetry for Win7)
start /w wusa.exe /uninstall /kb:3021917  /norestart
echo Uninstalling KB3022345 (Update for customer experience and diagnostic telemetry)
start /w wusa.exe /uninstall /kb:3022345  /norestart
echo Uninstalling KB3068708  (telemetry "CEIP" on Win8.1/Server2012r2/Win7sp1/Server2008r2Sp1)
start /w wusa.exe /uninstall /kb:3068708  /norestart
echo Uninstalling KB3044374 (Get Windows 10 for Win8.1)
start /w wusa.exe /uninstall /kb:3044374  /norestart
echo Uninstalling KB3035583 (Get Windows 10 for Win7sp1/8.1)
start /w wusa.exe /uninstall /kb:3035583  /norestart
echo Uninstalling KB2990214 (Get Windows 10 for Win7)
start /w wusa.exe /uninstall /kb:2990214  /norestart
echo Uninstalling KB2952664 (Get Windows 10 assistant)
start /w wusa.exe /uninstall /kb:2952664  /norestart
echo Uninstalling KB3075853 (update for "Windows Update" on Win8.1/Server 2012R2)
start /w wusa.exe /uninstall /kb:3075853  /norestart
echo Uninstalling KB3065987 (update for "Windows Update" on Win7/Server 2008R2)
start /w wusa.exe /uninstall /kb:3065987  /norestart
echo Uninstalling KB3050265 (update for "Windows Update" on Win7)
start /w wusa.exe /uninstall /kb:3050265  /norestart
echo Uninstalling KB971033  (license validation)
start /w wusa.exe /uninstall /kb:971033  /norestart
echo Uninstalling KB2902907 (Microsoft Security Essentials; Compatibility update for upgrading)
start /w wusa.exe /uninstall /kb:2902907  /norestart
echo Uninstalling KB2976987 (Compatibility update for upgrading)
start /w wusa.exe /uninstall /kb:2976987  /norestart
echo Uninstalling KB2976978 (compactibility update for Windows 8.1)
start /w wusa.exe /uninstall /kb:2976978  /norestart
echo Uninstalling KB3102810 (update for "Windows Update") Fixes an issue regarding long wait while searching for Windows Updates but also has Windows 10 Upgrade preparation for Windows 7)
start /w wusa.exe /uninstall /kb:3102810  /norestart
echo Uninstalling KB3112343 (Windows Update Client for Windows 7)
start /w wusa.exe /uninstall /kb:3112343  /norestart
echo Uninstalling KB3135445 (Windows Update Client for Windows 7)
start /w wusa.exe /uninstall /kb:3135445  /norestart
echo Uninstalling KB3123862 (Windows Update Client for Windows 7)
start /w wusa.exe /uninstall /kb:3123862  /norestart
echo Uninstalling KB3081954 (Telemetry Update for Windows 7)
start /w wusa.exe /uninstall /kb:3081954  /norestart
echo Uninstalling KB3139929 (Get Windows 10 update for MSIE)
start /w wusa.exe /uninstall /kb:3139929  /norestart
echo Uninstalling KB3138612 (Windows Update Client for Windows 7)
start /w wusa.exe /uninstall /kb:3138612  /norestart
echo Uninstalling KB3138615 (Windows Update Client for Windows 8.1)
start /w wusa.exe /uninstall /kb:3138615  /norestart
echo Uninstalling KB3150513 (Compactibility Update (another GWX) for Windows 7/8.1)
start /w wusa.exe /uninstall /kb:3150513  /norestart
echo Uninstalling KB3133977 (buggy update // adds UEFI Secure Boot to Windows 7 computers and renders them unbootable)
start /w wusa.exe /uninstall /kb:3133977  /norestart
echo Uninstalling KB3139923 (Another GWX for Windows 7/8.1)
start /w wusa.exe /uninstall /kb:3139923  /norestart
echo Uninstalling KB3173040 (Another GWX for Windows 7/8.1)
start /w wusa.exe /uninstall /kb:3173040  /norestart


rem  KB2505438
rem  Slow performance in applications that use the DirectWrite API on a computer that is running Windows 7 or Windows Server 2008 R2
rem  https://support.microsoft.com/en-us/kb/2505438
rem  Although it claims to fix performance issues, it often breaks fonts
echo Uninstalling KB2505438
start /w wusa.exe /uninstall /kb:2505438  /norestart

rem  KB2670838
rem  Platform update for Windows 7 SP1 and Windows Server 2008 R2 SP1
rem  https://support.microsoft.com/en-us/kb/2670838
rem  Windows 7 Only (breaks AERO functionality and gives you blurry fonts on some websites)
rem  The EVIL Update, breaks AERO on Windows 7 and makes some fonts on websites fuzzy, Windows 7 specific update only, do not install IE10 or 11 otherwise it will be bundled with them, IE9 is the max version you should install
echo Uninstalling KB2670838
start /w wusa.exe /uninstall /kb:2670838  /norestart

rem  KB2977759
rem  Compatibility update for Windows 7 RTM
rem  This update performs diagnostics on the Windows systems that participate in the Windows Customer Experience Improvement Program. These diagnostics help determine whether compatibility issues may be encountered when the latest Windows operating system is installed. This update will help Microsoft and its partners ensure compatibility for customers who want to install the latest Windows operating system.
rem  https://support.microsoft.com/en-us/kb/2977759
rem  Windows 10 Upgrade preparation
echo Uninstalling KB2977759
start /w wusa.exe /uninstall /kb:2977759  /norestart

rem  KB971033
rem  Update for Windows Activation Technologies
rem  https://support.microsoft.com/en-us/kb/971033
echo Uninstalling KB971033
start /w wusa.exe /uninstall /kb:971033  /norestart
      
rem  KB2976987 (update for "updating" to Windows 10) Compatibility update for upgrading
echo Uninstalling KB2976987
start /w wusa.exe /uninstall /kb:2976987  /norestart

rem  KB3075851 (update for "Windows Update" on Win7/Server 2008R2 Aug.2015 replace KB 3065987)
echo Uninstalling KB3075851
start /w wusa.exe /uninstall /kb:3075851  /norestart

rem  KB3045999 - [**GK** : is present in a few telemetry lists. Is related to security bulletin MS15-038 (https://docs.microsoft.com/en-us/security-updates/SecurityBulletins/2015/ms15-038?redirectedfrom=MSDN). I really dont see how it is telemetry?? But, I'm uninstalling just in case. Seems like it's not really that important in the first place, so...]
echo Uninstalling KB3045999
start /w wusa.exe /uninstall /kb:3045999  /norestart

rem  KB2919355 (ie11 for Win8.1RT/8.1/Server2012r2 Apr.2015
echo Uninstalling KB2919355
start /w wusa.exe /uninstall /kb:2919355  /norestart

rem  KB3083324 (update for "Windows Update" on Win7sp1/Server 2008R2sp1 Sep.2015)
echo Uninstalling KB3083324
start /w wusa.exe /uninstall /kb:3083324  /norestart

rem  KB2882822 (telemetry "ITraceRelogger" to Embedded Standard7sp1/Win7sp1/Server2008r2Sp1)
echo Uninstalling KB2882822
start /w wusa.exe /uninstall /kb:2882822  /norestart

rem  KB3083325 (update for "Windows Update" on Win8.1/Server2012r2 Sep.2015)
echo Uninstalling KB3083325
start /w wusa.exe /uninstall /kb:3083325  /norestart

rem  KB3015249 (Adds telemetry points to consent.exe in Windows 7 & Windows 8)
echo Uninstalling KB3015249
start /w wusa.exe /uninstall /kb:3015249  /norestart

rem  KB3012973 (Force Trigger Download and Install of Windows 10)
echo Uninstalling KB3012973
start /w wusa.exe /uninstall /kb:3012973  /norestart

rem  KB2922324 [**GK** : Was pulled by Microsoft, including it in the removal list anyway just in case. Must've been pretty evil to have been pulled even by Microsoft c: A quick web search and this kb shows up on a lot of sites dedicated to exposing telemetry. Seems to have been related to Windows 10 updating]
echo Uninstalling KB2922324
start /w wusa.exe /uninstall /kb:2922324  /norestart

rem  KB3088195 (Miscorosft Claims it's a security update but also has a key logger on the Kernel Level) [**GK** : Also, I tried to search around the internet for the original attribution for the keylogger claim, but couldn't find any. Uninstalling anyway to be safe.]
echo Uninstalling KB3088195
start /w wusa.exe /uninstall /kb:3088195  /norestart

rem  KB3093983 (Microsoft claims it's a security update but it contains IE spying)
echo Uninstalling KB3093983
start /w wusa.exe /uninstall /kb:3093983  /norestart

rem  KB3093513 [**GK**: Seems to be in a couple other lists, other than that, just related to Security bulletin MS15-109. Uninstalling regardless]
echo Uninstalling KB3093513
start /w wusa.exe /uninstall /kb:3093513  /norestart

rem  KB3042058 (Microsoft claims its a security update but it contains Winlogon Spying)
echo Uninstalling KB3042058
start /w wusa.exe /uninstall /kb:3042058  /norestart

rem  KB3083710 (Update for the Windows Update client with sketchy details for Windows 7, see this thread http://www.infoworld.com/article/2989896/microsoft-windows/windows-snooping-and-nagging-patches-return-kb-3035583-kb-2952664.html or http://sensorstechforum.com/force-upgraded-to-windows-10-kb-3083710-and-kb-3083711-patches/)
echo Uninstalling KB3083710
start /w wusa.exe /uninstall /kb:3083710  /norestart

rem  KB3083711 Windows Update Client for Windows 8.1 and Windows Server 2012 R2: October 2015 - http://sensorstechforum.com/forums/windows-updates-18/kb-3083710-and-kb-3083711/
echo Uninstalling KB3083711
start /w wusa.exe /uninstall /kb:3083711  /norestart

rem  2506928 A link in an .html file that you open in Outlook does not work in Windows 7 or in Windows Server 2008 R2
echo Uninstalling KB2506928
start /w wusa.exe /uninstall /kb:2506928  /norestart

rem  2545698 Text in some core fonts appears blurred in Internet Explorer 9 on a computer that is running Windows Vista, Windows Server 2008, Windows 7, or Windows Server 2008 R2
echo Uninstalling KB2545698
start /w wusa.exe /uninstall /kb:2545698  /norestart

rem  2592687 Remote Desktop Protocol (RDP) 8.0 update for Windows 7 and Windows Server 2008 R2
echo Uninstalling KB2592687
start /w wusa.exe /uninstall /kb:2592687  /norestart

rem  2660075 You cannot change the time and date if the time zone is set to Samoa (UTC+13:00) and KB 2657025 is installed in Windows 7 or in Windows Server 2008 R2
echo Uninstalling KB2660075
start /w wusa.exe /uninstall /kb:2660075  /norestart

rem  2726535 An update is available that adds South Sudan to the list of countries in Windows Server 2008, Windows 7, and Windows Server 2008 R2
echo Uninstalling KB2726535
start /w wusa.exe /uninstall /kb:2726535  /norestart

rem  2876229 Skype for Microsoft Update
echo Uninstalling KB2876229
start /w wusa.exe /uninstall /kb:2876229  /norestart

rem  2970228 Russian Ruble symbol [**GK** Ah yes... 9.1MB to add a new currency symbol... Nice one Microsoft ;)]
echo Uninstalling KB2970228
start /w wusa.exe /uninstall /kb:2970228  /norestart

rem  2994023 RDP 8.1 client for Windows 7 or Windows Server 2008 R2 disconnects when it is connected through a RD gateway
echo Uninstalling KB2994023
start /w wusa.exe /uninstall /kb:2994023  /norestart

rem  3008188 November 2014 Windows Update client improvements in Windows 8.1 or Windows Server
echo Uninstalling KB3008188
start /w wusa.exe /uninstall /kb:3008188  /norestart

rem  3008273 update that enables Windows RT to update to Windows RT 8.1, and that enables Window 8 to update to Windows 8.1.
echo Uninstalling KB3008273
start /w wusa.exe /uninstall /kb:3008273  /norestart

rem  3014460 (Upgrade for windows insider preview / upgrade to windows 10)
echo Uninstalling KB3014460
start /w wusa.exe /uninstall /kb:3014460  /norestart

rem  3046480 Update helps to determine whether to migrate the .NET Framework 1.1 when you upgrade Windows 8.1 or Windows 7
echo Uninstalling KB3046480
start /w wusa.exe /uninstall /kb:3046480  /norestart

rem  3050267 Windows Update Client for Windows 8.1 and Windows Server 2012 R2: July 2015 /// (Windows 10 upgrade preparation but also adds the option in GPEDIT to disable Windows 10 upgrade altogether so you may want to actually install this) [**GK**: No, I do not. lol. Microsoft's ILLUSION OF CHOICE will not sway me]
echo Uninstalling KB3050267
start /w wusa.exe /uninstall /kb:3050267  /norestart

rem  3065988 Windows Update Client for Windows 8.1 and Windows Server 2012 R2: July 2015 - update allows Windows Update client to receive System Hardware Updates and System Firmware Updates from a future version of Windows Server Update Services (WSUS).
echo Uninstalling KB3065988
start /w wusa.exe /uninstall /kb:3065988  /norestart

rem  3068707 Customer experience telemetry point. W7,8,8.1
echo Uninstalling KB3068707
start /w wusa.exe /uninstall /kb:3068707  /norestart

rem  3072318 Update for Windows 8.1 OOBE to upgrade to Windows 10
echo Uninstalling KB3072318
start /w wusa.exe /uninstall /kb:3072318  /norestart

rem  3081452 Ensures smooth experience for updateing OS to future versions
echo Uninstalling KB3081452
start /w wusa.exe /uninstall /kb:3081452  /norestart

rem  3090045 Windows Update for reserved devices in Windows 8.1 or Windows 7 SP1
echo Uninstalling KB3090045
start /w wusa.exe /uninstall /kb:3090045  /norestart

rem  KB3064683 (Windows 10 Upgrade for Windows 8)
echo Uninstalling KB3064683
start /w wusa.exe /uninstall /kb:3064683  /norestart

rem  KB3074677 (Windows 10 Upgrade preparation)
echo Uninstalling KB3074677
start /w wusa.exe /uninstall /kb:3074677  /norestart

rem  KB3081437 (Windows 10 Upgrade preparation)
echo Uninstalling KB3081437
start /w wusa.exe /uninstall /kb:3081437  /norestart

rem  KB3081454 (Windows 10 Upgrade preparation)
echo Uninstalling KB3081454
start /w wusa.exe /uninstall /kb:3081454  /norestart

rem  KB3086255 (Flagged as an Important update. It disables SafeDisc games in Windows Vista, 7, and 8/8.1)
echo Uninstalling KB3086255
start /w wusa.exe /uninstall /kb:3086255  /norestart

rem  KB3102812 (Fixes an issue regarding long wait while searching for Windows Updates but also has Windows 10 Upgrade preparation for Windows 8)
echo Uninstalling KB3102812
start /w wusa.exe /uninstall /kb:3102812  /norestart

rem  KB3107998 (Removes Lenovo USB Blocker)
echo Uninstalling KB3107998
start /w wusa.exe /uninstall /kb:3107998  /norestart
 
rem  KB3112336 (Windows 10 Upgrade for Windows 8)
echo Uninstalling KB3112336
start /w wusa.exe /uninstall /kb:3112336  /norestart

rem  KB3125574 (Telemetry for Windows 7) //  Apr 2016 rollup with bad ones in it [**GK**: "Convenience Rollup". Yeah, convenient for Microsoft to scarf my data xD]
echo Uninstalling KB3125574
start /w wusa.exe /uninstall /kb:3125574  /norestart

rem  KB3135449 (Windows 10 Upgrade for Windows 8)
echo Uninstalling KB3135449
start /w wusa.exe /uninstall /kb:3135449  /norestart

rem  KB3146449 (Windows 10 Upgrade for Windows 7/8)
echo Uninstalling KB3146449
start /w wusa.exe /uninstall /kb:3146449  /norestart

rem  KB4012218 (Windows Update processor generation detection)
echo Uninstalling KB4012218
start /w wusa.exe /uninstall /kb:4012218  /norestart

rem  KB4012219 (Windows Update processor generation detection)
echo Uninstalling KB4012219
start /w wusa.exe /uninstall /kb:4012219  /norestart

rem  KB4015546 (Hardware check for CPU Platform for Windows 7)
echo Uninstalling KB4015546
start /w wusa.exe /uninstall /kb:4015546  /norestart

rem  KB2982791, Causes crashes, Recomended to uninstall from microsoft
echo Uninstalling KB2982791
start /w wusa.exe /uninstall /kb:2982791  /norestart

rem  KB3004394, faulty update
echo Uninstalling KB3004394
start /w wusa.exe /uninstall /kb:3004394  /norestart

rem  KB3018238, only applies to Windows Server 2008
echo Uninstalling KB3018238
start /w wusa.exe /uninstall /kb:3018238  /norestart

rem  KB3097877, Casuses crashes
echo Uninstalling KB3097877
start /w wusa.exe /uninstall /kb:3097877  /norestart

rem  KB3121255, crash during backup of PI Data server fails
echo Uninstalling KB3121255
start /w wusa.exe /uninstall /kb:3121255  /norestart

rem  KB3137061, Azure virtual machines network outage data corruption
echo Uninstalling KB3137061
start /w wusa.exe /uninstall /kb:3137061  /norestart

rem  KB3138901, No Internet multiple users log on Remote Desktop Services
echo Uninstalling KB3138901
start /w wusa.exe /uninstall /kb:3138901  /norestart

rem  KB3147071, Connection to Oracle database fails. Causes browser lockups?
echo Uninstalling KB3147071
start /w wusa.exe /uninstall /kb:3147071  /norestart

rem  KB3172605 July 2016 update rollup (re-released Sep 13 2016)
echo Uninstalling KB3172605
start /w wusa.exe /uninstall /kb:3172605  /norestart

rem  KB3179573 August 2016 Rollup [**GK**: Rollup my data and send it to the feds ye]
echo Uninstalling KB3179573
start /w wusa.exe /uninstall /kb:3179573  /norestart

rem  KB894199 hmm.. Description of Software Update Services and Windows Server Update Services changes in content for 2018
echo Uninstalling KB894199
start /w wusa.exe /uninstall /kb:894199  /norestart

rem  KB947821 System Update Readiness tool. This update can be useful in some situations: an update or SP1 might not install if a system file is damaged. The DISM or System Update Readiness tool may help to fix some Windows corruption errors
echo Uninstalling KB947821
start /w wusa.exe /uninstall /kb:947821  /norestart

rem  KB949810 Office Genuine Advantage Notification
echo Uninstalling KB949810
start /w wusa.exe /uninstall /kb:949810  /norestart

rem  KB2719857 Fix for USB RNDIS device to connect to a 3G or 4G network in Windows 7 fix for a computer that is running Windows 7
echo Uninstalling KB2719857
start /w wusa.exe /uninstall /kb:2719857  /norestart

rem  KB2732059 fix for cannot open an .oxps file in Windows 7
echo Uninstalling KB2732059
start /w wusa.exe /uninstall /kb:2732059  /norestart

rem  KB2830477 Remote Desktop Connection (RDC) 8.1 client update
echo Uninstalling KB2830477
start /w wusa.exe /uninstall /kb:2830477  /norestart

rem  KB2834140 Stop error "0x00000050" after you install update 2670838 on a computer that is running Windows 7 SP1
echo Uninstalling KB2834140
start /w wusa.exe /uninstall /kb:2834140  /norestart

rem   KB2840149 security update for the Windows file system kernel-mode driver (ntfs.sys) Some have had some boot problems with it.
echo Uninstalling KB2840149
start /w wusa.exe /uninstall /kb:2840149  /norestart

rem  KB2923545 RDP Remote desktop protocol 
echo Uninstalling KB2923545
start /w wusa.exe /uninstall /kb:2923545  /norestart

rem  KB2938066 An update to harden Windows Server Update Services that further improves the security of Windows Server Update Services (WSUS) and the Windows Update Agent (WUA) (Fishy info)
echo Uninstalling KB2938066
start /w wusa.exe /uninstall /kb:2938066  /norestart

rem  KB2966583–Improvements for the System Update Readiness Tool in Windows 7
echo Uninstalling KB2966583
start /w wusa.exe /uninstall /kb:2966583  /norestart

rem  KB2976897 Recomended to uninstall from microsoft
echo Uninstalling KB2976897
start /w wusa.exe /uninstall /kb:2976897  /norestart

rem  KB2978092 Graphics software or applications crash
echo Uninstalling KB2978092
start /w wusa.exe /uninstall /kb:2978092  /norestart

rem  KB2999226 win10 universal CRT
echo Uninstalling KB2999226
start /w wusa.exe /uninstall /kb:2999226  /norestart

rem  KB3006137 Update changes the currency symbol of Lithuania from the Lithuanian litas (Lt) to the euro (ˆ) in Windows
echo Uninstalling KB3006137
start /w wusa.exe /uninstall /kb:3006137  /norestart

rem  KB3013531 Some says win10 ralated MS says to support copying .mkv files to Windows Phone from a computer that is running Windows
echo Uninstalling KB3013531
start /w wusa.exe /uninstall /kb:3013531  /norestart

rem  KB3014406 Some says fishy MS says: fix for Startup delay occurs after you disable IPv6 in Windows
echo Uninstalling KB3014406
start /w wusa.exe /uninstall /kb:3014406  /norestart

rem  KB3029606 Telemetry?? Update to improve Bluetooth driver diagnosis in Windows 8.1
echo Uninstalling KB3029606
start /w wusa.exe /uninstall /kb:3029606  /norestart

rem  KB3032359 IE update that can mess some..
echo Uninstalling KB3032359
start /w wusa.exe /uninstall /kb:3032359  /norestart

rem  KB3038314 messing with set default search provider..
echo Uninstalling KB3038314
start /w wusa.exe /uninstall /kb:3038314  /norestart

rem  KB3040272 fix.. Start time increases after another language pack is added to Windows.. very little info.
echo Uninstalling KB3040272
start /w wusa.exe /uninstall /kb:3040272  /norestart

rem  KB3045645 Some says win10 related. MS says: Update to force a UAC prompt when a customized .sdb file is created in Windows. little info.
echo Uninstalling KB3045645
start /w wusa.exe /uninstall /kb:3045645  /norestart

rem  KB3048043 Some had problems with corrupted files when installed. MS Says: fix for Screen flickers or becomes blank when you drag tiles on the Start screen in Windows
echo Uninstalling KB3048043
start /w wusa.exe /uninstall /kb:3048043  /norestart

rem  KB3054476 A little bit fishy, no real info and many avoid it. MS says:This update helps Microsoft improve the experiences when users run stream.sys driver-based applications in Windows 7 Service Pack 1 (SP1)
echo Uninstalling KB3054476
start /w wusa.exe /uninstall /kb:3054476  /norestart

rem  KB3077715 Some says bad and win10 related MS says: August 2015 cumulative time zone update for Windows operating systems
echo Uninstalling KB3077715
start /w wusa.exe /uninstall /kb:3077715  /norestart

rem  KB3078667 Some says bad and win10 related. MS says: fix for System malfunction because memory leak occurs in dwm.exe in Windows 7
echo Uninstalling KB3078667
start /w wusa.exe /uninstall /kb:3078667  /norestart

rem  KB3080079 Some have said bad win10/telemetry.. MS says: Update to add RDS support for TLS 1.1 and TLS 1.2 in Windows 7
echo Uninstalling KB3080079
start /w wusa.exe /uninstall /kb:3080079  /norestart

rem  KB3080351 Win10 related
echo Uninstalling KB3080351
start /w wusa.exe /uninstall /kb:3080351  /norestart

rem  KB3083225 Some says Telemetry. No info avalible on MS
echo Uninstalling KB3083225
start /w wusa.exe /uninstall /kb:3083225  /norestart

rem  KB3095649 Some says win10 related MS says: Fixes a crash in Win32k.sys in Windows 7 SP1
echo Uninstalling KB3095649
start /w wusa.exe /uninstall /kb:3095649  /norestart

rem  KB3097966 Some says Telemetry and win10 related.. MS says:Microsoft security advisory: Inadvertently disclosed digital certificates could allow spoofing: October 13, 2015
echo Uninstalling KB3097966
start /w wusa.exe /uninstall /kb:3097966  /norestart

rem  KB3102429 Update that supports Azerbaijani Manat and Georgian Lari currency symbols in Windows
echo Uninstalling KB3102429
start /w wusa.exe /uninstall /kb:3102429  /norestart

rem  KB3106614 Security update for Silverlight to address remote code execution: December 8, 2015
echo Uninstalling KB3106614
start /w wusa.exe /uninstall /kb:3106614  /norestart

rem  KB3114409 May cause Outlook 2010 to crash
echo Uninstalling KB3114409
start /w wusa.exe /uninstall /kb:3114409  /norestart

rem  KB3118401 Update Universal C Runtime (CRT) Windows 10 universal CRT
echo Uninstalling KB3118401
start /w wusa.exe /uninstall /kb:3118401  /norestart

rem  KB3124263 Cumulative security update for Windows 10
echo Uninstalling KB3124263
start /w wusa.exe /uninstall /kb:3124263  /norestart

rem  KB3141092 Installed itself on LH computer 3/3/16 even though not selected, reportedly piggybacks on Security Update KB3134814 if IE11 is installed
echo Uninstalling KB3141092
start /w wusa.exe /uninstall /kb:3141092  /norestart

rem  KB3143736 After you install security update 3093983, Oracle Siebel CRM crashes in the Mshtml.dll file and returns code "c0000602" in Internet Explorer.
echo Uninstalling KB3143736
start /w wusa.exe /uninstall /kb:3143736  /norestart

rem  KB3146706 - Security update for Windows OLE. Not needed. Break pirate copies of Windows 7.
echo Uninstalling KB3146706
start /w wusa.exe /uninstall /kb:3146706  /norestart

rem  KB3148198 important but worrying - Cumulative update for IE11. Includes previous Windows 10 preparation.
echo Uninstalling KB3148198
start /w wusa.exe /uninstall /kb:3148198  /norestart

rem  KB3154996 After you install security update 3100773, you discover that you can't type Korean characters correctly by using the Korean Hangul input method editor (IME) in Internet Explorer 11.
echo Uninstalling KB3154996
start /w wusa.exe /uninstall /kb:3154996  /norestart

rem  KB3156417 -May 2016 non security update rollup for Windows 7 SP1
echo Uninstalling KB3156417
start /w wusa.exe /uninstall /kb:3156417  /norestart

rem  KB3159706 is intended to sync and distribute Windows 10 upgrades
echo Uninstalling KB3159706
start /w wusa.exe /uninstall /kb:3159706  /norestart

rem  KB3161102 Removes Windows Journal component.
echo Uninstalling KB3161102
start /w wusa.exe /uninstall /kb:3161102  /norestart

rem  KB3161608 - June 2016 Update Rollup for Windows 7 SP1 (Includes Windows Update Client for Windows 7: June 2016) contains some telemetry.
echo Uninstalling KB3161608
start /w wusa.exe /uninstall /kb:3161608  /norestart

rem  KB3167679 MS-says: Description of the security update for Windows authentication methods: August 9, 2016.. But,KB3167679 breaks password changing on Win7 joined in NT style domain (samba 3.6.23)(This info found on Microsoft TechNet)
echo Uninstalling KB3167679
start /w wusa.exe /uninstall /kb:3167679  /norestart

rem  KB3170735 Is on many block lists. Says Win 10 related. MS says:July 2016 Update for Windows Journal... No real info about what it is in it.
echo Uninstalling KB3170735
start /w wusa.exe /uninstall /kb:3170735  /norestart

rem  KB3184143 Remove software related to the Windows 10 free upgrade offer.
echo Uninstalling KB3184143
start /w wusa.exe /uninstall /kb:3184143  /norestart

rem   KB3161647 Windows Update Client for Windows 7 and Windows Server 2008 R2: June 2016
echo Uninstalling KB3161647
start /w wusa.exe /uninstall /kb:3161647  /norestart

rem   KB3185278 September qality rollup The September 2016 update rollup includes some new improvements and fixes for the Windows 7 Service Pack 1 (SP1)
echo Uninstalling KB3185278
start /w wusa.exe /uninstall /kb:3185278  /norestart

rem   2018-02 Preview of Monthly Rollup - KB4075211
echo Uninstalling KB4075211
start /w wusa.exe /uninstall /kb:4075211  /norestart

rem    2018-02 Monthly Rollup - KB4074598 Unknown if it has spectre/meltdown patch
echo Uninstalling KB4075211
start /w wusa.exe /uninstall /kb:4075211  /norestart
