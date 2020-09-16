X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["9806" "Wednesday" "16" "September" "2020" "15:13:22" "+0200" "Daniel Beck" "ml@beckweb.net" "<FD6A661E-E3CE-43BD-BA96-27B337545A10@beckweb.net>" "281" "[oss-security] Multiple vulnerabilities in Jenkins plugins" nil nil nil "9" "2020091613:13:22" "[oss-security] Multiple vulnerabilities in Jenkins plugins" (number mark "U       ml@beckweb.n Sep 16  281/9806  " thread-indent "\"[oss-security] Multiple vulnerabilities in Jenkins plugins\"\n") nil nil nil nil nil nil nil nil nil "[oss-security] Multiple vulnerabilities in Jenkins plugins" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 27665 invoked by uid 550); 16 Sep 2020 13:13:34 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 26623 invoked from network); 16 Sep 2020 13:13:34 -0000
From: Daniel Beck <ml@beckweb.net>
Content-Type: text/plain;
	charset=us-ascii
Content-Transfer-Encoding: quoted-printable
Mime-Version: 1.0 (Mac OS X Mail 12.4 \(3445.104.15\))
Message-Id: <FD6A661E-E3CE-43BD-BA96-27B337545A10@beckweb.net>
Date: Wed, 16 Sep 2020 15:13:22 +0200
To: oss-security@lists.openwall.com
X-Mailer: Apple Mail (2.3445.104.15)
X-bounce-key: webpack.hosteurope.de;ml@beckweb.net;1600262014;3998f986;
X-HE-SMSGID: 1kIXFS-0003FQ-Ko
Subject: [oss-security] Multiple vulnerabilities in Jenkins plugins

Jenkins is an open source automation server which enables developers around
the world to reliably build, test, and deploy their software.

The following releases contain fixes for security vulnerabilities:

* Blue Ocean Plugin 1.23.3
* computer-queue-plugin Plugin 1.6
* Email Extension Plugin 2.76
* Health Advisor by CloudBees Plugin 3.2.1
* Mailer Plugin 1.32.1
* Perfecto Plugin 1.18
* Pipeline Maven Integration Plugin 3.9.3
* Validating String Parameter Plugin 2.5

Additionally, we announce unresolved security issues in the following
plugins:

* Android Lint Plugin
* chosen-views-tabbar Plugin
* ClearCase Release Plugin
* Copy data to workspace Plugin
* Coverage/Complexity Scatter Plot Plugin
* Custom Job Icon Plugin
* Description Column Plugin
* ElasTest Plugin
* Locked Files Report Plugin
* MongoDB Plugin
* Radiator View Plugin
* Selection tasks Plugin
* Storable Configs Plugin

Summaries of the vulnerabilities are below. More details, severity, and
attribution can be found here:
https://www.jenkins.io/security/advisory/2020-09-16/

We provide advance notification for security updates on this mailing list:
https://groups.google.com/d/forum/jenkinsci-advisories

If you discover security vulnerabilities in Jenkins, please report them as
described here:
https://www.jenkins.io/security/#reporting-vulnerabilities

---

SECURITY-1813 / CVE-2020-2252
Mailer Plugin 1.32 and earlier does not perform hostname validation when
connecting to the configured SMTP server. This lack of validation could be
abused using a man-in-the-middle attack to intercept these connections.


SECURITY-1851 / CVE-2020-2253
Email Extension Plugin 2.75 and earlier does not perform hostname
validation when connecting to the configured SMTP server. This lack of
validation could be abused using a man-in-the-middle attack to intercept
these connections.


SECURITY-1956 / CVE-2020-2254
Blue Ocean Plugin 1.23.2 and earlier provides an undocumented feature flag,
`blueocean.features.GIT_READ_SAVE_TYPE`, that when set to the value `clone`
allows an attacker with Item/Configure or Item/Create permission to read
arbitrary files on the Jenkins controller file system.


SECURITY-1961 / CVE-2020-2255
A missing permission check in a REST API in Blue Ocean Plugin 1.23.2 and
earlier allows attackers with Overall/Read permission to initiate a
connection test to an attacker-specified URL.


SECURITY-1976 / CVE-2020-2256
Pipeline Maven Integration Plugin 3.9.2 and earlier does not escape the
upstream job's display name shown as part of a build cause.

This results in a stored cross-site scripting (XSS) vulnerability
exploitable by attackers with Job/Configure permission.


SECURITY-1935 / CVE-2020-2257
Validating String Parameter Plugin 2.4 and earlier does not escape regular
expressions in tooltips. Additionally, Validating String Parameter Plugin
2.4 does not escape parameter names and parameter descriptions.

This results in a stored cross-site scripting (XSS) vulnerability
exploitable by attackers with Job/Configure permission.


SECURITY-1998 / CVE-2020-2258
Health Advisor by CloudBees Plugin 3.2.0 and earlier does not correctly
perform a permission check in an HTTP endpoint.

This allows attackers with Overall/Read permission to view an
administrative configuration page.


SECURITY-1912 / CVE-2020-2259
computer-queue-plugin Plugin 1.5 and earlier does not escape the agent name
in tooltips.

This results in a stored cross-site scripting (XSS) vulnerability
exploitable by attackers with Agent/Configure permission.


SECURITY-1979 / CVE-2020-2260
Perfecto Plugin 1.17 and earlier does not perform a permission check in a
method implementing a connection test.

This allows attackers with Overall/Read permission to connect to an
attacker-specified HTTP URL using attacker-specified username and password.


