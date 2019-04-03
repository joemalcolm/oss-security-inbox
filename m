X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["18545" "Wednesday" "3" "April" "2019" "15:55:08" "+0200" "Daniel Beck" "ml@beckweb.net" nil "587" nil nil nil nil "4" nil nil (number mark "U       ml@beckweb.n Apr  3  587/18545 " thread-indent "\"[oss-security] Multiple vulnerabilities in Jenkins plugins\"\n") nil nil nil nil nil nil nil nil nil "[oss-security] Multiple vulnerabilities in Jenkins plugins" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 24433 invoked by uid 550); 3 Apr 2019 13:55:22 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 24412 invoked from network); 3 Apr 2019 13:55:21 -0000
From: Daniel Beck <ml@beckweb.net>
Content-Type: text/plain;
	charset=us-ascii
Content-Transfer-Encoding: quoted-printable
Mime-Version: 1.0 (Mac OS X Mail 11.5 \(3445.9.1\))
Message-Id: <CBE30AF0-0AAB-4A11-A16D-7DB230ED0257@beckweb.net>
Date: Wed, 3 Apr 2019 15:55:08 +0200
To: oss-security@lists.openwall.com
X-Mailer: Apple Mail (2.3445.9.1)
X-bounce-key: webpack.hosteurope.de;ml@beckweb.net;1554299721;764819c1;
X-HE-SMSGID: 1hBgM9-0004M9-UK
Subject: [oss-security] Multiple vulnerabilities in Jenkins plugins

Jenkins is an open source automation server which enables developers around
the world to reliably build, test, and deploy their software. The following
releases contain fixes for security vulnerabilities:

* Netsparker Cloud Scan Plugin 1.1.6
* Youtrack Plugin 0.7.2

Additionally, these plugin have security vulnerabilities that have been made
public, but have no releases containing a fix yet:

* Amazon SNS Build Notifier Plugin
* Aqua Security Scanner Plugin
* Assembla Auth Plugin
* Audit to Database Plugin
* AWS CloudWatch Logs Publisher Plugin
* AWS Elastic Beanstalk Publisher Plugin
* aws-device-farm Plugin
* Bitbucket Approve Plugin
* Bugzilla Plugin
* Chef Sinatra Plugin
* CloudCoreo DeployTime Plugin
* CloudShare Docker-Machine Plugin
* crittercism-dsym Plugin
* Crowd Integration Plugin
* DeployHub Plugin
* Diawi Upload Plugin
* Fabric Beta Publisher Plugin
* FTP publisher Plugin
* Gearman Plugin
* HockeyApp Plugin
* Hyper.sh Commons Plugin
* IRC Plugin
* Jabber Server Plugin
* jenkins-cloudformation-plugin Plugin
* jenkins-reviewbot Plugin
* Jira Issue Updater Plugin
* Klaros-Testmanagement Plugin
* Kmap Plugin
* Koji Plugin
* mabl Plugin
* Minio Storage Plugin
* Nomad Plugin
* OctopusDeploy Plugin
* Official OWASP ZAP Plugin
* Open STF Plugin
* openid Plugin
* OpenShift Deployer Plugin
* Perfecto Mobile Plugin
* Relution Enterprise Appstore Publisher Plugin
* Sametime Plugin
* Serena SRA Deploy Plugin
* SOASTA CloudTest Plugin
* StarTeam Plugin
* TestFairy Plugin
* Trac Publisher Plugin
* Upload to pgyer Plugin
* veracode-scanner Plugin
* VMware Lab Manager Slaves Plugin
* VMware vRealize Automation Plugin
* VS Team Services Continuous Deployment Plugin
* WebSphere Deployer Plugin
* WildFly Deployer Plugin
* Zephyr Enterprise Test Management Plugin

Summaries of the vulnerabilities are below. More details, severity, and
attribution can be found here:
https://jenkins.io/security/advisory/2019-04-03/

