X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["10586" "Wednesday" "25" "September" "2019" "16:42:06" "+0200" "Daniel Beck" "ml@beckweb.net" nil "280" nil nil nil nil "9" nil nil (number mark "U       ml@beckweb.n Sep 25  280/10586 " thread-indent "\"[oss-security] Multiple vulnerabilities in Jenkins and Jenkins plugins\"\n") nil nil nil nil nil nil nil nil nil "[oss-security] Multiple vulnerabilities in Jenkins and Jenkins plugins" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 31989 invoked by uid 550); 25 Sep 2019 14:42:18 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 31971 invoked from network); 25 Sep 2019 14:42:18 -0000
From: Daniel Beck <ml@beckweb.net>
Content-Type: text/plain;
	charset=utf-8
Content-Transfer-Encoding: quoted-printable
Mime-Version: 1.0 (Mac OS X Mail 12.4 \(3445.104.11\))
Message-Id: <D2BAE5FB-509F-4686-BE38-CFE723205664@beckweb.net>
Date: Wed, 25 Sep 2019 16:42:06 +0200
To: oss-security@lists.openwall.com
X-Mailer: Apple Mail (2.3445.104.11)
X-bounce-key: webpack.hosteurope.de;ml@beckweb.net;1569422537;2744749a;
X-HE-SMSGID: 1iD8UY-0006GB-IQ
Subject: [oss-security] Multiple vulnerabilities in Jenkins and Jenkins plugins

Jenkins is an open source automation server which enables developers around
the world to reliably build, test, and deploy their software. The following
releases contain fixes for security vulnerabilities:

* Jenkins weekly 2.197
* Jenkins LTS 2.176.4 and 2.190.1
* Aqua MicroScanner Plugin 1.0.8
* Aqua Security Scanner Plugin 3.0.18
* Data Theorem: CI/CD Plugin 1.4.0
* Git Changelog Plugin 2.18
* GitLab Logo Plugin 1.0.4
* Inedo BuildMaster Plugin Plugin 2.5.0
* Inedo ProGet Plugin Plugin 1.3
* Log Parser Plugin 2.1
* NeuVector Vulnerability Scanner Plugin version 1.6
* Project Inheritance Plugin 19.08.02
* Violation Comments to GitLab Plugin 2.29

Additionally, we announce unresolved security issues in the following
plugins:

* Assembla Plugin
* Azure Event Grid Build Notifier Plugin
* Call Remote Job Plugin
* CodeScan Plugin
* elOyente Plugin
* Gem Publisher Plugin
* Google Calendar Plugin
* Kubernetes :: Pipeline :: Arquillian Steps Plugin
* Kubernetes :: Pipeline :: Kubernetes Steps Plugin
* vFabric Application Director Plugin

Summaries of the vulnerabilities are below. More details, severity, and
attribution can be found here:
https://jenkins.io/security/advisory/2019-09-25/

We provide advance notification for security updates on this mailing list:
https://groups.google.com/d/forum/jenkinsci-advisories

If you discover security vulnerabilities in Jenkins, please report them as
described here:
https://jenkins.io/security/#reporting-vulnerabilities

---

SECURITY-1498 / CVE-2019-10401
Jenkins form controls include an expandable textbox that can transform
from a single-line text box to a multi-line text area.

The implementation of this transformation interpreted the text content of
the form field as HTML. This resulted in a cross-site scripting
vulnerability exploitable by attackers able to control the contents of
such f:expandableTextbox form controls.


SECURITY-1525 / CVE-2019-10402
Jenkins interpreted items added to f:combobox form controls as HTML. This
resulted in a cross-site scripting vulnerability exploitable by attackers
able to control the contents of f:combobox form controls.


SECURITY-1537 (1) / CVE-2019-10403
Jenkins did not escape the tag name on the tooltip for tag actions shown
in the build history. This resulted in a cross-site scripting
vulnerability exploitable by attackers able to control the SCM tag name
for these actions.


SECURITY-1537 (2) / CVE-2019-10404
Jenkins did not escape the reason a queue item is blocked in tooltips.
This resulted in a cross-site scripting vulnerability exploitable by
attackers able to control the reason a queue item is blocked, for example
a label expression that does not match idle executors.


SECURITY-1505 / CVE-2019-10405
Jenkins shows various technical information about the current user on the
/whoAmI URL. The information shown includes HTTP request headers.

This allowed attackers able to exploit another cross-site scripting
vulnerability to obtain the Cookie header=E2=80=99s value even if the HttpO=
nly
flag would prevent direct access via JavaScript.


SECURITY-1471 / CVE-2019-10406
Jenkins did not validate or otherwise limit the possible values
administrators could specify as Jenkins root URL.

This resulted in a cross-site scripting vulnerability exploitable by users
with Overall/Administer permission.


SECURITY-351 / CVE-2019-10407
Mask Passwords Plugin allows users to define secret environment variables
(typically passwords) to be passed to builds, both globally, and for
specific jobs. These environment variables are expected to not be shown.

Project Inheritance Plugin showed the variable values on its Full Build
Flow view and included them in the metadata download without masking.


SECURITY-401 / CVE-2019-10408 (CSRF), CVE-2019-10409 (permission check)
Project Inheritance Plugin allows the creation of projects based on
templates defined in the plugin configuration.

A missing permission check in the HTTP endpoint triggering project
creation allowed users with Overall/Read permission to create these
projects. Additionally, the HTTP endpoint did not require POST requests,
resulting in a CSRF vulnerability.


