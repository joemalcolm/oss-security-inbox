X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["19243" "Saturday" "13" "April" "2019" "01:13:39" "+0200" "Daniel Beck" "ml@beckweb.net" nil "722" nil "^Date:" nil nil "4" nil nil (number mark "U       ml@beckweb.n Apr 13  722/19243 " thread-indent "\"Re: [oss-security] Multiple vulnerabilities in Jenkins plugins\"\n") nil nil nil nil nil nil nil nil nil "Re: [oss-security] Multiple vulnerabilities in Jenkins plugins" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 13501 invoked by uid 550); 12 Apr 2019 23:13:53 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 13483 invoked from network); 12 Apr 2019 23:13:52 -0000
Content-Type: text/plain;
	charset=us-ascii
Content-Transfer-Encoding: quoted-printable
Mime-Version: 1.0 (Mac OS X Mail 11.5 \(3445.9.1\))
References: <CBE30AF0-0AAB-4A11-A16D-7DB230ED0257@beckweb.net>
In-Reply-To: <CBE30AF0-0AAB-4A11-A16D-7DB230ED0257@beckweb.net>
Message-Id: <3BD419B6-9155-4E2E-B0A7-5E5389750E45@beckweb.net>
X-Mailer: Apple Mail (2.3445.9.1)
X-bounce-key: webpack.hosteurope.de;ml@beckweb.net;1555110832;f6d8438c;
X-HE-SMSGID: 1hF5Mb-0006Ha-8i
Date: Sat, 13 Apr 2019 01:13:39 +0200
From: Daniel Beck <ml@beckweb.net>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] Multiple vulnerabilities in Jenkins plugins
To: oss-security@lists.openwall.com



> On 3. Apr 2019, at 15:55, Daniel Beck <ml@beckweb.net> wrote:
>=20
> SECURITY-829
> IRC Plugin stores credentials unencrypted in its global configuration fil=
e=20
> hudson.plugins.ircbot.IrcPublisher.xml on the Jenkins master. These=20
> credentials can be viewed by users with access to the master file system.
>=20

CVE-2019-1003051

>=20
> SECURITY-831
> AWS Elastic Beanstalk Publisher Plugin stores credentials unencrypted in =
its=20
> global configuration file org.jenkinsci.plugins.awsbeanstalkpublisher.
> AWSEBPublisher.xml
> on the Jenkins master. These credentials can be viewed by users with acce=
ss=20
> to the master file system.
>=20

CVE-2019-1003052

>=20
> SECURITY-837
> Jira Issue Updater Plugin stores credentials unencrypted in job config.xm=
l=20
> files on the Jenkins master. These credentials can be viewed by users wit=
h=20
> Extended Read permission, or access to the master file system.
>=20

CVE-2019-1003054

>=20
> SECURITY-839
> HockeyApp Plugin stores credentials unencrypted in job config.xml files o=
n=20
> the Jenkins master. These credentials can be viewed by users with Extende=
d=20
> Read permission, or access to the master file system.
>=20

CVE-2019-1003053

>=20
> SECURITY-954
> FTP publisher Plugin stores credentials unencrypted in its global=20
> configuration file com.zanox.hudson.plugins.FTPPublisher.xml on the Jenki=
ns=20
> master. These credentials can be viewed by users with access to the maste=
r=20
> file system.
>=20

CVE-2019-1003055

>=20
> SECURITY-956
> WebSphere Deployer Plugin stores credentials unencrypted in job config.xm=
l=20
> files on the Jenkins master. These credentials can be viewed by users wit=
h=20
> Extended Read permission, or access to the master file system.
>=20

CVE-2019-1003056

>=20
> SECURITY-965
> Bitbucket Approve Plugin stores credentials unencrypted in its global=20
> configuration file org.jenkinsci.plugins.bitbucket_approve.BitbucketAppro=
ver.
> xml
> on the Jenkins master. These credentials can be viewed by users with acce=
ss=20
> to the master file system.
>=20

CVE-2019-1003057

>=20
> SECURITY-974
> A missing permission check in a form validation method in FTP publisher=20
> Plugin allows users with Overall/Read permission to initiate a connection=
=20
> test to an attacker-specified FTP server with attacker-specified credenti=
als.
>=20
> Additionally, the form validation method does not require POST requests,=
=20
> resulting in a CSRF vulnerability.
>=20

