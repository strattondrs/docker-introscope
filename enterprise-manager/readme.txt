CA Application Performance Management 10.7 Service Pack (SP) 3

APM10.7.0.197SP3

Important Notes:
***************
This service pack is for server-side patches only, not install/deployment to agents. 
If you have already received 10.7.0 hotfixes for agent side from support, they 
will not be included in this patch.

If you have any pre-10.7.0 version installed, you cannot use this script. Use
the 10.7.0 product installer to upgrade.

If you have 10.7.0 GA version (10.7.0.45) or higher installed, use this script 
to apply "10.7.0.197SP3". Please note that APM10.7.0.197SP3.jar is not 
intended to perform an upgrade of the complete product, it only replaces 
the affected jars. The rest of the product files remain intact at the original 
release number. This process is simple and should take only a few minutes.

This service pack does not include the agent hotfix 10.7.0-HF13.

For the list of fixes in this service pack, refer to the Fixed Issues
section below. For the list of features, refer to the New Features section.

If the PostgreSQL database is not installed along with the EM, you must execute 
the patch from the PostgreSQL Install directory. The pgAdmin 4 folder is deleted 
from the PostgreSQL installation or upgrade due to security vulnerabilities. 
Therefore, it is no longer accessible as part of PostgreSQL installation. If you require 
pgAdmin to view the PostgreSQL data, you can download supported pgAdmin from the pgAdmin 
website: https://www.pgadmin.org/download/.

This service pack includes Amazon Web Services, Azure, and Cloud Foundry Infrastructure 
Agent extensions. To deploy the extensions, download the Infrastructure Agent from 
CA APM Support. We also now include the extensions with APM Command Center.


New Features:
************
This service pack includes the following new and updated features.

Important! For access to new agent features (AWS, Azure, and Cloud Foundry), download 
the agent bundle from APM Command Center (ACC).

-  APM Cluster Upgrade through APM Command Center - CA APM Command Center offers 
   the capability of automatically upgrading your Clusters. The capability is available 
   for early adoption. 
   Note: To access this capability and upgrade your clusters, open a support ticket 
   to obtain the new Command Center Bundle. For more information, contact CA Support.

-  Audit Logging Supports Rollover Strategy - The audit.log file now supports 
   a rollover strategy based on time. 

-  Rest API Rate Requires a Minimum Allowed Interval - The audit.log file requires 
   a minimum allowed interval between REST API calls. If the interval is less than 
   the configured value, a warning is generated in the audit log and the REST call is rejected.

-  New Infrastructure Agent Monitoring Extensions
  a) Amazon Web Services Monitoring - CA APM Amazon Web Services (AWS) Monitoring allows 
     enterprises running applications on Amazon to identify and resolve performance issues. 
     AWS Monitoring integrates performance metrics into CA APM for Intelligent analytics, 
     alerting, and visibility on a single dashboard. You must install the CA APM Infrastructure 
     Agent to install the AWS Monitoring.

  b) Azure Monitoring - CA APM Azure Monitoring allows enterprises running Azure 
     applications to identify and resolve performance issues. The Azure Monitor integrates 
     performance metrics into CA APM for Intelligent analytics, alerting, and visibility 
     on a single dashboard. You must install the CA APM Infrastructure Agent to install 
     Azure Monitoring.

  c) Cloud Foundry Monitoring - CA APM Cloud Foundry Monitoring allows enterprises 
     that run applications on Cloud Foundry to identify and resolve performance issues. 
     Cloud Foundry Monitoring integrates performance metrics into CA APM for 
     Intelligent analytics, alerting, and visibility on a single dashboard. You 
     must install the CA APM Infrastructure Agent to install Cloud Foundry Monitoring.

-  Defining Universes - Create a new universe in the universes section in Team Center. 
   You can now define the map layer and apply filters for the universe without opening the map.

