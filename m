X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["2821" "Wednesday" "17" "April" "2019" "16:40:14" "+0200" "Daniel Beck" "ml@beckweb.net" "<473F72F1-A06B-436D-952A-A04DFE1BA918@beckweb.net>" "74" "[oss-security] Multiple vulnerabilities in Jenkins plugins" "^Date:" nil nil "4" "2019041714:40:14" "[oss-security] Multiple vulnerabilities in Jenkins plugins" (number mark "U       ml@beckweb.n Apr 17   74/2821  " thread-indent "\"[oss-security] Multiple vulnerabilities in Jenkins plugins\"\n") nil nil nil nil nil nil nil nil nil "[oss-security] Multiple vulnerabilities in Jenkins plugins" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 6069 invoked by uid 550); 17 Apr 2019 14:40:28 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 6051 invoked from network); 17 Apr 2019 14:40:27 -0000
Content-Type: text/plain;
	charset=utf-8
Content-Transfer-Encoding: quoted-printable
Mime-Version: 1.0 (Mac OS X Mail 11.5 \(3445.9.1\))
Message-Id: <473F72F1-A06B-436D-952A-A04DFE1BA918@beckweb.net>
X-Mailer: Apple Mail (2.3445.9.1)
X-bounce-key: webpack.hosteurope.de;ml@beckweb.net;1555512027;8be57fa8;
X-HE-SMSGID: 1hGljU-0005tx-1I
Date: Wed, 17 Apr 2019 16:40:14 +0200
From: Daniel Beck <ml@beckweb.net>
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] Multiple vulnerabilities in Jenkins plugins
To: oss-security@lists.openwall.com

Jenkins is an open source automation server which enables developers around
the world to reliably build, test, and deploy their software. The following
releases contain fixes for security vulnerabilities:

* Azure PublisherSettings Credentials Plugin 1.5
* GitLab Plugin 1.5.12
* jira-ext Plugin 0.9
* ontrack Jenkins Plugin 3.4.1

Additionally, these plugin have security vulnerabilities that have been made
public, but have no releases containing a fix yet:

* XebiaLabs XL Deploy Plugin

Summaries of the vulnerabilities are below. More details, severity, and
attribution can be found here:
https://jenkins.io/security/advisory/2019-04-17/

We provide advance notification for security updates on this mailing list:
https://groups.google.com/d/forum/jenkinsci-advisories

If you discover security vulnerabilities in Jenkins, please report them as
described here:
https://jenkins.io/security/#reporting-vulnerabilities

---

SECURITY-1357 / CVE-2019-10300 (CSRF) and CVE-2019-10301 (permission check)
GitLab Plugin did not perform permission checks on a method implementing=20
form validation. This allowed users with Overall/Read access to Jenkins to=
=20
connect to an attacker-specified URL using attacker-specified credentials=20
IDs obtained through another method, capturing credentials stored in Jenkin=
s.

Additionally, this form validation method did not require POST requests,=20
resulting in a cross-site request forgery vulnerability.


SECURITY-836 / CVE-2019-10302
jira-ext Plugin stored credentials unencrypted in its global configuration=
=20
file hudson.plugins.jira.JiraProjectProperty.xml on the Jenkins master.=20
These credentials could be viewed by users with access to the master file=20
system.


SECURITY-844 / CVE-2019-10303
Azure PublisherSettings Credentials Plugin stored the service management=20
certificate unencrypted in credentials.xml on the Jenkins master. These=20
credentials could be viewed by users with access to the master file system.


SECURITY-983 / CVE-2019-10304 (CSRF) and CVE-2019-10305 (permission check)
A missing permission check in a form validation method in XebiaLabs XL=20
Deploy Plugin allows users with Overall/Read permission to initiate a=20
connection test to an attacker-specified server with attacker-specified=20
credentials.

Additionally, the form validation method does not require POST requests,=20
resulting in a CSRF vulnerability.


SECURITY-1341 / CVE-2019-10306
ontrack Jenkins Plugin supports sandboxed Groovy expressions. Its sandbox=20
protection could be circumvented during parsing, compilation, and script=20
instantiation by providing a crafted Groovy script.

This allowed users able to control the plugin=E2=80=99s job-specific config=
uration=20
to bypass the sandbox protection and execute arbitrary code on the Jenkins=
=20
master.

