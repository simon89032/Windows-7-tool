@echo off
REM -------------------------THIS SCRIPT RUN EVERYTHING-------------------------

:checksystem
cls
echo.
echo Checking operating system...
ping 127.0.0.1 -n 2 > nul
net session >nul 2>&1
setlocal
for /f "tokens=4-5 delims=. " %%i in ('ver') do set VERSION=%%i.%%j
if "%version%" == "6.1" (
	cls
	color 4f
	echo %version% is compatible
	goto admin
) else (
	cls
	color 4f
	echo.
	echo ERROR: %name% is not compatible with this operating system.
	timeout /t -1
	exit
)
endlocal
:admin
echo.

REM -------------------------CHANGE PERMISSIONS-------------------------
echo Checking permissions...
ping 127.0.0.1 -n 2 > nul
fltmc >nul 2>&1 || (
	cls
	color 4f
	echo.
	echo ERROR: %name% needs elevated privileges in order to make changes to your system.
	timeout /t -1
	exit
)

del /f "%WinDir%\system32\drivers\etc\hosts"
REM Change homedrive directory to your clear hosts file
copy /v "%HOMEDRIVE%\Users\simo\Documents\test\files" "%WinDir%\system32\drivers\etc\hosts"

echo CREATING A SYSTEM RESTORE POINT...
echo ===========================================
echo.
echo Please make sure System Restore is On.
echo System Properties ^> System Protection ^> Configure...
echo.
wmic.exe /Namespace:\\root\default Path SystemRestore Call CreateRestorePoint "Win7Repair", 100, 7

REM -------------------------BLOCK TRACKING-------------------------

echo BLOCK TRACKING

set ver=0.1
fltmc >nul 2>&1 || (
	echo Set UAC = CreateObject^("Shell.Application"^) > "%temp%\GetAdmin.vbs"
	echo UAC.ShellExecute "%~fs0", "", "", "runas", 1 >> "%temp%\GetAdmin.vbs"
	cmd /u /c type "%temp%\GetAdmin.vbs">"%temp%\GetAdminUnicode.vbs"
    cscript //nologo "%temp%\GetAdminUnicode.vbs"
    del /f /q "%temp%\GetAdmin.vbs" >nul 2>&1
    del /f /q "%temp%\GetAdminUnicode.vbs" >nul 2>&1
    exit
)