-  Domain Universes - Large environments with multiple users require the use of 
   domains and universes. Administrators can now synchronize universes in Team Center 
   with domain information. Team Center automatically creates universes for the domains 
   and synchronizes the domain information across universes. These read-only universes 
   are called domain universes and are visible in the list of universes. Simply edit 
   the domains.xml file and wait for the changes to appear in Team Center. You can also configure 
   the filters for domain universes separately and exclude individual domains from the synchronization.

-  Grafana APM Integration - Use Grafana to create customized views of your APM data. Grafana 
   lets you send RegEx queries to the APMSQL database over a JDBC connection. The query results 
   are then sent to Grafana in a stream of JSON files, which are compiled into dashboards.

-  Cross-layer Propagation - The Propagator in Experience View now collects and propagates 
   attributes from all map layers. For example, you can organize experiences (experience nodes) 
   into cards using docker and host attributes from the Infrastructure Layer.

-  Out-of-the-box (OOTB) Perspectives - The Application Infrastructure Overview and Infrastructure 
   Overview are OOTB map perspectives that visualize application and infrastructure components for 
   the technology stacks and hosting services in your application environment.  For example, if 
   your application environment uses Docker containers, select the Application Infrastructure 
   Overview perspective on the Application Layer to see the associated Docker containers, hosts, 
   and server instances. Use the Infrastructure Overview on the Infrastructure Layer to see all 
   Docker containers from the same host, together with the relevant server instances, hosts, 
   and deployed applications.

-  APM Command Center Modifies Bundle Properties Without Redeploying the Entire Bundle - 
   When possible, APM Command Center modifies bundle properties without redeploying the whole bundle. 
   Otherwise, APM Command Center deploys the whole bundle.

-  New Languages - CA APM supports five new languages: French, German, Spanish, Italian, 
   and Brazilian Portuguese.


Configuration Changes:
*********************
In <EM_HOME>/config/IntroscopeEnterpriseManager.properties :
- A new property is added: introscope.enterprisemanager.alerts.maxPeriods=2000
  The Maximum number of observed periods for alerts. The default value is 2000 (which is 
  equivalent to 8 hours and 20 minutes).
- A new property is added: introscope.apmserver.domainuniverses.enable=false
  This property configures Domain Universe Synchronization. The default value is true. 
  Set the value to false to disable synchronization and delete Domain Universes.
- New properties are added: introscope.apmserver.domainuniverses.followtransactionpath=false
  and introscope.apmserver.domainuniverses.includestartpoint=false
  These properties set default filter attributes for Domain Universes. The default values
  are false.
- A new property is added: introscope.apmserver.domainuniverses.customname={0} domain
  This property specifies the name of the Domain Universe where {0} is replaced by the 
  domain name. The default value is '{0} domain'.
- A new property is added: log4j.additivity.Manager.JavaScriptCalculator=false
  This property fixes duplicate messages for the JavaScriptCalculator logger.
- New properties are added: log4j.additivity.Manager.AppMap.Alert-Mapping=false
                            log4j.additivity.Manager.AppMap.UVB-Mapping=false
  These properties fix duplicate messages for the AppMap.Alert-Mapping and the
  AppMap.UVB-Mapping loggers.

In <EM_HOME>/config/telemetry.json :
- Three new metrics are added to the telemetry.json configuration file: Smartstor Duration, 
  GC Duration, and Edge Count.

In <EM_HOME>/ext/xmltv directory :
- The typeviewer files btstats.typeviewers.xml and customerexperience.typeviewers.xml are 
  now localized in de/es/fr/it/pt-BR.

In <EM_HOME>/config/APMSqlServer.properties :
- A new property is added: com.ca.apm.sqlserver.buffer.directory=
  If the directory where the APMSQL temporary buffer will be written is empty or invalid, 
  the buffer data will redirect to the temp directory.
  Eg. Windows : C://APM/buffer/ and Linux : /root/APM/buffer/ 