We provide advance notification for security updates on this mailing list:
https://groups.google.com/d/forum/jenkinsci-advisories

If you discover security vulnerabilities in Jenkins, please report them as
described here:
https://jenkins.io/security/#reporting-vulnerabilities

---

SECURITY-829
IRC Plugin stores credentials unencrypted in its global configuration file=
=20
hudson.plugins.ircbot.IrcPublisher.xml on the Jenkins master. These=20
credentials can be viewed by users with access to the master file system.


SECURITY-831
AWS Elastic Beanstalk Publisher Plugin stores credentials unencrypted in it=
s=20
global configuration file org.jenkinsci.plugins.awsbeanstalkpublisher.
AWSEBPublisher.xml
on the Jenkins master. These credentials can be viewed by users with access=
=20
to the master file system.


SECURITY-837
Jira Issue Updater Plugin stores credentials unencrypted in job config.xml=
=20
files on the Jenkins master. These credentials can be viewed by users with=
=20
Extended Read permission, or access to the master file system.


SECURITY-839
HockeyApp Plugin stores credentials unencrypted in job config.xml files on=
=20
the Jenkins master. These credentials can be viewed by users with Extended=
=20
Read permission, or access to the master file system.


SECURITY-954
FTP publisher Plugin stores credentials unencrypted in its global=20
configuration file com.zanox.hudson.plugins.FTPPublisher.xml on the Jenkins=
=20
master. These credentials can be viewed by users with access to the master=
=20
file system.


SECURITY-956
WebSphere Deployer Plugin stores credentials unencrypted in job config.xml=
=20
files on the Jenkins master. These credentials can be viewed by users with=
=20
Extended Read permission, or access to the master file system.


SECURITY-965
Bitbucket Approve Plugin stores credentials unencrypted in its global=20
configuration file org.jenkinsci.plugins.bitbucket_approve.BitbucketApprove=
r.
xml
on the Jenkins master. These credentials can be viewed by users with access=
=20
to the master file system.


SECURITY-974
A missing permission check in a form validation method in FTP publisher=20
Plugin allows users with Overall/Read permission to initiate a connection=20
test to an attacker-specified FTP server with attacker-specified credential=
s.

Additionally, the form validation method does not require POST requests,=20
resulting in a CSRF vulnerability.


SECURITY-1041
Official OWASP ZAP Plugin stores Jira credentials unencrypted in its global=
=20
configuration file org.jenkinsci.plugins.zap.ZAPBuilder.xml on the Jenkins=
=20
master. These credentials can be viewed by users with access to the master=
=20
file system.


SECURITY-1042
jenkins-cloudformation-plugin Plugin stores credentials unencrypted in job=
=20
config.xml files on the Jenkins master. These credentials can be viewed by=
=20
users with Extended Read permission, or access to the master file system.


SECURITY-830
AWS CloudWatch Logs Publisher Plugin stores credentials unencrypted in its=
=20
global configuration file jenkins.plugins.awslogspublisher.AWSLogsConfig.xm=
l=20
on the Jenkins master. These credentials can be viewed by users with access=
=20
to the master file system.


SECURITY-832
Amazon SNS Build Notifier Plugin stores credentials unencrypted in its=20
global configuration file org.jenkinsci.plugins.snsnotify.AmazonSNSNotifier.
xml
on the Jenkins master. These credentials can be viewed by users with access=
=20
to the master file system.


SECURITY-835
aws-device-farm Plugin stores credentials unencrypted in its global=20
configuration file org.jenkinsci.plugins.awsdevicefarm.AWSDeviceFarmRecorde=
r.
xml
on the Jenkins master. These credentials can be viewed by users with access=
=20
to the master file system.


SECURITY-838
CloudShare Docker-Machine Plugin stores credentials unencrypted in its=20
global configuration file com.cloudshare.jenkins.CloudShareConfiguration.xm=
l=20
on the Jenkins master. These credentials can be viewed by users with access=
=20
to the master file system.