CVE-2019-1003058 (CSRF) and CVE-2019-1003059 (permission check)

>=20
> SECURITY-1041
> Official OWASP ZAP Plugin stores Jira credentials unencrypted in its glob=
al=20
> configuration file org.jenkinsci.plugins.zap.ZAPBuilder.xml on the Jenkin=
s=20
> master. These credentials can be viewed by users with access to the maste=
r=20
> file system.
>=20

CVE-2019-1003060

>=20
> SECURITY-1042
> jenkins-cloudformation-plugin Plugin stores credentials unencrypted in jo=
b=20
> config.xml files on the Jenkins master. These credentials can be viewed b=
y=20
> users with Extended Read permission, or access to the master file system.
>=20

CVE-2019-1003061

>=20
> SECURITY-830
> AWS CloudWatch Logs Publisher Plugin stores credentials unencrypted in it=
s=20
> global configuration file jenkins.plugins.awslogspublisher.AWSLogsConfig.=
xml=20
> on the Jenkins master. These credentials can be viewed by users with acce=
ss=20
> to the master file system.
>=20

CVE-2019-1003062

>=20
> SECURITY-832
> Amazon SNS Build Notifier Plugin stores credentials unencrypted in its=20
> global configuration file org.jenkinsci.plugins.snsnotify.AmazonSNSNotifi=
er.
> xml
> on the Jenkins master. These credentials can be viewed by users with acce=
ss=20
> to the master file system.
>=20

CVE-2019-1003063

>=20
> SECURITY-835
> aws-device-farm Plugin stores credentials unencrypted in its global=20
> configuration file org.jenkinsci.plugins.awsdevicefarm.AWSDeviceFarmRecor=
der.
> xml
> on the Jenkins master. These credentials can be viewed by users with acce=
ss=20
> to the master file system.
>=20

CVE-2019-1003064

>=20
> SECURITY-838
> CloudShare Docker-Machine Plugin stores credentials unencrypted in its=20
> global configuration file com.cloudshare.jenkins.CloudShareConfiguration.=
xml=20
> on the Jenkins master. These credentials can be viewed by users with acce=
ss=20
> to the master file system.
>=20

CVE-2019-1003065

>=20
> SECURITY-841
> Bugzilla Plugin stores credentials unencrypted in its global configuratio=
n=20
> file hudson.plugins.bugzilla.BugzillaProjectProperty.xml on the Jenkins=20
> master. These credentials can be viewed by users with access to the maste=
r=20
> file system.
>=20

CVE-2019-1003066

>=20
> SECURITY-842
> Trac Publisher Plugin stores credentials unencrypted in job config.xml fi=
les=20
> on the Jenkins master. These credentials can be viewed by users with=20
> Extended Read permission, or access to the master file system.
>=20

CVE-2019-1003067

>=20
> SECURITY-945
> VMware vRealize Automation Plugin stores credentials unencrypted in job=20
> config.xml files on the Jenkins master. These credentials can be viewed b=
y=20
> users with Extended Read permission, or access to the master file system.
>=20

CVE-2019-1003068

>=20
> SECURITY-949
> Aqua Security Scanner Plugin stores credentials unencrypted in its global=
=20
> configuration file org.jenkinsci.plugins.aquadockerscannerbuildstep.
> AquaDockerScannerBuilder.xml
> on the Jenkins master. These credentials can be viewed by users with acce=
ss=20
> to the master file system.
>=20

CVE-2019-1003069

>=20
> SECURITY-952
> veracode-scanner Plugin stores credentials unencrypted in its global=20
> configuration file org.jenkinsci.plugins.veracodescanner.VeracodeNotifier=
.xml
> on the Jenkins master. These credentials can be viewed by users with acce=
ss=20
> to the master file system.
>=20

CVE-2019-1003070

>=20
> SECURITY-957
> OctopusDeploy Plugin stores credentials unencrypted in its global=20
> configuration file hudson.plugins.octopusdeploy.OctopusDeployPlugin.xml o=
n=20
> the Jenkins master. These credentials can be viewed by users with access =
to=20
> the master file system.
>=20

CVE-2019-1003071

>=20
> SECURITY-961
> WildFly Deployer Plugin stores deployment credentials unencrypted in job=
=20
> config.xml files on the Jenkins master. These credentials can be viewed b=
y=20
> users with Extended Read permission, or access to the master file system.
>=20

CVE-2019-1003072