In <EM_HOME>/config/modules/APMInfrastructureMM.jar :
- The Cloudfoundry metric expression for the metric grouping "Agents - MemInUsePercent" is modified to 
"Cloudfoundry\|Orgs\|[^|]*\|Spaces\|[^|]*\|Application\|[^|]*\|[^|]*:Memory Usage Percentage".
- The Cloudfoundry metric expression for the metric grouping "Agents - DiskInUsePercent" is modified to 
"Cloudfoundry\|Orgs\|[^|]*\|Spaces\|[^|]*\|Application\|[^|]*\|[^|]*:Disk Usage Percentage".

In <EM_HOME>/config/modules/DefaultMM.jar :
- The AWS metric expression for the metric grouping "CPU Utilization" is modified to 
"AWS\\|Region\\|[^|]*\\|EC2_INSTANCES\\|[^|]*:CPUUtilization".
- The Cloudfoundry metric expression for the metric grouping "CPU Utilization" is modified to 
"Cloudfoundry\|Orgs\|[^|]*\|Spaces\|[^|]*\|Application\|[^|]*\|[^|]*:CPU Percentage".
- The AWS metric expression for the metric grouping "Docker Status Value" is removed.
- The new Alert "AWS Status Value" is added. This alert is triggered when the AWS instances 
  are not in Running state.
- Two metric expressions for the metric grouping "CPU Utilization" are added:
"[^|]*\|[^|]*\|[^|]*\|[^|]*\|[^|]*:CPU % \(rounded\)" and
"[^|]*\|[^|]*\|[^|]*\|[^|]*\|[^|]*\|[^|]*:CPU % \(rounded\)"
- Two metric expressions for the metric grouping "Docker Status Value" are added:
"[^|]*\|[^|]*\|[^|]*\|[^|]*\|[^|]*:Status Value" and
"[^|]*\|[^|]*\|[^|]*\|[^|]*\|[^|]*\|[^|]*:Status Value"
- Two metric expressions for the metric grouping "Memory Utilization" are added:
"[^|]*\|[^|]*\|[^|]*\|[^|]*\|[^|]*:Memory % \(rounded\)" and
"[^|]*\|[^|]*\|[^|]*\|[^|]*\|[^|]*\|[^|]*:Memory % \(rounded\)"
- Four metric expressions for the metric grouping "Network - Errors" are added:
"[^|]*\|[^|]*\|[^|]*\|[^|]*\|[^|]*\|[^|]*:Errors Received",
"[^|]*\|[^|]*\|[^|]*\|[^|]*\|[^|]*\|[^|]*:Errors Sent",
"[^|]*\|[^|]*\|[^|]*\|[^|]*\|[^|]*:Errors Received" and
"[^|]*\|[^|]*\|[^|]*\|[^|]*\|[^|]*:Errors Sent"
- The default dashboard "Welcome to APM Dashboards" supports 5 new languages: fr, de, es, it, pt_br.


How To Run The Hotfix Script:
****************************
1. This hotfix script updates the following product components: Enterprise Manager, 
   WebView, Workstation, CommandCenter Server, PostgreSQL database, and APMSQL Server.

2. Stop:
   -Enterprise Manager (MOM/collector)
   -WebView
   -Workstation
   -CommandCenter Server
   -APMSQL Server
   -PostgreSQL
    
   Note: Individual components that are installed together can also be patched 
   in one go. For example, EM, Webview, and APMSQL Server.

3. Copy APM10.7.0.197SP3.jar to the HOME directory of the product components of which you would like 
   to apply the hotfix. For example, if WebView is installed separately, run the hotfix script from
   that WebView HOME directory.

4. Execute:
   For Windows: jre\bin\java -jar APM10.7.0.197SP3.jar
   For Unix:    jre/bin/java -jar APM10.7.0.197SP3.jar

   Notes: Make sure to run the script using the appropriate user credentials.
          Since the PostgreSQL directory does not contain a JRE, if the Database patch is being applied 
          by copying the hotfix jar in the PostgreSQL install directory, then you must invoke 
          the jar using a supported java present in the machine.
   	
