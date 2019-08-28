X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["2475" "Wednesday" "28" "August" "2019" "17:24:34" "+0200" "Daniel Beck" "ml@beckweb.net" nil "61" nil "^Date:" nil nil "8" nil nil (number mark "U       ml@beckweb.n Aug 28   61/2475  " thread-indent "\"[oss-security] Multiple vulnerabilities in Jenkins and Jenkins plugins\"\n") nil nil nil nil nil nil nil nil nil "[oss-security] Multiple vulnerabilities in Jenkins and Jenkins plugins" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 9815 invoked by uid 550); 28 Aug 2019 15:24:48 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 9740 invoked from network); 28 Aug 2019 15:24:47 -0000
Content-Type: text/plain;
	charset=utf-8
Content-Transfer-Encoding: quoted-printable
Mime-Version: 1.0 (Mac OS X Mail 12.4 \(3445.104.11\))
Message-Id: <F41F4F95-9437-437A-A2C7-DC86D5A47AE2@beckweb.net>
X-Mailer: Apple Mail (2.3445.104.11)
X-bounce-key: webpack.hosteurope.de;ml@beckweb.net;1567005887;b4fefd4b;
X-HE-SMSGID: 1i2zoJ-0000VM-BV
Date: Wed, 28 Aug 2019 17:24:34 +0200
From: Daniel Beck <ml@beckweb.net>
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] Multiple vulnerabilities in Jenkins and Jenkins plugins
To: oss-security@lists.openwall.com

Jenkins is an open source automation server which enables developers around
the world to reliably build, test, and deploy their software. The following
releases contain fixes for security vulnerabilities:

* Jenkins weekly 2.192
* Jenkins LTS 2.176.3
* IBM Application Security on Cloud 1.2.5
* Splunk Plugin 1.8.0

Summaries of the vulnerabilities are below. More details, severity, and
attribution can be found here:
https://jenkins.io/security/advisory/2019-08-28/

We provide advance notification for security updates on this mailing list:
https://groups.google.com/d/forum/jenkinsci-advisories

If you discover security vulnerabilities in Jenkins, please report them as
described here:
https://jenkins.io/security/#reporting-vulnerabilities

---

SECURITY-1453 / CVE-2019-10383
Jenkins did not properly escape the update site URL in some status=20
messages shown in the update center, resulting in a stored cross-site=20
scripting vulnerability that is exploitable by administrators and affects=20
other administrators.


SECURITY-1491 / CVE-2019-10384
Jenkins allowed the creation of CSRF tokens without a corresponding web=20
session ID. This is the result of an incomplete fix for SECURITY-626 in=20
the 2019-07-17 security advisory. This allowed attackers able to obtain a=20
CSRF token without associated session ID to implement CSRF attacks with=20
the following constraints:

* The token had to be created for the anonymous user (and could only be=20
  used for actions the anonymous user can perform)
* The victim=E2=80=99s IP address needed to remain unchanged (unless the pr=
oxy=20
  compatibility option was enabled)
* The victim must not have a valid web session at the time of the attack


SECURITY-1294 / CVE-2019-10390
Splunk Plugin has a form validation HTTP endpoint used to validate a user-
submitted Groovy script through compilation, which was not subject to=20
sandbox protection. This allowed attackers with Overall/Read access to=20
execute arbitrary code on the Jenkins master by applying AST transforming=20
annotations such as @Grab to source code elements.


SECURITY-1512 / CVE-2019-10391
IBM Application Security on Cloud Plugin stores service passwords in job
configurations.

While the password is stored encrypted on disk, it was transmitted in=20
plain text as part of the configuration form. This could result in=20
exposure of the password through browser extensions, cross-site scripting=20
vulnerabilities, and similar situations.