>=20
> SECURITY-962
> VS Team Services Continuous Deployment Plugin stores credentials unencryp=
ted=20
> in job config.xml files on the Jenkins master. These credentials can be=20
> viewed by users with Extended Read permission, or access to the master fi=
le=20
> system.
>=20

CVE-2019-1003073

>=20
> SECURITY-964
> Hyper.sh Commons Plugin stores credentials unencrypted in its global=20
> configuration file sh.hyper.plugins.hypercommons.Tools.xml on the Jenkins=
=20
> master. These credentials can be viewed by users with access to the maste=
r=20
> file system.
>=20

CVE-2019-1003074

>=20
> SECURITY-966
> Audit to Database Plugin stores database credentials unencrypted in its=20
> global configuration file audit2db.xml on the Jenkins master. These=20
> credentials can be viewed by users with access to the master file system.
>=20

CVE-2019-1003075

>=20
> SECURITY-977
> A missing permission check in a form validation method in Audit to Databa=
se=20
> Plugin allows users with Overall/Read permission to initiate a JDBC datab=
ase=20
> connection test to an attacker-specified server with attacker-specified=20
> credentials.
>=20
> Additionally, the form validation method does not require POST requests,=
=20
> resulting in a CSRF vulnerability.
>=20

CVE-2019-1003076 (CSRF) and CVE-2019-1003077 (permission check)

>=20
> SECURITY-979
> A missing permission check in a form validation method in VMware Lab Mana=
ger=20
> Slaves Plugin allows users with Overall/Read permission to initiate a Lab=
=20
> Manager connection test to an attacker-specified server with attacker-
> specified credentials and settings.
>=20
> Additionally, the form validation method does not require POST requests,=
=20
> resulting in a CSRF vulnerability.
>=20

2019-1003078 (CSRF) and CVE-2019-1003079 (permission check)

>=20
> SECURITY-981
> A missing permission check in a form validation method in OpenShift Deplo=
yer=20
> Plugin allows users with Overall/Read permission to initiate a connection=
=20
> test to an attacker-specified server with attacker-specified credentials.
>=20
> Additionally, the form validation method does not require POST requests,=
=20
> resulting in a CSRF vulnerability.
>=20

CVE-2019-1003080 (CSRF) and CVE-2019-1003081 (permission check)

>=20
> SECURITY-991
> A missing permission check in a form validation method in Gearman Plugin=
=20
> allows users with Overall/Read permission to initiate a connection test t=
o=20
> an attacker-specified server.
>=20
> Additionally, the form validation method does not require POST requests,=
=20
> resulting in a CSRF vulnerability.
>=20

CVE-2019-1003082 (CSRF) and CVE-2019-1003083 (permission check)

>=20
> SECURITY-993
> A missing permission check in a form validation method in Zephyr Enterpri=
se=20
> Test Management Plugin allows users with Overall/Read permission to initi=
ate=20
> a connection test to an attacker-specified server with attacker-specified=
=20
> credentials.
>=20
> Additionally, the form validation method does not require POST requests,=
=20
> resulting in a CSRF vulnerability.
>=20

CVE-2019-1003084 (CSRF) and CVE-2019-1003085 (permission check)

>=20
> SECURITY-1037
> A missing permission check in a form validation method in Chef Sinatra=20
> Plugin allows users with Overall/Read permission to initiate a connection=
=20
> test to an attacker-specified server.
>=20
> Additionally, the form validation method does not require POST requests,=
=20
> resulting in a CSRF vulnerability.
>=20

CVE-2019-1003086 (CSRF) and CVE-2019-1003087 (permission check)

>=20
> SECURITY-1043
> Fabric Beta Publisher Plugin stores credentials unencrypted in job=20
> config.xml files on the Jenkins master. These credentials can be viewed b=
y=20
> users with Extended Read permission, or access to the master file system.
>=20

CVE-2019-1003088

>=20
> SECURITY-1044
> Upload to pgyer Plugin stores credentials unencrypted in job config.xml=20
> files on the Jenkins master. These credentials can be viewed by users wit=
h=20
> Extended Read permission, or access to the master file system.
>=20

CVE-2019-1003089

>=20
> SECURITY-1054
> A missing permission check in a form validation method in SOASTA CloudTes=
t=20
> Plugin allows users with Overall/Read permission to initiate a connection=
=20
> test to an attacker-specified URL with attacker-specified credentials and=
=20
> SSH key store options.
>=20
> Additionally, the form validation method does not require POST requests,=
=20
> resulting in a CSRF vulnerability.
>=20