5. Verify the results:  

   >> Hotfix 10.7.0-HF14 was applied successfully
   
   If the HF script fails for some reason with the below message, 
   the script will automatically rollback the changes. Open a support case and attach the 
   hotfix.log file.
    
   >> Hotfix 10.7.0-HF14 was rolled back successfully
    
6. Start:
   -Enterprise Manager (MOM/collector)
   -WebView
   -Workstation
   -CommandCenter Server
   -APMSQL Server
   -PostgreSQL
   
The following KB article answers a few questions related to hotfix installation:
https://support.ca.com/us/knowledge-base-articles.TEC1876984.html.


How To Uninstall The Hotfix:
***************************
The script does not provide an option to automatically uninstall the Hotfix.
If for some reason you need to uninstall it, proceed as below:

1. Stop:
   -Enterprise Manager (MOM/collector)
   -WebView
   -Workstation
   -CommandCenter Server
   -APMSQL Server
   -PostgreSQL

2. The original files are available under the "hotfix/10.7.0-HF14" folder. All the 
   files are organized according to the product directory structure.
   Copy the files manually to the original location.

   Note: Make sure to use the appropriate user credentials.

3. Start:
   -Enterprise Manager (MOM/collector)
   -WebView
   -Workstation
   -CommandCenter Server
   -APMSQL Server
   -PostgreSQL
   
If a blank page is displayed after uninstalling the Hotfix, follow the steps mentioned 
in the following KB article: https://support.ca.com/us/knowledge-base-articles.TEC1833695.html.


