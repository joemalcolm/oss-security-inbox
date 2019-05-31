X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["5124" "Friday" "31" "May" "2019" "16:13:45" "+0200" "Daniel Beck" "ml@beckweb.net" "<F49D0793-E4F5-4B45-BD01-239C75DA13FD@beckweb.net>" "139" "[oss-security] Multiple vulnerabilities in Jenkins plugins" nil nil nil "5" "2019053114:13:45" "[oss-security] Multiple vulnerabilities in Jenkins plugins" (number mark "U       ml@beckweb.n May 31  139/5124  " thread-indent "\"[oss-security] Multiple vulnerabilities in Jenkins plugins\"\n") nil nil nil nil nil nil nil nil nil "[oss-security] Multiple vulnerabilities in Jenkins plugins" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 20447 invoked by uid 550); 31 May 2019 14:13:59 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 20425 invoked from network); 31 May 2019 14:13:58 -0000
From: Daniel Beck <ml@beckweb.net>
Content-Type: text/plain;
	charset=utf-8
Content-Transfer-Encoding: quoted-printable
Mime-Version: 1.0 (Mac OS X Mail 11.5 \(3445.9.1\))
Message-Id: <F49D0793-E4F5-4B45-BD01-239C75DA13FD@beckweb.net>
Date: Fri, 31 May 2019 16:13:45 +0200
To: oss-security@lists.openwall.com
X-Mailer: Apple Mail (2.3445.9.1)
X-bounce-key: webpack.hosteurope.de;ml@beckweb.net;1559312038;216467e9;
X-HE-SMSGID: 1hWiHz-0008M3-DY
Subject: [oss-security] Multiple vulnerabilities in Jenkins plugins

Jenkins is an open source automation server which enables developers around
the world to reliably build, test, and deploy their software. The following
releases contain fixes for security vulnerabilities:

* Gitea Plugin 1.1.2
* InfluxDB Plugin 1.22
* Pipeline Maven Integration Plugin 3.7.1
* Pipeline Remote Loader Plugin 1.5
* Warnings Next Generation Plugin 5.1.0

Additionally, we announce unresolved security issues in the following
plugins:

* Artifactory Plugin

Summaries of the vulnerabilities are below. More details, severity, and
attribution can be found here:
https://jenkins.io/security/advisory/2019-05-31/

We provide advance notification for security updates on this mailing list:
https://groups.google.com/d/forum/jenkinsci-advisories

If you discover security vulnerabilities in Jenkins, please report them as
described here:
https://jenkins.io/security/#reporting-vulnerabilities

---


SECURITY-1373 / CVE-2019-10325
Warnings Next Generation Plugin rendered the name of a custom warnings=20
parser unescaped on Jenkins web pages. This allowed attackers with=20
Job/Configure permission to define a custom parser whose name included=20
HTML and JavaScript, resulting in a persisted cross-site scripting=20
vulnerability.

Warnings Next Generation Plugin now properly escapes custom warnings=20
parser names.


SECURITY-1391 / CVE-2019-10326
Warnings Next Generation Plugin did not require that requests sent to the=20
endpoint used to reset warning counts use POST. This resulted in a cross-
site request forgery vulnerability that allows attackers to reset warning=20
counts for future builds.

Warnings Next Generation Plugin now requires that these requests be sent=20
via POST.


SECURITY-1409 / CVE-2019-10327
Pipeline Maven Integration Plugin did not configure its XML parser in a=20
way that would prevent XML External Entity (XXE) processing.

This allowed attackers able to control the contents of a temporary=20
directory on the agent that the Maven build is executing on to have=20
Jenkins parse a maliciously crafted XML file that uses external entities=20
for extraction of secrets from the Jenkins master, server-side request=20
forgery, or denial-of-service attacks.

Pipeline Maven Integration Plugin no longer processes XML External=20
Entities in XML documents.


SECURITY-921 / CVE-2019-10328
Pipeline Remote Loader Plugin provides a custom Script Security whitelist.=
=20
Those entries apply to all scripts with sandbox protection, such as=20
Pipeline.

One entry provided here was unsafe, as it allowed invoking arbitrary=20
methods, bypassing sandbox protection.

The unsafe whitelist entry has been removed.


SECURITY-1403 / CVE-2019-10329
InfluxDB Plugin stored target passwords unencrypted in its global=20
configuration file on the Jenkins master. These credentials could be=20
viewed by users with access to the master file system.

InfluxDB Plugin now stores its passwords encrypted.


SECURITY-1046 / CVE-2019-10330
Multibranch pipelines are typically configured so that only committers to=20
the repository are able to effectively propose changes to Jenkinsfiles.=20
Changes to Jenkinsfiles in pull requests created by other users would not=20
be trusted, and the target branch=E2=80=99s Jenkinsfile content is used ins=
tead.

Gitea Plugin did not implement this behavior. Attackers without commit=20
access to the Git repository could therefore propose changes to=20
Jenkinsfiles and have those be applied for PR builds despite the=20
configuration declaring them to be untrusted.

Gitea Plugin now implements the desired behavior of only trusting pull=20
request content when those are trusted.


SECURITY-1015 (1) / CVE-2019-10321 (CSRF), CVE-2019-10322 (permission check)
Artifactory Plugin does not perform permission checks on a method=20
implementing form validation. This allows users with Overall/Read access=20
to Jenkins to connect to an attacker-specified URL using attacker-
specified credentials IDs obtained through another method, capturing=20
credentials stored in Jenkins.

Additionally, this form validation method does not require POST requests,=20
resulting in a cross-site request forgery vulnerability.

As of publication of this advisory, no release containing a fix is=20
available.


SECURITY-1015 (2) / CVE-2019-10323
Artifactory Plugin provides a list of applicable credential IDs to allow=20
users configuring the plugin to select the one to use.

This functionality does not correctly check permissions, allowing any user=
=20
with Overall/Read permission to get a list of valid credentials IDs. Those=
=20
can be used as part of an attack to capture the credentials using another=20
vulnerability.

As of publication of this advisory, no release containing a fix is=20
available.


SECURITY-1347 / CVE-2019-10324
Artifactory Plugin implements a number of API endpoints allowing users to=20
trigger various actions related to releasing and promotion.

These endpoints do not require POST requests, resulting in a cross-site=20
request forgery vulnerability.

As of publication of this advisory, no release containing a fix is=20
available.

