X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["4395" "Thursday" "21" "November" "2019" "15:06:02" "+0100" "Daniel Beck" "ml@beckweb.net" "<7B09DDF8-2678-443F-B772-BC381D47D093@beckweb.net>" "118" "[oss-security] Multiple vulnerabilities in Jenkins plugins" nil nil nil "11" "2019112114:06:02" "[oss-security] Multiple vulnerabilities in Jenkins plugins" (number mark "U       ml@beckweb.n Nov 21  118/4395  " thread-indent "\"[oss-security] Multiple vulnerabilities in Jenkins plugins\"\n") nil nil nil nil nil nil nil nil nil "[oss-security] Multiple vulnerabilities in Jenkins plugins" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 30061 invoked by uid 550); 21 Nov 2019 14:06:15 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 30043 invoked from network); 21 Nov 2019 14:06:14 -0000
From: Daniel Beck <ml@beckweb.net>
Content-Type: text/plain;
	charset=utf-8
Content-Transfer-Encoding: quoted-printable
Mime-Version: 1.0 (Mac OS X Mail 12.4 \(3445.104.11\))
Message-Id: <7B09DDF8-2678-443F-B772-BC381D47D093@beckweb.net>
Date: Thu, 21 Nov 2019 15:06:02 +0100
To: oss-security@lists.openwall.com
X-Mailer: Apple Mail (2.3445.104.11)
X-bounce-key: webpack.hosteurope.de;ml@beckweb.net;1574345174;be35120c;
X-HE-SMSGID: 1iXn5v-0001Ij-4U
Subject: [oss-security] Multiple vulnerabilities in Jenkins plugins

Jenkins is an open source automation server which enables developers around
the world to reliably build, test, and deploy their software. The following
releases contain fixes for security vulnerabilities:

* Anchore Container Image Scanner Plugin 1.0.20
* Google Compute Engine Plugin 4.2.0
* JIRA Plugin 3.0.11
* QMetry for JIRA - Test Management Plugin 1.13
* Script Security Plugin 1.68
* Spira Importer Plugin 3.2.3
* Support Core Plugin 2.64

Additionally, we announce unresolved security issues in the following
plugins:

* QMetry for JIRA - Test Management Plugin

Summaries of the vulnerabilities are below. More details, severity, and
attribution can be found here:
https://jenkins.io/security/advisory/2019-11-21/

We provide advance notification for security updates on this mailing list:
https://groups.google.com/d/forum/jenkinsci-advisories

If you discover security vulnerabilities in Jenkins, please report them as
described here:
https://jenkins.io/security/#reporting-vulnerabilities

---

SECURITY-1658 / CVE-2019-16538
Sandbox protection in Script Security Plugin could be circumvented through=
=20
closure default parameter expressions.

This allowed attackers able to specify and run sandboxed scripts to=20
execute arbitrary code in the context of the Jenkins master JVM.


SECURITY-1634 / CVE-2019-16539 (permission check), CVE-2019-16540 (path tra=
versal)
Support Core Plugin did not validate the paths submitted for the "Delete=20
Support Bundles" feature. This allowed users to delete arbitrary files on=20
the Jenkins master file system accessible to the OS user account running=20
Jenkins.

Additionally, this endpoint did not perform a permission check, allowing=20
users with Overall/Read permission to delete support bundles, and any=20
arbitrary other file, with a known name/path.


SECURITY-1106 / CVE-2019-16541
JIRA Plugin allows the definition of per-folder Jira sites.

The credentials lookup for this feature did not set the appropriate=20
context, allowing the use of System-scoped credentials otherwise reserved=20
for use in the global configuration. This allowed users with Item/Configure
permission on the folder to access credentials they=E2=80=99re not entitled=
 to,=20
and potentially capture them.


SECURITY-1539 / CVE-2019-16542
Anchore Container Image Scanner Plugin stored an Anchore.io service=20
password unencrypted in job config.xml files as part of its configuration.=
=20
This credential could be viewed by users with Extended Read permission or=20
access to the master file system.


SECURITY-1554 / CVE-2019-16543
Spira Importer Plugin stored a credential unencrypted in its global=20
configuration file com.inflectra.spiratest.plugins.SpiraBuilder.xml on the=
=20
Jenkins master. This credential could be viewed by users with access to=20
the master file system.


SECURITY-1584 / CVE-2019-16546
Google Compute Engine Plugin did not use SSH host key verification when=20
connecting to VMs launched by the plugin. This lack of verification could=20
be abused by a MitM attacker to intercept these connections to=20
attacker-specified build agents without warning.


SECURITY-1585 / CVE-2019-16547
Google Compute Engine Plugin did not verify permissions on multiple=20
auto-complete API endpoints. This allowed users with Overall/Read=20
permissions to view various metadata about the running cloud environment.


SECURITY-1586 / CVE-2019-16548
Google Compute Engine Plugin did not require POST requests on an API=20
endpoint. This CSRF vulnerability allowed attackers to provision new=20
agents.


SECURITY-727 (1) / CVE-2019-16544
QMetry for JIRA - Test Management Plugin stored credentials unencrypted in=
=20
job config.xml files on the Jenkins master as part of its post-build step=20
configuration. This credential could be viewed by users with Extended Read=
=20
permission or access to the master file system.


SECURITY-727 (2) / CVE-2019-16545
QMetry for JIRA - Test Management Plugin stores a credential as part of=20
its post-build step configuration.

While the password is stored encrypted on disk since QMetry for JIRA -=20
Test Management Plugin 1.13, it is transmitted in plain text as part of=20
the configuration form. This can result in exposure of the password=20
through browser extensions, cross-site scripting vulnerabilities, and=20
similar situations.

As of publication of this advisory, there is no fix.