Fixed Issues:
************
DE377002 - 01145684-Dynamic Web Scan detected Insufficient Session Protection/Regeneration
DE369866 - 01073835-The matrix are on the collector, the MOM is not showing those matrix
DE369862 - 00973317-APM have slow response times when one Collector has network problems resolving other collector addresses
DE372792 - 01127855-ORA-24816: Expanded non LONG bind data supplied after actual LONG or LOB column - APM 10.7 SP1
DE379887 - 01127358-LDAP Authentication Causing Team Center Issues
DE358682 - 00998673-Defect aggregation failed to start (DE36249)
DE354178 - 00992985-ETC Metric View is missing all the agents in super domain
DE367758 - 01104827-Unable to get SAML authentication working for ACC through MOM IDP
DE361530 - 00994619-Open Source BlackDuck Vulnerabilities
DE375369 - Security vulnerabilities in commons-collections 3.2.1 (Apache-2.0)
DE369015 - Security vulnerabilities in org.springframework.webmvc.jar (CVE-2016-5007, CVE-2018-1258)
DE363244 - Security vulnerabilities in JFreeChart 1.0.8 (CVE-2007-6307, CVE-2007-6306)
DE363238 - Security vulnerabilities in Apache Commons HttpClient 3.1 (CVE-2014-3577, CVE-2015-5262)
DE363268 - Security vulnerabilities in Spring used in Shibboleth (2.5.6.SEC03 to 4.3.9)
DE329263 - Security vulnerabilities in hawk, jquery (CVE-2016-2515, CVE-2011-4969, CVE-2016-7103)
DE377959 - Security vulnerabilities in spring-tx-5.0.5.RELEASE.jar in APMSQLServer (CVE-2018-1258, 00986299)
DE344091 - IntroscopeAgent.profile, Extensions.profile & all pbds contain unresolved copyright symbol
DE360217 - Update APM Documentation For EM, Agents Web Servers TLS 1.2 Cipher Suites and installation steps
DE379784 - 01116203-RestApiException in AGCLandingController: INTERNAL_SERVER_ERROR (DE370457)
DE343658 - 00934982-DB install failure
DE366399 - Missing audit log record for provider de-registration
DE374276 - Add 10.7 version to Oracle schema drop
DE367860 - LIKE is not working correctly in SQL rest query API
DE366718 - 01096226-No cross jvm correlation on TeamCenter when backends are only Socket calls
DE378342 - 01155174-Team center is blank/APM backend communication errors
DE376529 - 01124331-speedup authorization to universes (for over 1000 universes)
DE380793 - 01167518-CDL 10.7 HF11 slow Smartstor queries after upgrade
DE362491 - Error in EM Log: Separate JVM for defect aggregation failed to start
DE376223 - Experience cards are loading forever when no tile-order is set in the database yet
DE367208 - Error in fldagc log - Failed to invoke @ExceptionHandler method
DE379025 - Error in fldagc log - [Manager.AT] Exception during event contextualization
DE375483 - Proxy insertion processor after BT cleaner processor to have not proxies as left mosts
DE367618 - Wrong map relayout after group expand/collapse
DE367241 - Business Transaction tab shows inconsistent place when click Experience and Map views
DE336008 - User doesn't get notification for importing corrupted JSON TT file
DE368551 - Vertical scroll bar is not present if agent list grows on Agents page
DE339330 - Performance optimization for cases there is a huge amount of tiles on the top view
DE371771 - Settings/Universes is very slow to load with many Universes
DE363965 - TTViewer: Missing tool tip for Maximize view in List View
DE369451 - TTViewer: OK button for invalid JSON file dialogue hides when pressing tab key to have focus
DE364356 - Nodes highlighted in the map for no apparent reason
DE340854 - Metric Browser enhancements
DE380387 - Filter dropdown layer is under Map Loading layer
DE338782 - When you export certain traces and re-import them, the breadcrumbs duration changes
DE370735 - Compound filters in Isolation View
DE374402 - Drill-down in experience view does not work when there is a '%' sign in the card name
DE374407 - Filter layout is broken when editing an experience card
DE364357 - Showing number of loaded metrics instead of number of requested metrics
DE362533 - Map view & Dash Board View infrastructure layer view not in sync
DE348071 - Package edit wizard writes an exception to the browser console
DE368986 - ACC: inconsistent cold/hot change identification on packages
DE377972 - Close and ? icons are overlapping on each other while creating Universe, also in same screen entered data cannot be saved
DE376142 - Java Agent not honoring the "Turn On all Agent components" option on Workstation, component remains shut off till we enable it specifically
DE379865 - Fix Homepage broken in FFv36 (Map with null constructor is only supported from Firefox version 37)
DE379185 - ATC Map page shows wrong agent information during loading balancing
DE381444 - Application Layer dropdown is not displayed in Map area of Notebook View
DE381720 - FLD-Exp View Tiles take 25-55 seconds for loading data when we select the time range of last one week (increase the clamp to see data)
US388079 - For bundle property change, ACC should modify only properties and shouldn't reinstall the entire bundle
US512941 - Foreign Attributes: allow cross-layer propagation
US500880 - LIKE_REGEX added to APM SQL grammar (APMSQLServer)
US498265 - Create a OOTB perspective for Docker containers in App Layer
US508120 - Domain universes enhancements

