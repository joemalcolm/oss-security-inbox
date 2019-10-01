X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["2605" "Tuesday" "1" "October" "2019" "15:27:41" "+0200" "Daniel Beck" "ml@beckweb.net" "<B6CBEED3-F9D1-445F-8F6D-643C6F9F0EAE@beckweb.net>" "74" "[oss-security] Multiple vulnerabilities in Jenkins plugins" nil nil nil "10" "2019100113:27:41" "[oss-security] Multiple vulnerabilities in Jenkins plugins" (number mark "U       ml@beckweb.n Oct  1   74/2605  " thread-indent "\"[oss-security] Multiple vulnerabilities in Jenkins plugins\"\n") nil nil nil nil nil nil nil nil nil "[oss-security] Multiple vulnerabilities in Jenkins plugins" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 3428 invoked by uid 550); 1 Oct 2019 13:27:53 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 3410 invoked from network); 1 Oct 2019 13:27:52 -0000
From: Daniel Beck <ml@beckweb.net>
Content-Type: text/plain;
	charset=utf-8
Content-Transfer-Encoding: quoted-printable
Mime-Version: 1.0 (Mac OS X Mail 12.4 \(3445.104.11\))
Message-Id: <B6CBEED3-F9D1-445F-8F6D-643C6F9F0EAE@beckweb.net>
Date: Tue, 1 Oct 2019 15:27:41 +0200
To: oss-security@lists.openwall.com
X-Mailer: Apple Mail (2.3445.104.11)
X-bounce-key: webpack.hosteurope.de;ml@beckweb.net;1569936472;7c166ee8;
X-HE-SMSGID: 1iFIBp-000515-6C
Subject: [oss-security] Multiple vulnerabilities in Jenkins plugins

Jenkins is an open source automation server which enables developers around
the world to reliably build, test, and deploy their software. The following
releases contain fixes for security vulnerabilities:

* HTML Publisher Plugin 1.21
* Script Security Plugin 1.65

Additionally, we announce unresolved security issues in the following
plugins:

* Dingding[=E9=92=89=E9=92=89] Plugin
* LDAP Email
* SourceGear Vault

Summaries of the vulnerabilities are below. More details, severity, and
attribution can be found here:
https://jenkins.io/security/advisory/2019-10-01/

We provide advance notification for security updates on this mailing list:
https://groups.google.com/d/forum/jenkinsci-advisories

If you discover security vulnerabilities in Jenkins, please report them as
described here:
https://jenkins.io/security/#reporting-vulnerabilities

---

SECURITY-1579 / CVE-2019-10431
Sandbox protection in Script Security Plugin could be circumvented through
default parameter expressions in constructors.

This allowed attackers able to specify and run sandboxed scripts to
execute arbitrary code in the context of the Jenkins master JVM.


SECURITY-1590 / CVE-2019-10432
HTML Publisher Plugin did not escape the project or build display name
shown in the frame HTML page. This resulted in a cross-site scripting
vulnerability exploitable by attackers able to control the project or
build display name, typically users with Job/Configure or Build/Update
permission.


SECURITY-1423 / CVE-2019-10433
Dingding[=E9=92=89=E9=92=89] Plugin stores an access token unencrypted in j=
ob config.xml
files on the Jenkins master. This token can be viewed by users with
Extended Read permission, or access to the master file system.

As of publication of this advisory, there is no fix.


SECURITY-1515 / CVE-2019-10434
LDAP Email Plugin stores an LDAP bind password in its global Jenkins
configuration.

While the password is stored encrypted on disk, it is transmitted in plain
text as part of the configuration form. This can result in exposure of the
password through browser extensions, cross-site scripting vulnerabilities,
and similar situations.

As of publication of this advisory, there is no fix.


SECURITY-1524 / CVE-2019-10435
SourceGear Vault Plugin stores an SCM password in job configurations.

While the password is stored encrypted on disk, it is transmitted in plain
text as part of the configuration form. This can result in exposure of the
password through browser extensions, cross-site scripting vulnerabilities,
and similar situations.

As of publication of this advisory, there is no fix.