REM -------------------------CLEAR HOSTS FILE-------------------------
echo HOST FILES 
SET hosts=%windir%\system32\drivers\etc\hosts
attrib -r %hosts%
echo. >>%hosts%
FOR %%A IN (

 vortex.data.microsoft.com
 vortex-win.data.microsoft.com
 telecommand.telemetry.microsoft.com
 telecommand.telemetry.microsoft.com.nsatc.net
 oca.telemetry.microsoft.com
 oca.telemetry.microsoft.com.nsatc.net
 sqm.telemetry.microsoft.com
 sqm.telemetry.microsoft.com.nsatc.net
 watson.telemetry.microsoft.com
 watson.telemetry.microsoft.com.nsatc.net
 redir.metaservices.microsoft.com
 choice.microsoft.com
 choice.microsoft.com.nsatc.net
 df.telemetry.microsoft.com
 reports.wes.df.telemetry.microsoft.com
 wes.df.telemetry.microsoft.com
 services.wes.df.telemetry.microsoft.com
 sqm.df.telemetry.microsoft.com
 telemetry.microsoft.com
 watson.ppe.telemetry.microsoft.com
 telemetry.appex.bing.net
 telemetry.urs.microsoft.com
 telemetry.appex.bing.net:443
 settings-sandbox.data.microsoft.com
 vortex-sandbox.data.microsoft.com
 survey.watson.microsoft.com
 watson.live.com
 watson.microsoft.com
 statsfe2.ws.microsoft.com
 corpext.msitadfs.glbdns2.microsoft.com
 compatexchange.cloudapp.net
 cs1.wpc.v0cdn.net
 a-0001.a-msedge.net
 statsfe2.update.microsoft.com.akadns.net
 sls.update.microsoft.com.akadns.net
 fe2.update.microsoft.com.akadns.net
 65.55.108.23
 65.39.117.230
 23.218.212.69
 104.41.219.140
 134.170.30.202
 137.116.81.24
 diagnostics.support.microsoft.com
 corp.sts.microsoft.com
 statsfe1.ws.microsoft.com
 pre.footprintpredict.com
 204.79.197.200
 i1.services.social.microsoft.com
 i1.services.social.microsoft.com.nsatc.net
 feedback.windows.com
 feedback.microsoft-hohm.com
 feedback.search.microsoft.com
 s0.2mdn.net
 view.atdmt.com
 2.22.61.43
 2.22.61.66
 157.56.106.189
 65.52.108.33
 64.4.54.254
 onesettings-bn2.metron.live.com.nsatc.net
 onesettings-cy2.metron.live.com.nsatc.net
 onesettings-db5.metron.live.com.nsatc.net
 onesettings-hk2.metron.live.com.nsatc.net
 settings.data.glbdns2.microsoft.com
 telecommand.telemetry.microsoft.com.nsat­c.net
 v10.vortex-win.data.microsoft.com
 v10.vortex-win.data.metron.live.com.nsatc.net
 vortex.data.glbdns2.microsoft.com
 vortex.data.metron.live.com.nsatc.net
 vortex-bn2.metron.live.com.nsatc.net
 vortex-cy2.metron.live.com.nsatc.net
 vortex-db5.metron.live.com.nsatc.net
 vortex-hk2.metron.live.com.nsatc.net
 vortex-win.data.metron.live.com.nsatc.net
 a-0001.dc-msedge.net
 a-0002.a-msedge.net
 a-0003.a-msedge.net
 a-0003.dc-msedge.net
 a-0004.a-msedge.net
 a-0005.a-msedge.net
 a-0006.a-msedge.net
 a-0007.a-msedge.net
 a-0008.a-msedge.net
 a-0009.a-msedge.net
 a-0010.a-msedge.net
 a-0011.a-msedge.net
 a-0012.a-msedge.net
 a-msedge.net
 a.ads1.msn.com
 a.ads2.msads.net
 a.ads2.msn.com
 a.rad.msn.com
 ac3.msn.com
 activity.windows.com
 adnexus.net
 adnxs.com
 adl.windows.com
 ads.msn.com
 ads1.msads.net
 ads1.msn.com
 aidps.atdmt.com
 aka-cdn-ns.adtech.de
 array101-prod.do.dsp.mp.microsoft.com
 array102-prod.do.dsp.mp.microsoft.com
 array103-prod.do.dsp.mp.microsoft.com
 array104-prod.do.dsp.mp.microsoft.com
 array201-prod.do.dsp.mp.microsoft.com
 array202-prod.do.dsp.mp.microsoft.com
 array203-prod.do.dsp.mp.microsoft.com
 array204-prod.do.dsp.mp.microsoft.com
 array401-prod.do.dsp.mp.microsoft.com
 array402-prod.do.dsp.mp.microsoft.com
 array403-prod.do.dsp.mp.microsoft.com
 array404-prod.do.dsp.mp.microsoft.com
 array405-prod.do.dsp.mp.microsoft.com
 array406-prod.do.dsp.mp.microsoft.com
 array407-prod.do.dsp.mp.microsoft.com
 array408-prod.do.dsp.mp.microsoft.com
 b.ads1.msn.com
 b.ads2.msads.net
 b.rad.msn.com
 bingads.microsoft.com
 bl3301-a.1drv.com
 bl3301-c.1drv.com
 bl3301-g.1drv.com
 bn2b-cor001.api.p001.1drv.com
 bn2b-cor002.api.p001.1drv.com
 bn2b-cor003.api.p001.1drv.com
 bn2b-cor004.api.p001.1drv.com
 bn2wns1.wns.windows.com
 bn3p-cor001.api.p001.1drv.com
 bn3sch020010558.wns.windows.com
 bn3sch020010560.wns.windows.com
 bn3sch020010618.wns.windows.com
 bn3sch020010629.wns.windows.com
 bn3sch020010631.wns.windows.com
 bn3sch020010635.wns.windows.com
 bn3sch020010636.wns.windows.com
 bn3sch020010650.wns.windows.com
 bn3sch020011727.wns.windows.com
 bn3sch020012850.wns.windows.com
 bn3sch020020322.wns.windows.com
 bn3sch020020749.wns.windows.com
 bn3sch020022328.wns.windows.com
 bn3sch020022335.wns.windows.com
 bn3sch020022361.wns.windows.com
 bn4sch101120814.wns.windows.com
 bn4sch101120818.wns.windows.com
 bn4sch101120911.wns.windows.com
 bn4sch101120913.wns.windows.com
 bn4sch101121019.wns.windows.com
 bn4sch101121109.wns.windows.com
 bn4sch101121118.wns.windows.com
 bn4sch101121223.wns.windows.com
 bn4sch101121407.wns.windows.com
 bn4sch101121618.wns.windows.com
 bn4sch101121704.wns.windows.com
 bn4sch101121709.wns.windows.com
 bn4sch101121714.wns.windows.com
 bn4sch101121908.wns.windows.com
 bn4sch101122117.wns.windows.com
 bn4sch101122310.wns.windows.com
 bn4sch101122312.wns.windows.com
 bn4sch101122421.wns.windows.com
 bn4sch101123108.wns.windows.com
 bn4sch101123110.wns.windows.com
 bn4sch101123202.wns.windows.com
 bn4sch102110124.wns.windows.com
 bs.serving-sys.com
 by3301-a.1drv.com
 by3301-c.1drv.com
 by3301-e.1drv.com
 c-0001.dc-msedge.net
 c.atdmt.com
 c.msn.com
 cache.datamart.windows.com
 cdn.atdmt.com
 cds10.stn.llnw.net
 cds1203.lon.llnw.net
 cds1204.lon.llnw.net
 cds1209.lon.llnw.net
 cds1219.lon.llnw.net
 cds1228.lon.llnw.net
 cds1244.lon.llnw.net
 cds1257.lon.llnw.net
 cds1265.lon.llnw.net
 cds1269.lon.llnw.net
 cds1273.lon.llnw.net
 cds1285.lon.llnw.net
 cds1287.lon.llnw.net
 cds1289.lon.llnw.net
 cds1293.lon.llnw.net
 cds1307.lon.llnw.net
 cds1310.lon.llnw.net
 cds1325.lon.llnw.net
 cds1327.lon.llnw.net
 cds177.dus.llnw.net
 cds20005.stn.llnw.net
 cds20404.lcy.llnw.net
 cds20411.lcy.llnw.net
 cds20415.lcy.llnw.net
 cds20416.lcy.llnw.net
 cds20417.lcy.llnw.net
 cds20424.lcy.llnw.net
 cds20425.lcy.llnw.net
 cds20431.lcy.llnw.net
 cds20435.lcy.llnw.net
 cds20440.lcy.llnw.net
 cds20443.lcy.llnw.net
 cds20445.lcy.llnw.net
 cds20450.lcy.llnw.net
 cds20452.lcy.llnw.net
 cds20457.lcy.llnw.net
 cds20461.lcy.llnw.net
 cds20469.lcy.llnw.net
 cds20475.lcy.llnw.net
 cds20482.lcy.llnw.net
 cds20485.lcy.llnw.net
 cds20495.lcy.llnw.net
 cds21205.lon.llnw.net
 cds21207.lon.llnw.net
 cds21225.lon.llnw.net
 cds21229.lon.llnw.net
 cds21233.lon.llnw.net
 cds21238.lon.llnw.net
 cds21244.lon.llnw.net
 cds21249.lon.llnw.net
 cds21256.lon.llnw.net
 cds21257.lon.llnw.net
 cds21258.lon.llnw.net
 cds21261.lon.llnw.net
 cds21267.lon.llnw.net
 cds21278.lon.llnw.net
 cds21281.lon.llnw.net
 cds21293.lon.llnw.net
 cds21309.lon.llnw.net
 cds21313.lon.llnw.net
 cds21321.lon.llnw.net
 cds299.lcy.llnw.net
 cds308.lcy.llnw.net
 cds30027.stn.llnw.net
 cds310.lcy.llnw.net
 cds38.ory.llnw.net
 cds54.ory.llnw.net
 cds405.lcy.llnw.net
 cds406.lcy.llnw.net
 cds407.fra.llnw.net
 cds416.lcy.llnw.net
 cds421.lcy.llnw.net
 cds422.lcy.llnw.net
 cds425.lcy.llnw.net
 cds426.lcy.llnw.net
 cds447.lcy.llnw.net
 cds458.lcy.llnw.net
 cds459.lcy.llnw.net
 cds461.lcy.llnw.net
 cds468.lcy.llnw.net
 cds469.lcy.llnw.net
 cds471.lcy.llnw.net
 cds483.lcy.llnw.net
 cds484.lcy.llnw.net
 cds489.lcy.llnw.net
 cds493.lcy.llnw.net
 cds494.lcy.llnw.net
 cds812.lon.llnw.net
 cds815.lon.llnw.net
 cds818.lon.llnw.net
 cds832.lon.llnw.net
 cds836.lon.llnw.net
 cds840.lon.llnw.net
 cds843.lon.llnw.net
 cds857.lon.llnw.net
 cds868.lon.llnw.net
 cds869.lon.llnw.net
 ch1-cor001.api.p001.1drv.com
 ch1-cor002.api.p001.1drv.com
 ch3301-c.1drv.com
 ch3301-e.1drv.com
 ch3301-g.1drv.com
 ch3302-c.1drv.com
 ch3302-e.1drv.com
 compatexchange1.trafficmanager.net
 continuum.dds.microsoft.com
 cy2.settings.data.microsoft.com.akadns.net
 db5.settings.data.microsoft.com.akadns.net
 dev.virtualearth.net
 ec.atdmt.com
 ecn.dev.virtualearth.net
 eu.vortex.data.microsoft.com
 flex.msn.com
 fs.microsoft.com
 g.msn.com
 geo.settings.data.microsoft.com.akadns.net
 geo-prod.do.dsp.mp.microsoft.com
 geover-prod.do.dsp.mp.microsoft.com
 h1.msn.com
 h2.msn.com
 hk2.wns.windows.com
 hk2sch130020721.wns.windows.com
 hk2sch130020723.wns.windows.com
 hk2sch130020726.wns.windows.com
 hk2sch130020729.wns.windows.com
 hk2sch130020732.wns.windows.com
 hk2sch130020824.wns.windows.com
 hk2sch130020843.wns.windows.com
 hk2sch130020851.wns.windows.com
 hk2sch130020854.wns.windows.com
 hk2sch130020855.wns.windows.com
 hk2sch130020924.wns.windows.com
 hk2sch130020936.wns.windows.com
 hk2sch130020940.wns.windows.com
 hk2sch130020956.wns.windows.com
 hk2sch130020958.wns.windows.com
 hk2sch130020961.wns.windows.com
 hk2sch130021017.wns.windows.com
 hk2sch130021029.wns.windows.com
 hk2sch130021035.wns.windows.com
 hk2sch130021137.wns.windows.com
 hk2sch130021142.wns.windows.com
 hk2sch130021153.wns.windows.com
 hk2sch130021217.wns.windows.com
 hk2sch130021246.wns.windows.com
 hk2sch130021249.wns.windows.com
 hk2sch130021260.wns.windows.com
 hk2sch130021264.wns.windows.com
 hk2sch130021322.wns.windows.com
 hk2sch130021323.wns.windows.com
 hk2sch130021329.wns.windows.com
 hk2sch130021334.wns.windows.com
 hk2sch130021360.wns.windows.com
 hk2sch130021432.wns.windows.com
 hk2sch130021433.wns.windows.com
 hk2sch130021435.wns.windows.com
 hk2sch130021437.wns.windows.com
 hk2sch130021440.wns.windows.com
 hk2sch130021450.wns.windows.com
 hk2sch130021518.wns.windows.com
 hk2sch130021523.wns.windows.com
 hk2sch130021526.wns.windows.com
 hk2sch130021527.wns.windows.com
 hk2sch130021544.wns.windows.com
 hk2sch130021554.wns.windows.com
 hk2sch130021618.wns.windows.com
 hk2sch130021634.wns.windows.com
 hk2sch130021638.wns.windows.com
 hk2sch130021646.wns.windows.com
 hk2sch130021652.wns.windows.com
 hk2sch130021654.wns.windows.com
 hk2sch130021657.wns.windows.com
 hk2sch130021723.wns.windows.com
 hk2sch130021726.wns.windows.com
 hk2sch130021727.wns.windows.com
 hk2sch130021730.wns.windows.com
 hk2sch130021731.wns.windows.com
 hk2sch130021754.wns.windows.com
 hk2sch130021829.wns.windows.com
 hk2sch130021830.wns.windows.com
 hk2sch130021833.wns.windows.com
 hk2sch130021840.wns.windows.com
 hk2sch130021842.wns.windows.com
 hk2sch130021851.wns.windows.com
 hk2sch130021852.wns.windows.com
 hk2sch130021927.wns.windows.com
 hk2sch130021928.wns.windows.com
 hk2sch130021929.wns.windows.com
 hk2sch130021958.wns.windows.com
 hk2sch130022035.wns.windows.com
 hk2sch130022041.wns.windows.com
 hk2sch130022049.wns.windows.com
 hk2sch130022135.wns.windows.com
 hk2wns1.wns.windows.com
 hk2wns1b.wns.windows.com
 i-bl6p-cor001.api.p001.1drv.com
 i-bl6p-cor002.api.p001.1drv.com
 i-bn3p-cor001.api.p001.1drv.com
 i-by3p-cor001.api.p001.1drv.com
 i-by3p-cor002.api.p001.1drv.com
 i-ch1-cor001.api.p001.1drv.com
 i-ch1-cor002.api.p001.1drv.com
 i-sn2-cor001.api.p001.1drv.com
 i-sn2-cor002.api.p001.1drv.com
 inference.location.live.net
 lb1.www.ms.akadns.net
 live.rads.msn.com
 m.adnxs.com
 mobile.pipe.aria.microsoft.com
 msedge.net
 msntest.serving-sys.com
 nexus.officeapps.live.com
 nexusrules.officeapps.live.com
 preview.msn.com
 rad.live.com
 rad.msn.com
 schemas.microsoft.akadns.net
 secure.adnxs.com
 secure.flashtalking.com
 settings-win-ppe.data.microsoft.com
 settings-win.data.microsoft.com
 settings.data.microsoft.com
 sn3301-c.1drv.com
 sn3301-e.1drv.com
 sn3301-g.1drv.com
 share.microsoft.com
 maps.windows.com
 spynet2.microsoft.com
 spynetalt.microsoft.com
 spyneteurope.microsoft.akadns.net
 ssw.live.com
 storecatalogrevocation.storequality.microsoft.com
 t0.ssl.ak.dynamic.tiles.virtualearth.net
 t0.ssl.ak.tiles.virtualearth.net
 tele.trafficmanager.net
 teredo.ipv6.microsoft.com
 test.activity.windows.com
 tsfe.trafficshaping.dsp.mp.microsoft.com
 version.hybrid.api.here.com
 web.vortex.data.microsoft.com
 win10.ipv6.microsoft.com
 win1710.ipv6.microsoft.com
 win8.ipv6.microsoft.com
 www.msedge.net
 alpha.telemetry.microsoft.com
 apac1.notify.windows.com.akadns.net
 api.cortana.ai
 asimov-win.settings.data.microsoft.com.akadns.net
 browser.events.data.microsoft.com
 browser.pipe.aria.microsoft.com
 cy2.vortex.data.microsoft.com.akadns.net
 db5.settings-win.data.microsoft.com.akadns.net
 db5.vortex.data.microsoft.com.akadns.net
 db5-eap.settings-win.data.microsoft.com.akadns.net
 eu.vortex-win.data.microsoft.com
 eu-v10.events.data.microsoft.com
 eu-v20.events.data.microsoft.com
 events.data.microsoft.com
 geo.settings-win.data.microsoft.com.akadns.net
 geo.vortex.data.microsoft.com.akadns.net
 hk2.settings.data.microsoft.com.akadns.net
 i-sn3p-cor001.api.p001.1drv.com
 ieonlinews.microsoft.com
 ieonlinews.trafficmanager.net
 mobile.events.data.microsoft.com
 modern.watson.data.microsoft.com.akadns.net
 onecollector.cloudapp.aria.akadns.net
 self.events.data.microsoft.com
 sg2p.wns.windows.com
 telemetry.remoteapp.windowsazure.com
 umwatsonc.events.data.microsoft.com
 us-v10.events.data.microsoft.com
 us-v20.events.data.microsoft.com
 us.vortex-win.data.microsoft.com
 v10.events.data.microsoft.com
 v10c.events.data.microsoft.com
 v20.events.data.microsoft.com
 v10-win.vortex.data.microsoft.com.akadns.net
 v20.vortex-win.data.microsoft.com
 vortex-win-sandbox.data.microsoft.com

) DO (
 echo 0.0.0.0 %%A >>%hosts%
)
attrib +r %hosts%
echo Successfully added entries