SECURITY-841
Bugzilla Plugin stores credentials unencrypted in its global configuration=
=20
file hudson.plugins.bugzilla.BugzillaProjectProperty.xml on the Jenkins=20
master. These credentials can be viewed by users with access to the master=
=20
file system.


SECURITY-842
Trac Publisher Plugin stores credentials unencrypted in job config.xml file=
s=20
on the Jenkins master. These credentials can be viewed by users with=20
Extended Read permission, or access to the master file system.


SECURITY-945
VMware vRealize Automation Plugin stores credentials unencrypted in job=20
config.xml files on the Jenkins master. These credentials can be viewed by=
=20
users with Extended Read permission, or access to the master file system.


SECURITY-949
Aqua Security Scanner Plugin stores credentials unencrypted in its global=20
configuration file org.jenkinsci.plugins.aquadockerscannerbuildstep.
AquaDockerScannerBuilder.xml
on the Jenkins master. These credentials can be viewed by users with access=
=20
to the master file system.


SECURITY-952
veracode-scanner Plugin stores credentials unencrypted in its global=20
configuration file org.jenkinsci.plugins.veracodescanner.VeracodeNotifier.x=
ml
on the Jenkins master. These credentials can be viewed by users with access=
=20
to the master file system.


SECURITY-957
OctopusDeploy Plugin stores credentials unencrypted in its global=20
configuration file hudson.plugins.octopusdeploy.OctopusDeployPlugin.xml on=
=20
the Jenkins master. These credentials can be viewed by users with access to=
=20
the master file system.


SECURITY-961
WildFly Deployer Plugin stores deployment credentials unencrypted in job=20
config.xml files on the Jenkins master. These credentials can be viewed by=
=20
users with Extended Read permission, or access to the master file system.


SECURITY-962
VS Team Services Continuous Deployment Plugin stores credentials unencrypte=
d=20
in job config.xml files on the Jenkins master. These credentials can be=20
viewed by users with Extended Read permission, or access to the master file=
=20
system.


SECURITY-964
Hyper.sh Commons Plugin stores credentials unencrypted in its global=20
configuration file sh.hyper.plugins.hypercommons.Tools.xml on the Jenkins=20
master. These credentials can be viewed by users with access to the master=
=20
file system.


SECURITY-966
Audit to Database Plugin stores database credentials unencrypted in its=20
global configuration file audit2db.xml on the Jenkins master. These=20
credentials can be viewed by users with access to the master file system.


SECURITY-977
A missing permission check in a form validation method in Audit to Database=
=20
Plugin allows users with Overall/Read permission to initiate a JDBC databas=
e=20
connection test to an attacker-specified server with attacker-specified=20
credentials.

Additionally, the form validation method does not require POST requests,=20
resulting in a CSRF vulnerability.


SECURITY-979
A missing permission check in a form validation method in VMware Lab Manage=
r=20
Slaves Plugin allows users with Overall/Read permission to initiate a Lab=20
Manager connection test to an attacker-specified server with attacker-
specified credentials and settings.

Additionally, the form validation method does not require POST requests,=20
resulting in a CSRF vulnerability.


SECURITY-981
A missing permission check in a form validation method in OpenShift Deploye=
r=20
Plugin allows users with Overall/Read permission to initiate a connection=20
test to an attacker-specified server with attacker-specified credentials.

Additionally, the form validation method does not require POST requests,=20
resulting in a CSRF vulnerability.


SECURITY-991
A missing permission check in a form validation method in Gearman Plugin=20
allows users with Overall/Read permission to initiate a connection test to=
=20
an attacker-specified server.

Additionally, the form validation method does not require POST requests,=20
resulting in a CSRF vulnerability.