DE369797 - ACC: SAML EM internal IdP metadata not updated during upgrade (DE364038)
DE369015 - Security vulnerabilities in EM-org.springframework.webmvc.jar (CVE-2016-5007,CVE-2018-1258) - MEDIUM
DE378914 - 01155863-APM 10.7hf09 upgrade errors after ServiceNotFound (No Data in one of the cluster of FLD, DE379793)
DE369909 - 01114985-APM 10.7sp1 Universe and attributes and Experience Card not showing Docker Attributes
DE369904 - 01114908-APM 10.7sp1 ETC Universe too slow after upgrade 20+ when creating universal and more
US508086 - Metric Tree in Analysis Notebook --> WebView
DE368014 - 01106231-Invalid metric name kills team center
DE372076 - 01119088-Experience Cards in TeamCenter show "No traffic"
DE374652 - Security vulnerabilities in PostgreSQL-9.6.2: xmlsave.h & xslt.h ( CVE-2017-18258, CVE-2017-5130, CVE-2013-2877, CVE-2013-0339, CVE-2014-3660, CVE-2016-1683, CVE-2015-7995, CVE-2016-1684)
DE357957 - Security vulnerabilities in ACC-activemq-spring-5.14.0.jar (CVE-2017-15709-MEDIUM)
DE365679 - Security vulnerabilities in ACC-spring-security-web-4.1.4.RELEASE.jar & spring-websocket-4.3.11.RELEASE.jar (CVE-2018-1199,CVE-2017-15709-MEDIUM)
DE371965 - Security vulnerabilities in ACC-spring security OAuth v2.0.14 (CVE-2018-1260-HIGH) - RCE
DE355261 - 01111486,01122817-EXACT metric query is doing full scan when type is not specified
DE371144 - ATC Agent view-low resolution view (24 hour range) not uses the very last value for metric/GC count
DE365129 - ATC Agent view - Incorrect value under Metrics Collected
DE369851 - 01114508-ACC upgrade not working
DE355092 - 00997433-Garbled characters at Text Diff View 
DE361495 - 01073913-10.7 EM installer fails to add GC options for new EM install
DE361907 - 01073117-TeamCenter Loading delay on "esw.min.js"
DE366855 - Experience cards 2-phase loading
DE316022 - PostgreSQL security vulnerabilities: CVE-2014-3660, CVE-2013-2877, CVE-2013-0339, CVE-2016-1684, CVE-2015-7995, CVE-2016-1683
DE366386 - CVE-2018-1199 - spring-tx-5.0.2.RELEASE.jar reported against APMSqlServer using Black Duck
DE358281 - 00973317-APM have slow response times when one Collector has network problems resolving other collector addresses
DE370519 - 01106033-Metrics collected analysis, Team Center Vs Investigator 
DE368060 - 01106460-Domain to Universe on upgrade issues
DE370255 - Alerts.maxPeriods is 2000 by default
DE356674 - 00995003-JAR resources in JNLP file are not signed by the same certificate (Webstart Workstation issue)
DE358862 - 00978321-MoM having issue staying connected to collectors due to blocked PollingWorker thread
DE348515 - 00935715-copying WebAppSupport.jar to the core/ext dir, to enable jmx metrics, the server does not start
DE365527 - 01094315-Exp Card filters not showing when editing
DE341794 - CEM should use HikariCP since the current apache-commons-pool2 has issues
DE355261 - EXACT metric query is doing full scan when type is not specified
DE339207 - myfaces implementation and api version changed
DE354556 - Hide InterruptedException when stopping connection
DE341744 - Use SSLSocketFactory from Jetty TrustingSslSocketConnector
DE356522 - Flipping attributes causes large DB and slow performance
DE353323 - Auditing of public api vertex controller added
DE350683 - MM description field disappear after MM copy
DE345198 - Agent should not use IP address in URL by default when connecting to EM
DE305755 - ArrayStoreException in EM logs on Openshift Env
DE344839 - Telemetry enhancements and fixes
DE345596 - Clamp on graphs count in whole buffer and in separate buckets
DE343547 - Increase clamp for EV live mode
DE308701 - New BadlyFormedObjectException(String, Throwable) is not thrown in buildVertex(IAppMapVertex)
DE359918 - Fixed AT not returning data when cache is null
DE341654 - 00937760-Cannot see APIM Gateway EPAgents Correlation in Transaction Trace & Team Center Map
DE359482 - APM/Spectrum integration using standard APM SNMP Alert Action creates inconsistent metric data in Spectrum Event
DE304958 - APMSqlServer doesn't appear to support SSL
DE348512 - HF#60 - 00929536-Potential Memory Leak on MoM
DE358001 - 00967515-SMTP Email Alert Metric Link Incorrect for Calculator Metrics
DE354433 - 00994559-Historical mode optimizations
DE356800 - CollectorEventsReceiverImpl is blocking Isengard processing thread
DE343971 - Error in AGC log - Unreachable service on follower
DE355261 - EXACT metric query is doing full scan when type is not specified
DE357551 - SC-FLD with UIM: ATC is too slow and is not responding for new session
DE356446 - Support single node context creation when no edges exists for left most node
DE357974 - Bulk delete for vertices in Lucene
DE343865 - SQLSyntaxErrorException: ORA-00913: too many values
DE355021 - 00994859-Correcting running profile of the TTProcessor
DE357147 - Not left most vertex marked as experience
DE338849 - Jarvis trace store supportability metrics should be removed from MOM
DE356381 - 00987178 DSE: Analysis Notebook doesn't show any data for one application when initiated in Live mode
DE360347 - 01061593-Summary Alerts broken if they includes an alert that is based on a metrics that is not reporting anything
DE356292 - Moved ATS metric specifiers from configuration controller to VertexMetricQueryManagerImpl
DE341950 - FLD BadlyFormedNameException not legal Metric name fixed
DE338441 - 00931480-Different Results at command line extraction
DE340391 - APMSQL Buffer Memory Issue
DE358655 - Case insensitive attributes
DE359222 - UTF-8 encoding for JA
DE360139 - HashMap with JarvisTraceStore consumes great amount of memory when Jarvis is down
DE361452 - Error/Stall type event generated from multiple agents don't get tracked properly
DE361037 - AT Rest calls (ART) taking more time, ~ 4 seconds and more (Story Context Retrieval clamp added and leftMostComponent retrieval logic changed)
DE361897 - Evidence query range should never be more than 24 hours
DE357235 - [CFMonitorExtension] Change cf 'Organisation' node name to en us locale 'Organization' or just 'Orgs'
DE343935 - Selected and expanded Stories are not preserved in the URL when reloading the page or opening the URL in a new page
DE360041 - Sessions gets logged off after about 15 minutes
DE355240 - Component chart icon and left navigation menu should open only after 500 ms hovering
DE359920 - TTViewer: ms string left after close imported json file
DE360730 - TTViewer: Zoom in/out has gap at the beginning and not disabled and back to 1st segment
DE355044 - 00995119-Webview links removed in 10.7
DE348055 - 00968481-LiveMetricViewerGraph refresh when agent unmounted
DE356697 - Tabbing (expand large Invocations records) takes long (6 seconds)
DE345096 - After agent is connected the same is not reflected in "Agent page"
DE360108 - Saving experience range state when leaving Home page
DE360937 - Notebook requests stat/top/attr events even when the checkboxes are not checked
DE361612 - Infrastructure actor type is sometime missing from AT Story Panel
DE353429 - 00990763-Alert threshold "Periods" parameters have no limit for very large numbers
DE345250 - Selected node (highlight is orange) doesn't get reset when I go back to experience tiles
DE354396 - Open Source BlackDuck Vulnerabilities in ACC (jackson-databind)
DE354641 - Update Jackson to 2.7.6 and jackson-databind to 2.7.9.3 to fix CVE-2017-7525
DE300305 - 00772370-Common Vulnerabilities and Exposures (CVE) security threat
DE359087 - CVE-2016-9878, CVE-2016-5007- spring-core-3.2.16.RELEASE.jar in APMSQL Server reported against APM 10.7
DE359094 - CVE-2016-5007- spring-core-3.2.18.RELEASE.jar and spring-aop-3.2.18.RELEASE.jar in APMSQL Server reported against APM 10.7
DE358676 - 01061287-INFLUENCEOF CVE-2018-1273: RCE with Spring Data Commons
DE351113 - CVE-2017-8046 - RCE in PATCH requests in Spring Data REST
DE352441 - 00986299-Black Duck Scan issue for CA APM 10.7
DE354864 - Update Jackson Json to latest patch version to fix CVE-2017-7525 in ACC
DE359803 - Security vulnerabilities in PostgreSQL-9.6.2/pgAdmin 4 - xmllib.py, pct_warnings.py, _compat.py, testapp.py
DE266666 - CVE fixes for APMSQL Server1
DE363139 - Upgrading to 10.7.0.79 doesn't bring up old evidences of 10.5.1 
DE361673 - New messages in event-context.properties
DE345567 - Alerts are not mapped to BT nodes in AppMap
DE335336 - While running "WatchDog.bat", it is asking for a password which is shown in plain text
DE362456 - Domain Universes property not updated in Properties file
DE361056 - Missing layer for story's notebookFilter
DE361271 - Memory leak in DateTimePicker
DE362146 - Fixing left menu in IE
DE331978 - TTViewer: IE scroll bar keeps moving up when move it down in wedding cake
DE361787 - Hiding metric browser when nothing is selected in the current layer
DE362255 - Store default language to global variable if it's not set
DE356032 - Align Hide/Show healthy components to the rest of the UI and make it reactive
DE345154 - Notebook map reloads every time AT panel group is expanded or collapsed
DE344362 - When 'Type' Perspective is selected, edges comes out to be green
DE361053 - AGCLanding controller is returning AT stories with actors as null
DE359882 - Experience Tile association to AT stories in AT Panel is broken
DE362141 - Clicking on 'Open Analysis Notebook' doesn't give any message when link is not clickable
DE363656 - Tree View columns not showing double-bytes characters and also missing tool tips
DE363655 - findIndex fixed on IE
DE364241 - Default App Layer (Application Infra Overview) Infra Layer (Infra Overview) does not work
DE364642 - Domain Universes are not deleted when the feature is disabled
DE363654 - Localization does not working on Windows 10 Edge and IE
DE358866 - Automatically scrolling to selected metric in the tree
DE347580 - 00936515-Webview Metrics not Visible in Search Box
DE349166 - 00959582-CEM data truncate to first character
DE352550 - 00916371-Unknown backend webservices - after HF51, invalid URL
DE358002 - 00971876-Unknown Host and Unknown Queue Manager
DE364035 - APMSQLServer: logging broken after vulnerability fixes 
US459055 - Reducing JSON size stored in db at_stories - JSON minification
US456302 - AT to change type retrieval information for infrastructure type components
US465733 - Replace "vertex_id" value in evidence table with "vertex id value (integer)" for json
US492724 - Performance improvements in EM
US490987 - Historical Flow Optimizations - UI (2 phase loading)
US484800 - Remove supportability metrics relating to Story References
US487516 - Improved 3 sigma rule considering outliers
US467907 - Relearns the DA when agent is restarted after sometime
US489292 - Increased the DA status level to 3 for AT consumption
US430700 - Changes for Reflection Utils for Agent Extension
US480547 - ApmData available under public api root
US480551 - Agent Config Rest API
DE354184 - ETC 10.7 Metric View OTB all domains are expanded (updated fix)
DE354191 - ETC 10.7 Map View 0 filter when components exceed 50,000 locks out
DE354319 - Clamping on map nodes should not take into account nodes on different layers
DE354399 - Landing page metric cache memory usage optimization
DE354011 - Scrolling in metric browser tree is not usable (updated fix)
DE344873 - Layer dropdown over info text in map
DE354433 - 00994559-Dashboard calls longer than 30s
DE355442 - Topology explosion due attribute flipping (agentDisconnectTime, remoteAddress, localAddress, remotePort, remoteName)
DE355234 - Performance bottleneck in public API vertex REST call
DE341654 - 00937760-Cannot see APIM Gateway EPAgents Correlation in Transaction Trace & Team Center Map
DE348470 - FLD: Constant Full GC on ETC after 12 days
DE347813 - Team Center freezing on Open an Analysis Notebook
DE348526 - Swarm level metrics in Wily: are missing often
DE346723 - Error in AGC logs - java.lang.IndexOutOfBoundsException
DE352876 - Attributes are sent twice (lowered) in REST response
DE352438 - Added the upgrade of universes from 10.5 format to 10.7 (added missing layer property)