@echo off
cd C:\Windows\System32\drivers\etc
start .

echo DELETING TELEMETRY TASKS...
echo ===========================================
schtasks /delete /tn "\Microsoft\Windows\Application Experience\AitAgent" /f
schtasks /delete /tn "\Microsoft\Windows\Application Experience\Microsoft Compatibility Appraiser" /f
schtasks /delete /tn "\Microsoft\Windows\Application Experience\ProgramDataUpdater" /f
schtasks /delete /tn "\Microsoft\Windows\Autochk\Proxy" /f
schtasks /delete /tn "\Microsoft\Windows\Customer Experience Improvement Program\Consolidator" /f
schtasks /delete /tn "\Microsoft\Windows\Customer Experience Improvement Program\KernelCeipTask" /f
schtasks /delete /tn "\Microsoft\Windows\Customer Experience Improvement Program\UsbCeip" /f
schtasks /delete /tn "\Microsoft\Windows\DiskDiagnostic\Microsoft-Windows-DiskDiagnosticDataCollector" /f
schtasks /delete /tn "\Microsoft\Windows\Maintenance\WinSAT" /f
schtasks /delete /tn "\Microsoft\Windows\CloudExperienceHost\CreateObjectTask" /f
schtasks /delete /tn "\Microsoft\Windows\NetTrace\GatherNetworkInfo" /f
schtasks /delete /tn "\Microsoft\Windows\Shell\FamilySafetyMonitor" /f
schtasks /delete /tn "\Microsoft\Windows\Shell\FamilySafetyRefresh" /f
schtasks /delete /tn "\Microsoft\Windows\IME\SQM data sender" /f
schtasks /delete /tn "\Microsoft\Windows\Setup\EOSNotify" /f
schtasks /delete /tn "\Microsoft\Windows\Setup\EOSNotify2" /f
takeown /f "C:\Windows\System32\EOSNotify.exe"
icacls "C:\Windows\System32\EOSNotify.exe" /grant administrators:F
icacls "C:\Windows\System32\EOSNotify.exe" /inheritance:r /deny SYSTEM:F /grant Administrators:F
del /f "C:\Windows\System32\EOSNotify.exe"
if /I "%userchoice%" == "A" (
	timeout /t 5
) else (
	timeout /t -1
)

