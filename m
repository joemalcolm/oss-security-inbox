X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["7576" "Wednesday" "7" "August" "2019" "16:06:44" "+0200" "Daniel Beck" "ml@beckweb.net" "<C4D6F144-28A8-451F-AA5A-6AA0D97FEDEE@beckweb.net>" "206" "[oss-security] Multiple vulnerabilities in Jenkins plugins" nil nil nil "8" "2019080714:06:44" "[oss-security] Multiple vulnerabilities in Jenkins plugins" (number mark "U       ml@beckweb.n Aug  7  206/7576  " thread-indent "\"[oss-security] Multiple vulnerabilities in Jenkins plugins\"\n") nil nil nil nil nil nil nil nil nil "[oss-security] Multiple vulnerabilities in Jenkins plugins" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 4062 invoked by uid 550); 7 Aug 2019 14:06:56 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 4041 invoked from network); 7 Aug 2019 14:06:55 -0000
From: Daniel Beck <ml@beckweb.net>
Content-Type: text/plain;
	charset=utf-8
Content-Transfer-Encoding: quoted-printable
Mime-Version: 1.0 (Mac OS X Mail 12.4 \(3445.104.11\))
Message-Id: <C4D6F144-28A8-451F-AA5A-6AA0D97FEDEE@beckweb.net>
Date: Wed, 7 Aug 2019 16:06:44 +0200
To: oss-security@lists.openwall.com
X-Mailer: Apple Mail (2.3445.104.11)
X-bounce-key: webpack.hosteurope.de;ml@beckweb.net;1565186815;8a9a5f71;
X-HE-SMSGID: 1hvMaS-0000ew-7k
Subject: [oss-security] Multiple vulnerabilities in Jenkins plugins

Jenkins is an open source automation server which enables developers around
the world to reliably build, test, and deploy their software. The following
releases contain fixes for security vulnerabilities:

* Configuration as Code Plugin 1.27
* JClouds Plugin 2.15

Additionally, we announce unresolved security issues in the following
plugins:=20

* Avatar Plugin
* Build Pipeline Plugin
* Codefresh Integration Plugin
* eggPlant Plugin
* File System SCM Plugin
* Gitlab Authentication Plugin
* Google Cloud Messsaging Notification Plugin
* Mask Passwords Plugin
* PegDown Formatter Plugin
* Relution Enterprise Appstore Publisher Plugin
* Simple Travis Pipeline Runner Plugin
* TestLink Plugin
* VMware Lab Manager Slaves Plugin
* Wall Display Master Project Plugin
* XL TestView Plugin

Summaries of the vulnerabilities are below. More details, severity, and
attribution can be found here:
https://jenkins.io/security/advisory/2019-08-07/

We provide advance notification for security updates on this mailing list:
https://groups.google.com/d/forum/jenkinsci-advisories

If you discover security vulnerabilities in Jenkins, please report them as
described here:
https://jenkins.io/security/#reporting-vulnerabilities

---


SECURITY-1497 / CVE-2019-10367
Configuration as Code Plugin logs the changes it applies to the Jenkins=20
system log. Secrets such as passwords should be masked (i.e. replaced with=
=20
asterisks) in that log to prevent accidental disclosure. Configuration as=20
Code Plugin inspects the type and looks for a field, getter, or constructor=
=20
argument corresponding to the property, making the secret detection much=20
more robust for the purpose of log message masking. This was implemented in=
=20
the fix for SECURITY-1279 in the 2019-07-31 security advisory.

That fix was incomplete and did not cover a log message written to the=20
logger io.jenkins.plugins.casc.impl.configurators.DataBoundConfigurator.


SECURITY-1482 / CVE-2019-10368 (CSRF), CVE-2019-10369 (permission check)
JClouds Plugin did not perform permission checks on a method implementing=20
form validation. This allowed users with Overall/Read access to Jenkins to=
=20
connect to an attacker-specified URL using attacker-specified credentials=20
IDs obtained through another method, capturing credentials stored in
Jenkins.

Additionally, this form validation method did not require POST requests,=20
resulting in a cross-site request forgery vulnerability.


SECURITY-157 / CVE-2019-10370
Mask Passwords Plugin allows specifying passwords to be provided to builds=
=20
in the global Jenkins configuration.

While the passwords are stored encrypted on disk, they are transmitted in=20
plain text as part of the configuration form. This can result in exposure=20
of the password through browser extensions, cross-site scripting=20
vulnerabilities, and similar situations.


