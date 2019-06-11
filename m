X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["4587" "Tuesday" "11" "June" "2019" "15:10:00" "+0200" "Daniel Beck" "ml@beckweb.net" "<121B8053-3DA3-4BF8-903E-3615504626C5@beckweb.net>" "128" "[oss-security] Multiple vulnerabilities in Jenkins plugins" "^Date:" nil nil "6" "2019061113:10:00" "[oss-security] Multiple vulnerabilities in Jenkins plugins" (number mark "U       ml@beckweb.n Jun 11  128/4587  " thread-indent "\"[oss-security] Multiple vulnerabilities in Jenkins plugins\"\n") nil nil nil nil nil nil nil nil nil "[oss-security] Multiple vulnerabilities in Jenkins plugins" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 2024 invoked by uid 550); 11 Jun 2019 13:10:14 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 2000 invoked from network); 11 Jun 2019 13:10:13 -0000
Content-Type: text/plain;
	charset=us-ascii
Content-Transfer-Encoding: quoted-printable
Mime-Version: 1.0 (Mac OS X Mail 11.5 \(3445.9.1\))
Message-Id: <121B8053-3DA3-4BF8-903E-3615504626C5@beckweb.net>
X-Mailer: Apple Mail (2.3445.9.1)
X-bounce-key: webpack.hosteurope.de;ml@beckweb.net;1560258613;ece84384;
X-HE-SMSGID: 1hagXJ-0006Wb-Rz
Date: Tue, 11 Jun 2019 15:10:00 +0200
From: Daniel Beck <ml@beckweb.net>
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] Multiple vulnerabilities in Jenkins plugins
To: oss-security@lists.openwall.com

Jenkins is an open source automation server which enables developers around
the world to reliably build, test, and deploy their software. The following
releases contain fixes for security vulnerabilities:

* ElectricFlow Plugin 1.1.7
* JX Resources Plugin 1.0.37
* Token Macro Plugin 2.8

Summaries of the vulnerabilities are below. More details, severity, and
attribution can be found here:
https://jenkins.io/security/advisory/2019-06-11/

We provide advance notification for security updates on this mailing list:
https://groups.google.com/d/forum/jenkinsci-advisories

If you discover security vulnerabilities in Jenkins, please report them as
described here:
https://jenkins.io/security/#reporting-vulnerabilities

---

SECURITY-1399 / CVE-2019-10337
Token Macro Plugin did not configure its XML parser in a way that would=20
prevent XML External Entity (XXE) processing.

This allowed attackers able to control the contents of files processed with=
=20
the ${XML} macro to have Jenkins parse a maliciously crafted XML file that=
=20
uses external entities for extraction of secrets from the Jenkins agent,=20
server-side request forgery, or denial-of-service attacks.

Token Macro Plugin no longer processes XML External Entities in XML documen=
ts.


SECURITY-1379 / CVE-2019-10338 (CSRF), CVE-2019-10339 (improper authorizati=
on)
JX Resources Plugin did not perform permission checks on a method=20
implementing form validation. This allowed users with Overall/Read access t=
o=20
Jenkins to connect to an attacker-specified Kubernetes server and obtain=20
information about an attacker-specified namespace. Doing so might also leak=
=20
service account credentials used for the connection. Additionally, it allow=
ed=20
attackers to obtain the value of any attacker-specified environment variabl=
e=20
for the Jenkins master process.

Additionally, this form validation method did not require POST requests,=20
resulting in a cross-site request forgery vulnerability.

This form validation method now requires POST requests and Overall/Administ=
er=20
permissions.


SECURITY-1410 (1) / CVE-2019-10331 (CSRF), CVE-2019-10332 (improper authori=
zation)
A missing permission check in a form validation method in ElectricFlow Plug=
in=20
allowed users with Overall/Read permission to initiate a connection test to=
=20
an attacker-specified server with attacker-specified username and password.

Additionally, the form validation method did not require POST requests,=20
resulting in a CSRF vulnerability.

This form validation method now requires POST requests and Overall/Administ=
er=20
permissions.


SECURITY-1410 (2) / CVE-2019-10333
Various form validation and form autocompletion methods in ElectricFlow=20
Plugin lacked permission checks. This allowed attackers with Overall/Read=20
access to obtain information about the configuration of ElectricFlow Plugin=
,=20
as well as the configuration and data of connected ElectricFlow servers.

These form validation and autocompletion methods now require=20
Overall/Administer or Job/Configure permission, as appropriate for the give=
n=20
method.


SECURITY-1411 / CVE-2019-10334
ElectricFlow Plugin unconditionally disabled SSL/TLS certificate validation=
=20
for the entire Jenkins master JVM during the deployment/publication of an=20
application.

ElectricFlow Plugin no longer does that. Instead, the existing opt-in optio=
n to
ignore SSL/TLS errors is used during deployment for the specific connection.


SECURITY-1412 / CVE-2019-10335
The plugin adds metadata displayed on build pages during its operations.

Any user content was not escaped, resulting in a cross-site scripting=20
vulnerability allowing users with Job/Configure permission, or attackers=20
controlling API responses received from ElectricFlow to render arbitrary HT=
ML=20
and JavaScript on Jenkins build pages.

Build metadata is now filtered through a HTML formatter that only allows=20
showing basic HTML, neutralizing any unsafe data. Additionally, all builds=
=20
executed after the security update is applied will now properly escape=20
content received from ElectricFlow.


SECURITY-1420 / CVE-2019-10336
The configuration forms of various post-build steps contributed by=20
ElectricFlow Plugin were vulnerable to cross-site scripting.

This allowed attackers able to control the output of connected ElectricFlow=
=20
servers' APIs to inject arbitrary HTML and JavaScript into the configuratio=
n=20
form.

ElectricFlow Plugin no longer interprets HTML/JavaScript in responses from=
=20
ElectricFlow server APIs on job configuration forms.