echo Uninstalling KB3075249 (telemetry for Win7/8.1)
start /w wusa.exe /uninstall /kb:3075249  /norestart
echo Uninstalling KB3080149 (telemetry for Win7/8.1)
start /w wusa.exe /uninstall /kb:3080149  /norestart
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

echo Uninstalling KB2505438
start /w wusa.exe /uninstall /kb:2505438  /norestart

echo Uninstalling KB2670838
start /w wusa.exe /uninstall /kb:2670838  /norestart

echo Uninstalling KB2977759
start /w wusa.exe /uninstall /kb:2977759  /norestart

echo Uninstalling KB971033
start /w wusa.exe /uninstall /kb:971033  /norestart
      
echo Uninstalling KB2976987
start /w wusa.exe /uninstall /kb:2976987  /norestart

echo Uninstalling KB3075851
start /w wusa.exe /uninstall /kb:3075851  /norestart

echo Uninstalling KB3045999
start /w wusa.exe /uninstall /kb:3045999  /norestart

echo Uninstalling KB2919355
start /w wusa.exe /uninstall /kb:2919355  /norestart

echo Uninstalling KB3083324
start /w wusa.exe /uninstall /kb:3083324  /norestart

echo Uninstalling KB2882822
start /w wusa.exe /uninstall /kb:2882822  /norestart