SECURITY-732 / CVE-2019-10410
Log Parser Plugin did not escape an error message shown when log parsing
patterns are invalid. This resulted in a persisted cross-site scripting
vulnerability exploitable by attackers able to control the log parsing
rules configuration, typically users with Job/Configure permission.

Jenkins applies the missing escaping by default since 2.146 and LTS
2.138.2, so newer Jenkins releases are not affected by this vulnerability.


SECURITY-1504 / CVE-2019-10430
NeuVector Vulnerability Scanner Plugin stored registry credentials
unencrypted in its global configuration file on the Jenkins master. These
credentials could be viewed by users with access to the master file system.


SECURITY-1507 / CVE-2019-10427
Aqua MicroScanner Plugin stores a token credential in its global Jenkins
configuration.

While the token is stored encrypted on disk, it was transmitted in plain
text as part of the configuration form. This could result in exposure of the
token through browser extensions, cross-site scripting vulnerabilities, and
similar situations.


SECURITY-1508 / CVE-2019-10428
Aqua Security Scanner Plugin stores a password in its global Jenkins
configuration.

While the password is stored encrypted on disk, it was transmitted in plain
text as part of the configuration form. This could result in exposure of the
password through browser extensions, cross-site scripting vulnerabilities,
and similar situations.


SECURITY-1513 / CVE-2019-10411
Inedo BuildMaster Plugin Plugin stores a service password in its global
Jenkins configuration.

While the password is stored encrypted on disk, it was transmitted in plain
text as part of the configuration form. This could result in exposure of the
password through browser extensions, cross-site scripting vulnerabilities,
and similar situations.


SECURITY-1514 / CVE-2019-10412
Inedo ProGet Plugin Plugin stores a service password in its global Jenkins
configuration.

While the password is stored encrypted on disk, it was transmitted in plain
text as part of the configuration form. This could result in exposure of the
password through browser extensions, cross-site scripting vulnerabilities,
and similar situations.


SECURITY-1557 / CVE-2019-10413
Data Theorem: CI/CD Plugin stored a proxy password unencrypted in job
config.xml files on the Jenkins master. This password could be viewed by
users with Extended Read permission, or access to the master file system.


SECURITY-1574 / CVE-2019-10414
Git Changelog Plugin stored MediaWiki and Jira passwords unencrypted in job
config.xml files on the Jenkins master. These passwords could be viewed by
users with Extended Read permission, or access to the master file system.


SECURITY-1575 / CVE-2019-10429
GitLab Logo Plugin stored a private token unencrypted in its global
configuration file on the Jenkins master. This token could be viewed by
users with access to the master file system.


SECURITY-1577 / CVE-2019-10415 (global password), CVE-2019-10416 (job passw=
ord)
Violation Comments to GitLab Plugin stored API tokens unencrypted in job
config.xml files and its global configuration file on the Jenkins master.
These credentials could be viewed by users with Extended Read permission, or
access to the master file system.


SECURITY-920 (1) / CVE-2019-10417
Kubernetes :: Pipeline :: Kubernetes Steps Plugin defines a custom whitelist
for all scripts protected by the Script Security sandbox.

This custom whitelist allows the use of methods that can be used to bypass
Script Security sandbox protection. This results in arbitrary code execution
on any Jenkins instance with this plugin installed.

As of publication of this advisory, there is no fix.


SECURITY-920 (2) / CVE-2019-10418
Kubernetes :: Pipeline :: Arquillian Steps Plugin defines a custom whitelist
for all scripts protected by the Script Security sandbox.

This custom whitelist allows the use of methods that can be used to bypass
Script Security sandbox protection. This results in arbitrary code execution
on any Jenkins instance with this plugin installed.

As of publication of this advisory, there is no fix.


SECURITY-1541 / CVE-2019-10419
vFabric Application Director Plugin stores the Application Director password
unencrypted in its global configuration file on the Jenkins master. This
password can be viewed by users with access to the master file system.

As of publication of this advisory, there is no fix.


SECURITY-1543 / CVE-2019-10420
Assembla Plugin stores the Assembla password unencrypted in its global
configuration file on the Jenkins master. This password can be viewed by
users with access to the master file system.

As of publication of this advisory, there is no fix.


SECURITY-1544 / CVE-2019-10421
Azure Event Grid Build Notifier Plugin stores the Azure Event Grid secret
key unencrypted in job config.xml files on the Jenkins master. This key can
be viewed by users with Extended Read permission, or access to the master
file system.

As of publication of this advisory, there is no fix.


SECURITY-1548 / CVE-2019-10422
Call Remote Job Plugin stores a password unencrypted in job config.xml files
on the Jenkins master. This password can be viewed by users with Extended
Read permission, or access to the master file system.

As of publication of this advisory, there is no fix.


SECURITY-1551 / CVE-2019-10423
CodeScan Plugin stores an API key unencrypted in its global configuration
file on the Jenkins master. This API key can be viewed by users with access
to the master file system.

As of publication of this advisory, there is no fix.


SECURITY-1561 / CVE-2019-10424
elOyente Plugin stores a password unencrypted in its global configuration
file on the Jenkins master. This password can be viewed by users with access
to the master file system.

As of publication of this advisory, there is no fix.


SECURITY-1572 / CVE-2019-10425
Google Calendar Plugin stores a calendar password unencrypted in job
config.xml files on the Jenkins master. This password can be viewed by users
with Extended Read permission, or access to the master file system.

As of publication of this advisory, there is no fix.


SECURITY-1573 / CVE-2019-10426
Gem Publisher Plugin stores an API key unencrypted in its global
configuration file on the Jenkins master. This API key can be viewed by
users with access to the master file system.

As of publication of this advisory, there is no fix.