SECURITY-993
A missing permission check in a form validation method in Zephyr Enterprise=
=20
Test Management Plugin allows users with Overall/Read permission to initiat=
e=20
a connection test to an attacker-specified server with attacker-specified=20
credentials.

Additionally, the form validation method does not require POST requests,=20
resulting in a CSRF vulnerability.


SECURITY-1037
A missing permission check in a form validation method in Chef Sinatra=20
Plugin allows users with Overall/Read permission to initiate a connection=20
test to an attacker-specified server.

Additionally, the form validation method does not require POST requests,=20
resulting in a CSRF vulnerability.


SECURITY-1043
Fabric Beta Publisher Plugin stores credentials unencrypted in job=20
config.xml files on the Jenkins master. These credentials can be viewed by=
=20
users with Extended Read permission, or access to the master file system.


SECURITY-1044
Upload to pgyer Plugin stores credentials unencrypted in job config.xml=20
files on the Jenkins master. These credentials can be viewed by users with=
=20
Extended Read permission, or access to the master file system.


SECURITY-1054
A missing permission check in a form validation method in SOASTA CloudTest=
=20
Plugin allows users with Overall/Read permission to initiate a connection=20
test to an attacker-specified URL with attacker-specified credentials and=20
SSH key store options.

Additionally, the form validation method does not require POST requests,=20
resulting in a CSRF vulnerability.


SECURITY-1058
A missing permission check in a form validation method in Nomad Plugin=20
allows users with Overall/Read permission to initiate a connection test to=
=20
an attacker-specified URL.

Additionally, the form validation method does not require POST requests,=20
resulting in a CSRF vulnerability.


SECURITY-1059
Open STF Plugin stores credentials unencrypted in its global configuration=
=20
file hudson.plugins.openstf.STFBuildWrapper.xml on the Jenkins master. Thes=
e=20
credentials can be viewed by users with access to the master file system.


SECURITY-1061
Perfecto Mobile Plugin stores credentials unencrypted in its global=20
configuration file com.perfectomobile.jenkins.ScriptExecutionBuilder.xml on=
=20
the Jenkins master. These credentials can be viewed by users with access to=
=20
the master file system.


SECURITY-1062
TestFairy Plugin stores credentials unencrypted in job config.xml files on=
=20
the Jenkins master. These credentials can be viewed by users with Extended=
=20
Read permission, or access to the master file system.


SECURITY-1069
Crowd Integration Plugin stores credentials unencrypted in the global=20
configuration file config.xml on the Jenkins master. These credentials can=
=20
be viewed by users with access to the master file system.


SECURITY-1084
A missing permission check in a form validation method in openid Plugin=20
allows users with Overall/Read permission to initiate a connection test to=
=20
an attacker-specified URL.

Additionally, the form validation method does not require POST requests,=20
resulting in a CSRF vulnerability.


SECURITY-1085
StarTeam Plugin stores credentials unencrypted in job config.xml files on=20
the Jenkins master. These credentials can be viewed by users with Extended=
=20
Read permission, or access to the master file system.


SECURITY-1091
A missing permission check in a form validation method in jenkins-reviewbot=
=20
Plugin allows users with Overall/Read permission to initiate a connection=20
test to an attacker-specified URL with attacker-specified credentials.

Additionally, the form validation method does not require POST requests,=20
resulting in a CSRF vulnerability.


SECURITY-1093
Assembla Auth Plugin stores credentials unencrypted in the global=20
configuration file config.xml on the Jenkins master. These credentials can=
=20
be viewed by users with access to the master file system.


SECURITY-828
Relution Enterprise Appstore Publisher Plugin stores credentials unencrypte=
d=20
in its global configuration file org.jenkinsci.plugins.relution_publisher.c=
onfiguration.global.StoreConfiguration.xml
on the Jenkins master. These credentials can be viewed by users with access=
=20
to the master file system.


SECURITY-843
Klaros-Testmanagement Plugin stores credentials unencrypted in job
config.xml files on the Jenkins master. These credentials can be viewed by=
=20
users with Extended Read permission, or access to the master file system.