SECURITY-1980 / CVE-2020-2261
Perfecto Plugin allows specifying Perfecto Connect Path and Perfecto
Connect File Name in job configurations.

This command is executed on the Jenkins controller in Perfecto Plugin 1.17
and earlier, allowing attackers with Job/Configure permission to run
arbitrary commands on the Jenkins controller.


SECURITY-1908 / CVE-2020-2262
Android Lint Plugin 2.6 and earlier does not escape the annotation message
in tooltips.

This results in a stored cross-site scripting (XSS) vulnerability
exploitable by attackers able to provide report files to the 'Publish
Android Lint results' post-build step.

As of publication of this advisory, there is no fix.


SECURITY-1927 / CVE-2020-2263
Radiator View Plugin 1.29 and earlier does not escape the full name of the
jobs in tooltips.

This results in a stored cross-site scripting (XSS) vulnerability
exploitable by attackers with Job/Configure permission.

As of publication of this advisory, there is no fix.


SECURITY-1914 / CVE-2020-2264
Custom Job Icon Plugin 0.2 and earlier does not escape the job descriptions
in tooltips.

This results in a stored cross-site scripting (XSS) vulnerability
exploitable by attackers with Job/Configure permission.

As of publication of this advisory, there is no fix.


SECURITY-1913 / CVE-2020-2265
Coverage/Complexity Scatter Plot Plugin 1.1.1 and earlier does not escape
the method information in tooltips.

This results in a stored cross-site scripting (XSS) vulnerability
exploitable by attackers able to provide report files to the 'Publish
Coverage / Complexity Scatter Plot' post-build step.

As of publication of this advisory, there is no fix.


SECURITY-1916 / CVE-2020-2266
Description Column Plugin 1.3 and earlier does not escape the job
description in the column tooltips.

This results in a stored cross-site scripting (XSS) vulnerability
exploitable by attackers with Job/Configure permission.

As of publication of this advisory, there is no fix.


SECURITY-1904 / CVE-2020-2267 (missing permission check) & CVE-2020-2268 (C=
SRF)
MongoDB Plugin 1.3 and earlier does not perform permission checks in
methods implementing form validation.

This allows attackers with Overall/Read permission to gain access to some
metadata of any arbitrary files on the Jenkins controller.

Additionally, these form validation methods do not require POST requests,
resulting in a cross-site request forgery (CSRF) vulnerability.

As of publication of this advisory, there is no fix.


SECURITY-1869 / CVE-2020-2269
chosen-views-tabbar Plugin 1.2 and earlier does not escape view names in
the dropdown to select views.

This results in a stored cross-site scripting (XSS) vulnerability
exploitable by attackers with the ability to configure views.

As of publication of this advisory, there is no fix.


SECURITY-1911 / CVE-2020-2270
ClearCase Release Plugin 0.3 and earlier does not escape the composite
baseline in badge tooltip.

This results in a stored cross-site scripting (XSS) vulnerability
exploitable by attackers with Job/Configure permission.

As of publication of this advisory, there is no fix.


SECURITY-1921 / CVE-2020-2271
Locked Files Report Plugin 1.6 and earlier does not escape locked files'
names in tooltips.

This results in a stored cross-site scripting (XSS) vulnerability
exploitable by attackers with Job/Configure permission.

As of publication of this advisory, there is no fix.


SECURITY-1903 / CVE-2020-2272 (missing permission check) & CVE-2020-2273 (C=
SRF)
ElasTest Plugin 1.2.1 and earlier does not perform a permission check in a
method implementing form validation.

This allows attackers with Overall/Read permission to connect to an
attacker-specified URL using attacker-specified credentials.

Additionally, this form validation method does not require POST requests,
resulting in a cross-site request forgery (CSRF) vulnerability.

As of publication of this advisory, there is no fix.


SECURITY-2014 / CVE-2020-2274
ElasTest Plugin 1.2.1 and earlier stores its server password in plain text
in the global configuration file
`jenkins.plugins.elastest.ElasTestInstallation.xml`. This password can be
viewed by users with access to the Jenkins controller file system.

As of publication of this advisory, there is no fix.


SECURITY-1966 / CVE-2020-2275
Copy data to workspace Plugin allows users to copy files from the Jenkins
controller to job workspaces.

Copy data to workspace Plugin 1.0 and earlier does not limit which
directories can be copied. This allows attackers with Job/Configure
permission to read arbitrary files on the Jenkins controller.

As of publication of this advisory, there is no fix.


SECURITY-1967 / CVE-2020-2276
Selection tasks Plugin implements a job parameter that dynamically
generates possible values from the output of a program. The path to that
program is specified as part of the parameter configuration.

Selection tasks Plugin 1.0 and earlier executes this user-specified program
on the Jenkins controller. This allows attackers with Job/Configure
permission to execute an arbitrary system command on the Jenkins controller
as the OS user that the Jenkins process is running as.

As of publication of this advisory, there is no fix.


SECURITY-1968 (1) / CVE-2020-2277
Storable Configs Plugin 1.0 and earlier allows users with Job/Read
permission to read arbitrary files on the Jenkins controller.

As of publication of this advisory, there is no fix.


SECURITY-1968 (2) / CVE-2020-2278
Storable Configs Plugin allows storing copies of a job's `config.xml` file
on the Jenkins controller with a user-specified file name.

Storable Configs Plugin 1.0 and earlier does not restrict the
user-specified file name, except that a `.xml` suffix is added if it's not
already present. This allows attackers with Job/Configure permission to
replace any other `.xml` file on the Jenkins controller with the job's
`config.xml` file's content.

As of publication of this advisory, there is no fix.=