echo Uninstalling KB3083325
start /w wusa.exe /uninstall /kb:3083325  /norestart

echo Uninstalling KB3015249
start /w wusa.exe /uninstall /kb:3015249  /norestart

echo Uninstalling KB3012973
start /w wusa.exe /uninstall /kb:3012973  /norestart

echo Uninstalling KB2922324
start /w wusa.exe /uninstall /kb:2922324  /norestart

echo Uninstalling KB3088195
start /w wusa.exe /uninstall /kb:3088195  /norestart

echo Uninstalling KB3093983
start /w wusa.exe /uninstall /kb:3093983  /norestart

echo Uninstalling KB3093513
start /w wusa.exe /uninstall /kb:3093513  /norestart

echo Uninstalling KB3042058
start /w wusa.exe /uninstall /kb:3042058  /norestart

echo Uninstalling KB3083710
start /w wusa.exe /uninstall /kb:3083710  /norestart

echo Uninstalling KB3083711
start /w wusa.exe /uninstall /kb:3083711  /norestart

echo Uninstalling KB2506928
start /w wusa.exe /uninstall /kb:2506928  /norestart

echo Uninstalling KB2545698
start /w wusa.exe /uninstall /kb:2545698  /norestart

echo Uninstalling KB2592687
start /w wusa.exe /uninstall /kb:2592687  /norestart