SECURITY-795 / CVE-2019-10371
Gitlab Authentication Plugin does not invalidate the previous session and=20
create a new one upon successful login. This allows attackers able to=20
control or obtain another user=E2=80=99s pre-login session ID to impersonat=
e them.


SECURITY-796 / CVE-2019-10372
Gitlab Authentication Plugin records the HTTP Referer header when the=20
authentication process starts and redirects users to that URL when the user=
=20
has finished logging in.

This implements an open redirect, allowing malicious sites to implement a=20
phishing attack, with users expecting they have just logged in to Jenkins.


SECURITY-879 / CVE-2019-10373
Build Pipeline Plugin does not properly escape variables in views,=20
resulting in a stored cross-site scripting vulnerability exploitable by=20
users with permission to configure build pipelines.

This vulnerability is only exploitable on Jenkins releases older than 2.146=
=20
or 2.138.2 due to the security hardening implemented in those releases.


SECURITY-142 / CVE-2019-10374
PegDown Formatter Plugin uses the PegDown library to implement support for=
=20
rendering Markdown formatted descriptions in Jenkins. It advertises=20
disabling of HTML to prevent cross-site scripting (XSS) as a feature.

PegDown Formatter Plugin does not prevent the use of javascript: scheme in=
=20
URLs for links. This results in an XSS vulnerability exploitable by users=20
able to configure entities with descriptions or similar properties that are=
=20
rendered by the configured markup formatter.


SECURITY-569 / CVE-2019-10375
File System SCM Plugin allows users able to configure jobs to read=20
arbitrary files from the Jenkins master, even if the job is running on an=20
agent.


SECURITY-751 / CVE-2019-10376
Wall Display Master Project Plugin does not properly escape the customTheme=
=20
query parameter, resulting in a reflected cross-site scripting vulnerabilit=
y.


SECURITY-1099 / CVE-2019-10377
Avatar Plugin does not implement a permission check for the HTTP URL used=20
to replace user avatars. This allows any user with Overall/Read permission=
=20
to change any other user=E2=80=99s avatar, in addition to their own.


SECURITY-1428 / CVE-2019-10378
TestLink Plugin stores credentials unencrypted in its global configuration=
=20
file hudson.plugins.testlink.TestLinkBuilder.xml on the Jenkins master.=20
These credentials can be viewed by users with access to the master file=20
system.


SECURITY-591 / CVE-2019-10379
Google Cloud Messsaging Notification Plugin stores an API key unencrypted=20
in its global configuration file org.jenkinsci.plugins.gcm.im.GcmPublisher.
xml on the Jenkins master. These credentials can be viewed by users with=20
access to the master file system.


SECURITY-922 / CVE-2019-10380
Simple Travis Pipeline Runner Plugin defines a custom whitelist for scripts=
=20
protected by the Script Security sandbox.

This custom whitelist allows the use of methods that can be used to bypass=
=20
Script Security sandbox protection. This results in arbitrary code=20
execution on any Jenkins instance with this plugin installed.


SECURITY-931 / CVE-2019-10381
Codefresh Integration Plugin unconditionally disables SSL/TLS certificate=20
validation for the entire Jenkins master JVM.


SECURITY-1376 / CVE-2019-10382
VMware Lab Manager Slaves Plugin unconditionally disables SSL/TLS=20
certificate validation for the entire Jenkins master JVM.


SECURITY-1430 / CVE-2019-10385
eggPlant Plugin stores credentials unencrypted in job config.xml files on=20
the Jenkins master. These credentials can be viewed by users with Extended=
=20
Read permission, or access to the master file system.


SECURITY-1008 / CVE-2019-10386 (CSRF), CVE-2019-10387 (permission check)
XL TestView Plugin does not perform permission checks on a method=20
implementing form validation. This allows users with Overall/Read access to=
=20
Jenkins to connect to an attacker-specified URL using attacker-specified=20
credentials IDs obtained through another method, capturing credentials=20
stored in Jenkins.

Additionally, this form validation method does not require POST requests,=20
resulting in a cross-site request forgery vulnerability.


SECURITY-1053 / CVE-2019-10388 (CSRF), CVE-2019-10389 (permission check)
A missing permission check in a form validation method in Relution=20
Enterprise Appstore Publisher Plugin allows users with Overall/Read=20
permission to initiate a connection test to an attacker-specified URL using=
=20
attacker-specified credentials and attacker-specified HTTP proxy=20
configuration.

Additionally, the form validation method does not require POST requests,=20
resulting in a CSRF vulnerability.

