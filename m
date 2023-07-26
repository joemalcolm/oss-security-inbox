Received: (qmail 30312 invoked by uid 550); 26 Jul 2023 13:26:00 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 30276 invoked from network); 26 Jul 2023 13:25:59 -0000
From: Daniel Beck <ml@beckweb.net>
Content-Type: text/plain;
	charset=us-ascii
Content-Transfer-Encoding: quoted-printable
Mime-Version: 1.0 (Mac OS X Mail 16.0 \(3696.120.41.1.3\))
Message-Id: <369A681F-5EC7-4399-A428-66ECAC1BF4F5@beckweb.net>
Date: Wed, 26 Jul 2023 15:25:47 +0200
To: oss-security@lists.openwall.com
X-Mailer: Apple Mail (2.3696.120.41.1.3)
X-bounce-key: webpack.hosteurope.de;ml@beckweb.net;1690377959;569df570;
X-HE-SMSGID: 1qOeWR-0000XP-L0
Subject: [oss-security] Multiple vulnerabilities in Jenkins and Jenkins plugins

Jenkins is an open source automation server which enables developers around
the world to reliably build, test, and deploy their software.

The following releases contain fixes for security vulnerabilities:

* Jenkins 2.416
* Jenkins LTS 2.401.3
* GitLab Authentication Plugin 1.18
* Gradle Plugin 2.8.1
* Qualys Web App Scanning Connector Plugin 2.0.11
* ServiceNow DevOps Plugin 1.38.1

Additionally, we announce unresolved security issues in the following
plugins:

* Bazaar Plugin
* Chef Identity Plugin

Summaries of the vulnerabilities are below. More details, severity, and
attribution can be found here:
https://www.jenkins.io/security/advisory/2023-07-26/

We provide advance notification for security updates on this mailing list:
https://groups.google.com/d/forum/jenkinsci-advisories

If you discover security vulnerabilities in Jenkins, please report them as
described here:
https://www.jenkins.io/security/#reporting-vulnerabilities

---

SECURITY-3188 / CVE-2023-39151
Jenkins applies formatting to the console output of builds, transforming
plain URLs into hyperlinks.

Jenkins 2.415 and earlier, LTS 2.401.2 and earlier does not sanitize or
properly encode URLs of these hyperlinks in build logs.

This results in a stored cross-site scripting (XSS) vulnerability
exploitable by attackers able to control build log contents.


SECURITY-3208 / CVE-2023-39152
Gradle Plugin 2.8 improperly invokes APIs available only on the controller
from an agent when setting up build log annotations, causing an exception.

As a result, credentials may not be masked (i.e., replaced with asterisks)
in the build log in some circumstances.


SECURITY-2696 / CVE-2023-39153
GitLab Authentication Plugin 1.17.1 and earlier does not implement a state
parameter in its OAuth flow, a unique and non-guessable value associated
with each authentication request.

This vulnerability allows attackers to trick users into logging in to the
attacker's account.


SECURITY-3129 / CVE-2023-3414 (CSRF) & CVE-2023-3442 (missing permission ch=
eck)
ServiceNow DevOps Plugin 1.38.0 and earlier does not perform a permission
check in a method implementing form validation.

This allows attackers with Overall/Read permission to connect to an
attacker-specified URL using attacker-specified credentials IDs obtained
through another method, capturing credentials stored in Jenkins.

Additionally, this form validation method does not require POST requests,
resulting in a cross-site request forgery (CSRF) vulnerability.


SECURITY-3012 / CVE-2023-39154
Qualys Web App Scanning Connector Plugin 2.0.10 and earlier does not
correctly perform permission checks in several HTTP endpoints.

This allows attackers with global Item/Configure permission to connect to
an attacker-specified URL using attacker-specified credentials IDs obtained
through another method, capturing credentials stored in Jenkins.


SECURITY-3192 / CVE-2023-39155
Chef Identity Plugin stores the user.pem key in its global configuration
file `io.chef.jenkins.ChefIdentityBuildWrapper.xml` on the Jenkins
controller as part of its configuration.

While this key is stored encrypted on disk, in Chef Identity Plugin 2.0.3
and earlier the global configuration form does not mask the user.pem key
form field, increasing the potential for attackers to observe and capture
it.

As of publication of this advisory, there is no fix.


SECURITY-3095 / CVE-2023-39156
Bazaar Plugin 1.22 and earlier does not require POST requests for an HTTP
endpoint, resulting in a cross-site request forgery (CSRF) vulnerability.

This vulnerability allows attackers to delete previously created Bazaar SCM
tags.

As of publication of this advisory, there is no fix.



