X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["3503" "Wednesday" "15" "January" "2020" "16:09:07" "+0100" "Daniel Beck" "ml@beckweb.net" "<CECBBC6C-2C36-45A1-8560-9726EA991FC6@beckweb.net>" "93" "[oss-security] Multiple vulnerabilities in Jenkins plugins" "^Date:" nil nil "1" "2020011515:09:07" "[oss-security] Multiple vulnerabilities in Jenkins plugins" (number mark "        ml@beckweb.n Jan 15   93/3503  " thread-indent "\"[oss-security] Multiple vulnerabilities in Jenkins plugins\"\n") nil nil nil nil nil nil nil nil nil "[oss-security] Multiple vulnerabilities in Jenkins plugins" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 30065 invoked by uid 550); 15 Jan 2020 15:09:20 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 30044 invoked from network); 15 Jan 2020 15:09:19 -0000
Content-Type: text/plain;
	charset=us-ascii
Content-Transfer-Encoding: quoted-printable
Mime-Version: 1.0 (Mac OS X Mail 12.4 \(3445.104.11\))
Message-Id: <CECBBC6C-2C36-45A1-8560-9726EA991FC6@beckweb.net>
X-Mailer: Apple Mail (2.3445.104.11)
X-bounce-key: webpack.hosteurope.de;ml@beckweb.net;1579100959;24877032;
X-HE-SMSGID: 1irkI7-0005Qc-VY
Date: Wed, 15 Jan 2020 16:09:07 +0100
From: Daniel Beck <ml@beckweb.net>
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] Multiple vulnerabilities in Jenkins plugins
To: oss-security@lists.openwall.com

Jenkins is an open source automation server which enables developers around
the world to reliably build, test, and deploy their software.

The following releases contain fixes for security vulnerabilities:

* Amazon EC2 Plugin 1.48
* Health Advisor by CloudBees Plugin 3.0.1
* Redgate SQL Change Automation Plugin 2.0.5
* Robot Framework Plugin 2.0.1

Additionally, we announce unresolved security issues in the following
plugins:

* Gitlab Hook Plugin
* Sounds Plugin

Summaries of the vulnerabilities are below. More details, severity, and
attribution can be found here:
https://jenkins.io/security/advisory/2020-01-15/

We provide advance notification for security updates on this mailing list:
https://groups.google.com/d/forum/jenkinsci-advisories

If you discover security vulnerabilities in Jenkins, please report them as
described here:
https://jenkins.io/security/#reporting-vulnerabilities

---

SECURITY-1004 / CVE-2020-2090 (CSRF) & CVE-2020-2091 (missing permission ch=
eck)
Amazon EC2 Plugin 1.47 and earlier does not perform permission checks in
methods performing form validation. This allows users with Overall/Read
access to Jenkins to connect to an attacker-specified URL within the AWS
region using attacker-specified credentials IDs obtained through another
method.

NOTE: This vulnerability might also allow attackers to capture credentials
stored in Jenkins. We have not been able to confirm that this is possible.

Additionally, these form validation methods do not require POST requests,
resulting in a CSRF vulnerability.


SECURITY-1698 / CVE-2020-2092
Robot Framework Plugin 2.0.0 and earlier does not configure the XML parser
to prevent XML external entity (XXE) attacks.

This allows a user able to control the input files for the 'Publish Robot
Framework' post-build step to have Jenkins parse a crafted file that uses
external entities for extraction of secrets from the Jenkins master,
server-side request forgery, or denial-of-service attacks.


SECURITY-1708 / CVE-2020-2093 (CSRF) & CVE-2020-2094 (missing permission ch=
eck)
Health Advisor by CloudBees Plugin 3.0 and earlier does not perform
permission checks in methods performing form validation. This allows users
with Overall/Read access to send an email with fixed content to an
attacker-specified recipient.

Additionally, these form validation methods do not require POST requests,
resulting in a CSRF vulnerability.


SECURITY-1696 / CVE-2020-2095
Redgate SQL Change Automation Plugin 2.0.4 and earlier stores a NuGet API
key unencrypted in job `config.xml` files as part of its configuration.
This credential could be viewed by users with Extended Read permission or
access to the master file system.

This is due to an incomplete fix of
link:/security/advisory/2019-12-17/#SECURITY-1598[SECURITY-1598].


SECURITY-1683 / CVE-2020-2096
Gitlab Hook Plugin 1.4.2 and earlier does not escape project names in the
`build_now` endpoint. This results in a reflected cross-site scripting
vulnerability.

As of publication of this advisory, there is no fix.


SECURITY-814 / CVE-2020-2097 (permission check) & CVE-2020-2098 (CSRF)
Sounds Plugin 0.5 and earlier does not perform permission checks in URLs
performing form validation. This allows attackers with Overall/Read access
to execute arbitrary OS commands as the OS user account running Jenkins.

Additionally, these form validation URLs do not require POST requests,
resulting in a CSRF vulnerability.

As of publication of this advisory, there is no fix.

