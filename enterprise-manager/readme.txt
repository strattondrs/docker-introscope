APM10.7.0-HF03

[Deployment Instructions]

IMPORTANT NOTES:
***************

1. This fix is for server side patches only, no install/deployment to agents. If 
   you already have received 10.7.0 hotfixes for agent side from support, these 
   will not be included in this patch. 

2. If you have any pre-10.7.0 version installed you cannot use this script, use
   the 10.7.0 product installer to upgrade.

3. If you have 10.7.0 GA version (10.7.0.45) or higher installed , use this script 
   to apply "10.7.0-HF03". Please note that APM10.7.0HF03.jar is not 
   intended to perform an upgrade of the complete product, it only replaces 
   the affected jars. The rest of the product files remain intact at the original 
   release number. This process is simple and should take a few minutes only.

4. For the list of fixes in this Hotfix, refer to the below [Fixed Issues] 
   section 

HOW TO RUN THE HOTFIX SCRIPT:
****************************
1. This hotfix script updates the following product components: Enterprise Manager, WebView, 
   Workstation  

2. Stop:
   -Enterprise Manager (MOM/collector)
   -WebView
   -Workstation
    
   NOTE: individual components that are installed together can be also patched 
   in one go, for example, EM, Webview and APMSQLSERVER

3. Copy APM10.7.0HF03.jar  to the HOME directory of the product components you would like 
   to apply the hotfix. For example, if WebView is installed separately, run the hotfix script from
   that WebView HOME directory.

4. Execute
   If windows: jre\bin\java -jar APM10.7.0HF03.jar 
   If unix:    jre/bin/java -jar APM10.7.0HF03.jar 

   NOTE: Make sure to run the script using the appropriate user credentials.
    
5. Verify the results:  

   >> Hotfix 10.7.0-HF03 was applied successfully. 
   
   If the HF script fails for some reason with the below message, 
   the script will automatically rollback the changes. Open a support case and attach the 
   hotfix.log file.
    
   >> Hotfix 10.7.0-HF03 was rolled back successfully    
    
6. Start:
   Enterprise Manager (MOM/collector)
   WebView
   Workstation
   
The following KB article answers few questions related to hotfix installation -
https://support.ca.com/us/knowledge-base-articles.TEC1876984.html
    
HOW TO UNINSTALL THE HOTFIX:
***************************
The script doesn't provide with an option to automatically uninstall the HOTFIX.
If for some reason, you need to uninstall it, you should proceed as below:

1. Stop:
   -Enterprise Manager (MOM/collector)
   -WebView
   -Workstation

2. The original files are available under "hotfix/10.7.0-HF03" folder. All the 
   files are organized accordingly to the product directory structure.
   Copy the files manually to the original location.

   NOTE: Make sure to use the appropriate user credentials.

3. Start:
   Enterprise Manager (MOM/collector)
   WebView
   Workstation
   
If a blank page is displayed after uninstalling the hotfix, then please follow the steps mentioned in the following KB article -
https://support.ca.com/us/knowledge-base-articles.TEC1833695.html


[Fixed Issues]

DE354184 - ETC 10.7 Metric View OTB all domains are expanded (updated fix)
DE354191 - ETC 10.7 Map View 0 filter when components exceed 50,000 locks out
DE354319 - Clamping on map nodes should not take into account nodes on different layers
DE354399 - Landing page metric cache memory usage optimization
DE354011 - Scrolling in metric browser tree is not usable (updated fix)
DE344873 - Layer dropdown over info text in map
DE354433 - 00994559 - Dashboard calls longer than 30s
DE355442 - Topology explosion due attribute flipping (agentDisconnectTime, remoteAddress, localAddress, remotePort, remoteName)
DE355234 - Performance bottleneck in public API vertex REST call
DE341654 - APM 10.5.2 HF#32 - 00937760 - Cannot see APIM Gateway EPAgents Correlation in Transaction Trace & Team Center Map
DE348470 - FLD: Constant Full GC on ETC after 12 days
DE347813 - Team Center freezing on Open an Analysis Notebook
DE348526 - Swarm level metrics in Wily: are missing often
DE346723 - Error in AGC logs - java.lang.IndexOutOfBoundsException
DE352876 - Attributes are sent twice (lowered) in REST response
DE352438 - Added the upgrade of universes from 10.5 format to 10.7 (added missing layer property)

[Known Issue]
DE358455 - ETC auto refreshes and logs login logout events in webview log , it was reproducible in a case when multiple instances running on same machine.


