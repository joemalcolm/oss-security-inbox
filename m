X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["5490" "Tuesday" "30" "April" "2019" "14:17:30" "+0200" "Daniel Beck" "ml@beckweb.net" nil "162" nil nil nil nil "4" nil nil (number mark "U       ml@beckweb.n Apr 30  162/5490  " thread-indent "\"[oss-security] Multiple vulnerabilities in Jenkins plugins\"\n") nil nil nil nil nil nil nil nil nil "[oss-security] Multiple vulnerabilities in Jenkins plugins" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 19814 invoked by uid 550); 30 Apr 2019 12:17:43 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 19793 invoked from network); 30 Apr 2019 12:17:43 -0000
From: Daniel Beck <ml@beckweb.net>
Content-Type: text/plain;
	charset=utf-8
Content-Transfer-Encoding: quoted-printable
Mime-Version: 1.0 (Mac OS X Mail 11.5 \(3445.9.1\))
Message-Id: <B9DB968B-E225-4245-85BE-6BB6CCD8791F@beckweb.net>
Date: Tue, 30 Apr 2019 14:17:30 +0200
To: oss-security@lists.openwall.com
X-Mailer: Apple Mail (2.3445.9.1)
X-bounce-key: webpack.hosteurope.de;ml@beckweb.net;1556626663;e10fb56f;
X-HE-SMSGID: 1hLRhT-0007iE-RH
Subject: [oss-security] Multiple vulnerabilities in Jenkins plugins

Jenkins is an open source automation server which enables developers around
the world to reliably build, test, and deploy their software. The following
releases contain fixes for security vulnerabilities:

* Ansible Tower Plugin 0.9.2
* Aqua MicroScanner Plugin 1.0.6
* Azure AD Plugin 0.3.4
* GitHub Authentication Plugin 0.32
* SiteMonitor Plugin 0.6
* Static Analysis Utilities Plugin 1.96

Additionally, these plugin have security vulnerabilities that have been made
public, but have no releases containing a fix yet:

* Koji Plugin
* Self-Organizing Swarm Plug-in Modules Plugin
* Twitter Plugin

Summaries of the vulnerabilities are below. More details, severity, and
attribution can be found here:
https://jenkins.io/security/advisory/2019-04-30/

We provide advance notification for security updates on this mailing list:
https://groups.google.com/d/forum/jenkinsci-advisories

If you discover security vulnerabilities in Jenkins, please report them as
described here:
https://jenkins.io/security/#reporting-vulnerabilities

---

SECURITY-1100 / CVE-2019-10307 (CSRF) and CVE-2019-10308 (permission check)
Static Analysis Utilities Plugin has the capability to allow other plugins =
to=20
display trend graphs for their static analysis results. Static Analysis=20
Utilities Plugin provides the configuration form for the default settings o=
f=20
each graph.

The configuration form and form submission handler did not perform a=20
permission check, allowing attackers with Job/Read access to change the=20
per-job graph configuration defaults for all users.

Additionally, the form submission handler did not require POST requests,=20
resulting in a cross-site request forgery vulnerability.

Static Analysis Utilities Plugin now requires Job/Configure permission and=
=20
POST requests to configure the per-job graph defaults for all users.


SECURITY-930 / CVE-2019-10317
SiteMonitor Plugin unconditionally disables SSL/TLS certificate validation =
for=20
the entire Jenkins master JVM.

SiteMonitor Plugin no longer does that. Instead, it now has an opt-in optio=
n=20
to ignore SSL/TLS errors for each site check individually.


SECURITY-1252 / CVE-2019-10309
Self-Organizing Swarm Plug-in Modules Plugin allows clients to auto-discove=
r=20
Jenkins instances on the same network through a UDP discovery request.=20
Responses to this request are XML documents.

Self-Organizing Swarm Plug-in Modules Plugin does not configure the XML par=
ser=20
in a way that would prevent XML External Entity (XXE) processing. This allo=
ws=20
unauthenticated attackers on the same network to have Swarm clients parse a=
=20
maliciously crafted XML response that uses external entities to read arbitr=
ary=20
files from the Swarm client or denial-of-service attacks.

As of publication of this advisory, there is no fix.


SECURITY-1355 (1) / CVE-2019-10310 (CSRF) and CVE-2019-10311 (permission ch=
eck)
Ansible Tower Plugin did not perform permission checks on a method=20
implementing form validation. This allowed users with Overall/Read access t=
o=20
Jenkins to connect to an attacker-specified URL using attacker-specified=20
credentials IDs obtained through another method, capturing credentials stor=
ed=20
in Jenkins.

Additionally, this form validation method did not require POST requests,=20
resulting in a cross-site request forgery vulnerability.

This form validation method now requires POST requests and Overall/Administ=
er=20
permissions.


SECURITY-1355 (2) / CVE-2019-10312
Ansible Tower Plugin provides a list of applicable credential IDs to allow=
=20
users configuring the plugin to select the one to use.

This functionality did not check permissions, allowing any user with=20
Overall/Read permission to get a list of valid credentials IDs. Those could=
 be=20
used as part of an attack to capture the credentials using another=20
vulnerability.

An enumeration of credentials IDs in this plugin now requires=20
Overall/Administer permission.


SECURITY-1390 / CVE-2019-10318
Azure AD Plugin stored the client secret unencrypted in the global config.x=
ml=20
configuration file on the Jenkins master. These credentials could be viewed=
 by=20
users with access to the master file system.

Azure AD Plugin now stores the client secret encrypted.


SECURITY-1143 / CVE-2019-10313
Twitter Plugin stores credentials unencrypted in its global configuration f=
ile=20
on the Jenkins master. These credentials could be viewed by users with acce=
ss=20
to the master file system.

As of publication of this advisory, there is no fix.


SECURITY-936 / CVE-2019-10314
Koji Plugin unconditionally disables SSL/TLS certificate validation for the=
=20
entire Jenkins master JVM.

As of publication of this advisory, there is no fix.


SECURITY-443 / CVE-2019-10315
GitHub Authentication Plugin did not manage the state parameter of OAuth to=
=20
prevent CSRF. This allowed an attacker to catch the redirect URL provided=20
during the authentication process using OAuth and send it to the victim. If=
=20
the victim was already connected to Jenkins, their Jenkins account would be=
=20
attached to the attacker=E2=80=99s GitHub account.

The state parameter is now correctly managed.


SECURITY-1380 / CVE-2019-10316
Aqua MicroScanner Plugin stored credentials unencrypted in its global=20
configuration file on the Jenkins master. These credentials could be viewed=
 by=20
users with access to the master file system.

Aqua MicroScanner Plugin now stores credentials encrypted.