CVE-2019-1003090 (CSRF) and CVE-2019-1003091 (permission check)

>=20
> SECURITY-1058
> A missing permission check in a form validation method in Nomad Plugin=20
> allows users with Overall/Read permission to initiate a connection test t=
o=20
> an attacker-specified URL.
>=20
> Additionally, the form validation method does not require POST requests,=
=20
> resulting in a CSRF vulnerability.
>=20

CVE-2019-1003092 (CSRF) and CVE-2019-1003093 (permission check)

>=20
> SECURITY-1059
> Open STF Plugin stores credentials unencrypted in its global configuratio=
n=20
> file hudson.plugins.openstf.STFBuildWrapper.xml on the Jenkins master. Th=
ese=20
> credentials can be viewed by users with access to the master file system.
>=20

CVE-2019-1003094

>=20
> SECURITY-1061
> Perfecto Mobile Plugin stores credentials unencrypted in its global=20
> configuration file com.perfectomobile.jenkins.ScriptExecutionBuilder.xml =
on=20
> the Jenkins master. These credentials can be viewed by users with access =
to=20
> the master file system.
>=20

CVE-2019-1003095

>=20
> SECURITY-1062
> TestFairy Plugin stores credentials unencrypted in job config.xml files o=
n=20
> the Jenkins master. These credentials can be viewed by users with Extende=
d=20
> Read permission, or access to the master file system.
>=20

CVE-2019-1003096

>=20
> SECURITY-1069
> Crowd Integration Plugin stores credentials unencrypted in the global=20
> configuration file config.xml on the Jenkins master. These credentials ca=
n=20
> be viewed by users with access to the master file system.
>=20

CVE-2019-1003097

>=20
> SECURITY-1084
> A missing permission check in a form validation method in openid Plugin=20
> allows users with Overall/Read permission to initiate a connection test t=
o=20
> an attacker-specified URL.
>=20
> Additionally, the form validation method does not require POST requests,=
=20
> resulting in a CSRF vulnerability.
>=20

CVE-2019-1003098 (CSRF) and CVE-2019-1003099 (permission check)

>=20
> SECURITY-1085
> StarTeam Plugin stores credentials unencrypted in job config.xml files on=
=20
> the Jenkins master. These credentials can be viewed by users with Extende=
d=20
> Read permission, or access to the master file system.
>=20

CVE-2019-10277

>=20
> SECURITY-1091
> A missing permission check in a form validation method in jenkins-reviewb=
ot=20
> Plugin allows users with Overall/Read permission to initiate a connection=
=20
> test to an attacker-specified URL with attacker-specified credentials.
>=20
> Additionally, the form validation method does not require POST requests,=
=20
> resulting in a CSRF vulnerability.
>=20

CVE-2019-10278 (CSRF) and CVE-2019-10279 (permission check)

>=20
> SECURITY-1093
> Assembla Auth Plugin stores credentials unencrypted in the global=20
> configuration file config.xml on the Jenkins master. These credentials ca=
n=20
> be viewed by users with access to the master file system.
>=20

CVE-2019-10280

>=20
> SECURITY-828
> Relution Enterprise Appstore Publisher Plugin stores credentials unencryp=
ted=20
> in its global configuration file org.jenkinsci.plugins.relution_publisher=
.configuration.global.StoreConfiguration.xml
> on the Jenkins master. These credentials can be viewed by users with acce=
ss=20
> to the master file system.
>=20

CVE-2019-10281

>=20
> SECURITY-843
> Klaros-Testmanagement Plugin stores credentials unencrypted in job
> config.xml files on the Jenkins master. These credentials can be viewed b=
y=20
> users with Extended Read permission, or access to the master file system.
>=20

CVE-2019-10282

>=20
> SECURITY-946
> mabl Plugin stores credentials unencrypted in job config.xml files on the=
=20
> Jenkins master. These credentials can be viewed by users with Extended Re=
ad=20
> permission, or access to the master file system.
>=20

CVE-2019-10283

>=20
> SECURITY-947
> Diawi Upload Plugin stores credentials unencrypted in job config.xml file=
s=20
> on the Jenkins master. These credentials can be viewed by users with=20
> Extended Read permission, or access to the master file system.
>=20

