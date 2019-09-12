X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["3176" "Thursday" "12" "September" "2019" "15:50:36" "+0200" "Daniel Beck" "ml@beckweb.net" "<A5414228-4516-4048-B84F-92519BB679C3@beckweb.net>" "86" "[oss-security] Multiple vulnerabilities in Jenkins plugins" nil nil nil "9" "2019091213:50:36" "[oss-security] Multiple vulnerabilities in Jenkins plugins" (number mark "U       ml@beckweb.n Sep 12   86/3176  " thread-indent "\"[oss-security] Multiple vulnerabilities in Jenkins plugins\"\n") nil nil nil nil nil nil nil nil nil "[oss-security] Multiple vulnerabilities in Jenkins plugins" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 2026 invoked by uid 550); 12 Sep 2019 13:50:48 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 2008 invoked from network); 12 Sep 2019 13:50:48 -0000
From: Daniel Beck <ml@beckweb.net>
Content-Type: text/plain;
	charset=us-ascii
Content-Transfer-Encoding: quoted-printable
Mime-Version: 1.0 (Mac OS X Mail 12.4 \(3445.104.11\))
Message-Id: <A5414228-4516-4048-B84F-92519BB679C3@beckweb.net>
Date: Thu, 12 Sep 2019 15:50:36 +0200
To: oss-security@lists.openwall.com
X-Mailer: Apple Mail (2.3445.104.11)
X-bounce-key: webpack.hosteurope.de;ml@beckweb.net;1568296248;e35c79d4;
X-HE-SMSGID: 1i8PUa-0003fS-Ps
Subject: [oss-security] Multiple vulnerabilities in Jenkins plugins

Jenkins is an open source automation server which enables developers around
the world to reliably build, test, and deploy their software. The following
releases contain fixes for security vulnerabilities:

* Aqua Security Serverless Scanner Plugin 1.0.5
* Beaker builder Plugin 1.10
* Build Environment Plugin 1.7
* Dashboard View Plugin 2.12
* Git client Plugin 2.8.5
* Script Security Plugin 1.63

Summaries of the vulnerabilities are below. More details, severity, and
attribution can be found here:
https://jenkins.io/security/advisory/2019-09-12/

We provide advance notification for security updates on this mailing list:
https://groups.google.com/d/forum/jenkinsci-advisories

If you discover security vulnerabilities in Jenkins, please report them as
described here:
https://jenkins.io/security/#reporting-vulnerabilities

---

SECURITY-1534 / CVE-2019-10392
Git client Plugin accepts user-specified values as argument to an invocatio=
n=20
of `git ls-remote` to validate the existence of a Git repository at the=20
specified URL. This was implemented in a way that allowed attackers with
Job/Configure permission to execute an arbitrary system command on the=20
Jenkins master as the OS user that the Jenkins process is running as.


SECURITY-1538 / CVE-2019-10393, CVE-2019-10394, CVE-2019-10399, CVE-2019-10=
400
Sandbox protection in Script Security Plugin could be circumvented through=
=20
any of the following:

- Crafted method names in method call expressions (CVE-2019-10393)
- Crafted property names in property expressions on the left-hand side of=20
  assignment expressions (CVE-2019-10394)
- Crafted property names in property expressions in increment and decrement=
=20
  expressions (CVE-2019-10399)
- Crafted subexpressions in increment and decrement expressions not=20
  involving actual assignment (CVE-2019-10400)

This allowed attackers able to specify and run sandboxed scripts to execute
arbitrary code in the context of the Jenkins master JVM.


SECURITY-1476 / CVE-2019-10395
Build Environment Plugin did not escape values of environment variables=20
shown on its views. This resulted in a cross-site scripting vulnerability=20
exploitable by attackers able to control the values of build environment=20
variables, typically users with Job/Configure or Job/Build permission.


SECURITY-1489 / CVE-2019-10396
Dashboard View Plugin did not escape the build description on the Latest=20
Builds View. This resulted in a cross-site scripting vulnerability=20
exploitable by attackers able to control the description of builds shown on=
=20
that view.


SECURITY-1509 / CVE-2019-10397
Aqua Security Serverless Scanner Plugin stores service passwords in job=20
configurations.

While the password is stored encrypted on disk, it was transmitted in plain=
=20
text as part of the configuration form. This could result in exposure of th=
e=20
password through browser extensions, cross-site scripting vulnerabilities,=
=20
and similar situations.


SECURITY-1545 / CVE-2019-10398
Beaker builder Plugin stored the Beaker password unencrypted on the Jenkins=
=20
master. This password could be viewed by users with access to the master=20
file system.