echo Uninstalling KB2660075
start /w wusa.exe /uninstall /kb:2660075  /norestart

echo Uninstalling KB2726535
start /w wusa.exe /uninstall /kb:2726535  /norestart

echo Uninstalling KB2876229
start /w wusa.exe /uninstall /kb:2876229  /norestart

echo Uninstalling KB2970228
start /w wusa.exe /uninstall /kb:2970228  /norestart

echo Uninstalling KB2994023
start /w wusa.exe /uninstall /kb:2994023  /norestart

echo Uninstalling KB3008188
start /w wusa.exe /uninstall /kb:3008188  /norestart

echo Uninstalling KB3008273
start /w wusa.exe /uninstall /kb:3008273  /norestart

echo Uninstalling KB3014460
start /w wusa.exe /uninstall /kb:3014460  /norestart

echo Uninstalling KB3046480
start /w wusa.exe /uninstall /kb:3046480  /norestart

echo Uninstalling KB3050267
start /w wusa.exe /uninstall /kb:3050267  /norestart

echo Uninstalling KB3065988
start /w wusa.exe /uninstall /kb:3065988  /norestart

echo Uninstalling KB3068707
start /w wusa.exe /uninstall /kb:3068707  /norestart

echo Uninstalling KB3072318
start /w wusa.exe /uninstall /kb:3072318  /norestart

echo Uninstalling KB3081452
start /w wusa.exe /uninstall /kb:3081452  /norestart

echo Uninstalling KB3090045
start /w wusa.exe /uninstall /kb:3090045  /norestart

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

pause