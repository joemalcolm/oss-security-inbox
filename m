X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["5869" "Tuesday" "1" "September" "2020" "15:40:11" "+0200" "Daniel Beck" "ml@beckweb.net" "<D3E42EB3-B891-4E7D-8F23-B5C551998DB4@beckweb.net>" "165" "[oss-security] Multiple vulnerabilities in Jenkins plugins" nil nil nil "9" "2020090113:40:11" "[oss-security] Multiple vulnerabilities in Jenkins plugins" (number mark "U       ml@beckweb.n Sep  1  165/5869  " thread-indent "\"[oss-security] Multiple vulnerabilities in Jenkins plugins\"\n") nil nil nil nil nil nil nil nil nil "[oss-security] Multiple vulnerabilities in Jenkins plugins" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 11439 invoked by uid 550); 1 Sep 2020 13:40:24 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 11421 invoked from network); 1 Sep 2020 13:40:23 -0000
From: Daniel Beck <ml@beckweb.net>
Content-Type: text/plain;
	charset=us-ascii
Content-Transfer-Encoding: quoted-printable
Mime-Version: 1.0 (Mac OS X Mail 12.4 \(3445.104.15\))
Message-Id: <D3E42EB3-B891-4E7D-8F23-B5C551998DB4@beckweb.net>
Date: Tue, 1 Sep 2020 15:40:11 +0200
To: oss-security@lists.openwall.com
X-Mailer: Apple Mail (2.3445.104.15)
X-bounce-key: webpack.hosteurope.de;ml@beckweb.net;1598967623;a3fdb804;
X-HE-SMSGID: 1kD6WB-00016Z-TM
Subject: [oss-security] Multiple vulnerabilities in Jenkins plugins

Jenkins is an open source automation server which enables developers around
the world to reliably build, test, and deploy their software.

The following releases contain fixes for security vulnerabilities:

* Build Failure Analyzer Plugin 1.27.1
* Cadence vManager Plugin 3.0.5
* database Plugin 1.7
* Git Parameter Plugin 0.9.13
* Parameterized Remote Trigger Plugin 3.1.4
* SoapUI Pro Functional Testing Plugin 1.4

Additionally, we announce unresolved security issues in the following
plugins:

* JSGames Plugin
* Klocwork Analysis Plugin
* SoapUI Pro Functional Testing Plugin
* Team Foundation Server Plugin
* Valgrind Plugin

Summaries of the vulnerabilities are below. More details, severity, and
attribution can be found here:
https://www.jenkins.io/security/advisory/2020-09-01/

We provide advance notification for security updates on this mailing list:
https://groups.google.com/d/forum/jenkinsci-advisories

If you discover security vulnerabilities in Jenkins, please report them as
described here:
https://www.jenkins.io/security/#reporting-vulnerabilities

---

SECURITY-1884 / CVE-2020-2238
Git Parameter Plugin 0.9.12 and earlier does not escape the repository
field on the 'Build with Parameters' page.

This results in a stored cross-site scripting (XSS) vulnerability
exploitable by attackers with Job/Configure permission.


SECURITY-1625 / CVE-2020-2239
Parameterized Remote Trigger Plugin 3.1.3 and earlier stores a secret
unencrypted in its global configuration file
`org.jenkinsci.plugins.ParameterizedRemoteTrigger.RemoteBuildConfiguration.=
xml`
on the Jenkins controller as part of its configuration. This secret can be
viewed by attackers with access to the Jenkins controller file system.


SECURITY-1023 / CVE-2020-2240
database Plugin 1.6 and earlier does not require POST requests for the
database console, resulting in a cross-site request forgery (CSRF)
vulnerability.

This vulnerability allows attackers to execute arbitrary SQL scripts.


SECURITY-1024 / CVE-2020-2241 (CSRF) & CVE-2020-2242 (permission check)
database Plugin 1.6 and earlier does not perform a permission check in a
method implementing form validation.

This allows attackers with Overall/Read access to Jenkins to connect to an
attacker-specified database server using attacker-specified username and
password.

Additionally, this form validation method does not require POST requests,
resulting in a cross-site request forgery (CSRF) vulnerability.


SECURITY-1936 / CVE-2020-2243
Cadence vManager Plugin 3.0.4 and earlier does not escape build
descriptions in tooltips.

This results in a stored cross-site scripting (XSS) vulnerability
exploitable by attackers with Run/Update permission.


SECURITY-1770 / CVE-2020-2244
Build Failure Analyzer Plugin 1.27.0 and earlier does not escape matching
text in a form validation response.

This results in a cross-site scripting (XSS) vulnerability exploitable by
attackers able to provide console output for builds used to test build log
indications.


SECURITY-1829 / CVE-2020-2245
Valgrind Plugin 0.28 and earlier does not configure its XML parser to
prevent XML external entity (XXE) attacks.

This allows a user able to control the input files for the Valgrind plugin
parser to have Jenkins parse a crafted file that uses external entities for
extraction of secrets from the Jenkins controller or server-side request
forgery.=20=20

As of publication of this advisory, there is no fix.


SECURITY-1830 / CVE-2020-2246
Valgrind Plugin 0.28 and earlier does not escape content in Valgrind XML
reports.

This results in a stored cross-site scripting (XSS) vulnerability
exploitable by attackers able to control Valgrind XML report contents.

As of publication of this advisory, there is no fix.


SECURITY-1831 / CVE-2020-2247
Klocwork Analysis Plugin 2020.2.1 and earlier does not configure its XML
parser to prevent XML external entity (XXE) attacks.

This allows a user able to control the input files for the Klocwork plugin
parser to have Jenkins parse a crafted file that uses external entities for
extraction of secrets from the Jenkins controller or server-side request
forgery.

As of publication of this advisory, there is no fix.


SECURITY-1905 / CVE-2020-2248
JSGames Plugin 0.2 and earlier evaluates part of a URL as code.

This results in a reflected cross-site scripting (XSS) vulnerability.

As of publication of this advisory, there is no fix.


SECURITY-1506 / CVE-2020-2249
Team Foundation Server Plugin 5.157.1 and earlier stores a webhook secret
unencrypted in its global configuration file
`hudson.plugins.tfs.TeamPluginGlobalConfig.xml` on the Jenkins controller
as part of its configuration. This secret can be viewed by attackers with
access to the Jenkins controller file system.

As of publication of this advisory, there is no fix.


SECURITY-1631 (1) / CVE-2020-2250
SoapUI Pro Functional Testing Plugin 1.3 and earlier stores project
passwords unencrypted in job `config.xml` files as part of its
configuration. These project passwords can be viewed by attackers with
Extended Read permission or access to the Jenkins controller file system.


SECURITY-1631 (2) / CVE-2020-2251
SoapUI Pro Functional Testing Plugin stores project passwords in job
`config.xml` files on the Jenkins controller as part of its configuration.

While these passwords are stored encrypted on disk since SoapUI Pro
Functional Testing Plugin 1.4, they are transmitted in plain text as part
of the global configuration form by SoapUI Pro Functional Testing Plugin
1.5 and earlier. These passwords can be viewed by attackers with Extended
Read permission.

This only affects Jenkins before 2.236, including 2.235.x LTS, as Jenkins
2.236 introduces a security hardening that transparently encrypts and
decrypts data used for a Jenkins password form field.

As of publication of this advisory, there is no fix.