SECURITY-946
mabl Plugin stores credentials unencrypted in job config.xml files on the=20
Jenkins master. These credentials can be viewed by users with Extended Read=
=20
permission, or access to the master file system.


SECURITY-947
Diawi Upload Plugin stores credentials unencrypted in job config.xml files=
=20
on the Jenkins master. These credentials can be viewed by users with=20
Extended Read permission, or access to the master file system.


SECURITY-955
Minio Storage Plugin stores credentials unencrypted in its global=20
configuration file org.jenkinsci.plugins.minio.MinioUploader.xml on the=20
Jenkins master. These credentials can be viewed by users with access to the=
=20
master file system.


SECURITY-959
DeployHub Plugin stores credentials unencrypted in job config.xml files on=
=20
the Jenkins master. These credentials can be viewed by users with Extended=
=20
Read permission, or access to the master file system.


SECURITY-963
youtrack-plugin Plugin stored credentials unencrypted in its global=20
configuration file org.jenkinsci.plugins.youtrack.YouTrackProjectProperty.x=
ml
on the Jenkins master. These credentials could be viewed by users with=20
access to the master file system.


SECURITY-1031
Jabber Server Plugin stores credentials unencrypted in its global=20
configuration file de.e_nexus.jabber.JabberBuilder.xml on the Jenkins maste=
r.
These credentials can be viewed by users with access to the master file=20
system.


SECURITY-1032
A missing permission check in a form validation method in Netsparker Cloud=
=20
Scan Plugin allowed users with Overall/Read permission to initiate a=20
connection test to an attacker-specified server with attacker-specified API=
=20
token.

Additionally, the form validation method did not require POST requests,=20
resulting in a CSRF vulnerability.


SECURITY-1040
Netsparker Cloud Scan Plugin stored credentials unencrypted in its global=20
configuration file com.netsparker.cloud.plugin.NCScanBuilder.xml on the=20
Jenkins master. These credentials could be viewed by users with access to=20
the master file system.


SECURITY-1055
A missing permission check in a form validation method in Kmap Plugin allow=
s=20
users with Overall/Read permission to initiate a connection test to an=20
attacker-specified server with attacker-specified credentials.

Additionally, the form validation method does not require POST requests,=20
resulting in a CSRF vulnerability.


SECURITY-1056
Kmap Plugin stores credentials unencrypted in job config.xml files on the=20
Jenkins master. These credentials can be viewed by users with Extended Read=
=20
permission, or access to the master file system.


SECURITY-1063
crittercism-dsym Plugin stores credentials unencrypted in job config.xml=20
files on the Jenkins master. These credentials can be viewed by users with=
=20
Extended Read permission, or access to the master file system.


SECURITY-1066
Serena SRA Deploy Plugin stores credentials unencrypted in its global=20
configuration file com.urbancode.ds.jenkins.plugins.serenarapublisher.Urban=
DeployPublisher.xml
on the Jenkins master. These credentials can be viewed by users with access=
=20
to the master file system.


SECURITY-1090
Sametime Plugin stores credentials unencrypted in its global configuration=
=20
file hudson.plugins.sametime.im.transport.SametimePublisher.xml on the=20
Jenkins master. These credentials can be viewed by users with access to the=
=20
master file system.


SECURITY-1092
Koji Plugin stores credentials unencrypted in its global configuration file=
=20
org.jenkinsci.plugins.koji.KojiBuilder.xml on the Jenkins master. These=20
credentials can be viewed by users with access to the master file system.


SECURITY-960
CloudCoreo DeployTime Plugin stores credentials unencrypted in its global=20
configuration file com.cloudcoreo.plugins.jenkins.CloudCoreoBuildWrapper.xm=
l=20
on the Jenkins master. These credentials can be viewed by users with access=
=20
to the master file system.