CVE-2019-10284

>=20
> SECURITY-955
> Minio Storage Plugin stores credentials unencrypted in its global=20
> configuration file org.jenkinsci.plugins.minio.MinioUploader.xml on the=20
> Jenkins master. These credentials can be viewed by users with access to t=
he=20
> master file system.
>=20

CVE-2019-10285

>=20
> SECURITY-959
> DeployHub Plugin stores credentials unencrypted in job config.xml files o=
n=20
> the Jenkins master. These credentials can be viewed by users with Extende=
d=20
> Read permission, or access to the master file system.
>=20

CVE-2019-10286

>=20
> SECURITY-963
> youtrack-plugin Plugin stored credentials unencrypted in its global=20
> configuration file org.jenkinsci.plugins.youtrack.YouTrackProjectProperty=
.xml
> on the Jenkins master. These credentials could be viewed by users with=20
> access to the master file system.
>=20

CVE-2019-10287

>=20
> SECURITY-1031
> Jabber Server Plugin stores credentials unencrypted in its global=20
> configuration file de.e_nexus.jabber.JabberBuilder.xml on the Jenkins mas=
ter.
> These credentials can be viewed by users with access to the master file=20
> system.
>=20

CVE-2019-10288

>=20
> SECURITY-1032
> A missing permission check in a form validation method in Netsparker Clou=
d=20
> Scan Plugin allowed users with Overall/Read permission to initiate a=20
> connection test to an attacker-specified server with attacker-specified A=
PI=20
> token.
>=20
> Additionally, the form validation method did not require POST requests,=20
> resulting in a CSRF vulnerability.
>=20

CVE-2019-10289 (CSRF) and CVE-2019-10290 (permission check)

>=20
> SECURITY-1040
> Netsparker Cloud Scan Plugin stored credentials unencrypted in its global=
=20
> configuration file com.netsparker.cloud.plugin.NCScanBuilder.xml on the=20
> Jenkins master. These credentials could be viewed by users with access to=
=20
> the master file system.
>=20

CVE-2019-10291

>=20
> SECURITY-1055
> A missing permission check in a form validation method in Kmap Plugin all=
ows=20
> users with Overall/Read permission to initiate a connection test to an=20
> attacker-specified server with attacker-specified credentials.
>=20
> Additionally, the form validation method does not require POST requests,=
=20
> resulting in a CSRF vulnerability.
>=20

CVE-2019-10292 (CSRF) and CVE-2019-10293 (permission check)

>=20
> SECURITY-1056
> Kmap Plugin stores credentials unencrypted in job config.xml files on the=
=20
> Jenkins master. These credentials can be viewed by users with Extended Re=
ad=20
> permission, or access to the master file system.
>=20

CVE-2019-10294

>=20
> SECURITY-1063
> crittercism-dsym Plugin stores credentials unencrypted in job config.xml=
=20
> files on the Jenkins master. These credentials can be viewed by users wit=
h=20
> Extended Read permission, or access to the master file system.
>=20

CVE-2019-10295

>=20
> SECURITY-1066
> Serena SRA Deploy Plugin stores credentials unencrypted in its global=20
> configuration file com.urbancode.ds.jenkins.plugins.serenarapublisher.Urb=
anDeployPublisher.xml
> on the Jenkins master. These credentials can be viewed by users with acce=
ss=20
> to the master file system.
>=20

CVE-2019-10296

>=20
> SECURITY-1090
> Sametime Plugin stores credentials unencrypted in its global configuratio=
n=20
> file hudson.plugins.sametime.im.transport.SametimePublisher.xml on the=20
> Jenkins master. These credentials can be viewed by users with access to t=
he=20
> master file system.
>=20

CVE-2019-10297

>=20
> SECURITY-1092
> Koji Plugin stores credentials unencrypted in its global configuration fi=
le=20
> org.jenkinsci.plugins.koji.KojiBuilder.xml on the Jenkins master. These=20
> credentials can be viewed by users with access to the master file system.
>=20

CVE-2019-10298

>=20
> SECURITY-960
> CloudCoreo DeployTime Plugin stores credentials unencrypted in its global=
=20
> configuration file com.cloudcoreo.plugins.jenkins.CloudCoreoBuildWrapper.=
xml=20
> on the Jenkins master. These credentials can be viewed by users with acce=
ss=20
> to the master file system.

CVE-2019-10299

