X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["10277" "Tuesday" "25" "September" "2018" "17:18:00" "+0200" "Daniel Beck" "ml@beckweb.net" "<2AB17EF3-293D-4D08-BA20-9452BE683E95@beckweb.net>" "297" "[oss-security] Multiple vulnerabilities in Jenkins plugins" nil nil nil "9" "2018092515:18:00" "[oss-security] Multiple vulnerabilities in Jenkins plugins" (number mark "U       ml@beckweb.n Sep 25  297/10277 " thread-indent "\"[oss-security] Multiple vulnerabilities in Jenkins plugins\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 27804 invoked by uid 550); 25 Sep 2018 15:18:13 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 27786 invoked from network); 25 Sep 2018 15:18:13 -0000
From: Daniel Beck <ml@beckweb.net>
Content-Type: text/plain;
	charset=utf-8
Content-Transfer-Encoding: quoted-printable
Mime-Version: 1.0 (Mac OS X Mail 11.5 \(3445.9.1\))
Message-Id: <2AB17EF3-293D-4D08-BA20-9452BE683E95@beckweb.net>
Date: Tue, 25 Sep 2018 17:18:00 +0200
To: oss-security@lists.openwall.com
X-Mailer: Apple Mail (2.3445.9.1)
X-bounce-key: webpack.hosteurope.de;ml@beckweb.net;1537888693;ad7aa15b;
X-HE-SMSGID: 1g4p69-0008Rm-Ns
Subject: [oss-security] Multiple vulnerabilities in Jenkins plugins

Jenkins is an open source automation server which enables developers around
the world to reliably build, test, and deploy their software. The following
releases contain fixes for security vulnerabilities:

* Arachni Scanner Plugin 1.0.0
* Argus Notifier Plugin 1.0.2
* Artifactory Plugin 2.16.2
* Chatter Notifier Plugin 2.0.5
* Config File Provider Plugin 3.2
* Crowd 2 Integration Plugin 2.0.1
* Dimensions Plugin 0.8.15
* Email Extension Template Plugin 1.1
* Git Changelog Plugin 2.7
* HipChat Plugin 2.2.1
* JIRA Plugin 3.0.2
* Job Configuration History Plugin 2.18.1
* JUnit Plugin 1.26
* mesos Plugin 0.18
* Monitoring Plugin 1.74.0
* MQ Notifier Plugin 1.2.7
* PAM Authentication Plugin 1.4
* Publish Over Dropbox Plugin 1.2.5
* Rebuilder Plugin 1.29
* SonarQube Scanner Plugin 2.8.1

Additionally, these plugin have security vulnerabilities that have been made
public, but have no releases containing a fix yet:

* Metadata Plugin

Summaries of the vulnerabilities are below. More details, severity, and
attribution can be found here:
https://jenkins.io/security/advisory/2018-09-25/

We provide advance notification for security updates on this mailing list:
https://groups.google.com/d/forum/jenkinsci-advisories

If you discover security vulnerabilities in Jenkins, please report them as
described here:
https://jenkins.io/security/#reporting-vulnerabilities

---

SECURITY-1101
A URL used to allow setting the description of a test object in JUnit=20
Plugin did not require POST requests, resulting in a cross-site request=20
forgery vulnerability.


SECURITY-1029
Jira Plugin did not perform permission checks on a method implementing form=
=20
validation. This allowed users with Overall/Read access to Jenkins to=20
connect to an attacker-specified URL using attacker-specified credentials=20
IDs obtained through another method, capturing credentials stored in Jenkin=
s.

Additionally, this form validation method did not require POST requests,=20
resulting in a cross-site request forgery vulnerability.


SECURITY-1080
Config File Provider Plugin did not escape configuration file metadata,=20
resulting in a stored cross-site scripting (XSS) vulnerability.


SECURITY-938
A URL used to save configuration files based on form submissions in Config=
=20
File Provider Plugin did not require POST requests, resulting in a CSRF=20
vulnerability.


SECURITY-130
Rebuild Plugin did not escape parameter descriptions shown on the rebuild=20
form page, resulting in a stored Cross-Site Scripting (XSS) vulnerability=20
exploitable by users with the permission to configure jobs.


SECURITY-1130
Job Config History Plugin did not escape some query parameters shown on its=
=20
pages, resulting in a reflected cross-site scripting (XSS) vulnerability.


SECURITY-1125
Some URLs implementing form submission handling in Email Extension Template=
=20
Plugin did not require POST requests, resulting in a CSRF vulnerability=20
that allowed attackers to create or remove templates.


SECURITY-984 (1)
HipChat Plugin did not perform permission checks on a method that sends=20
test notifications. This allowed users with Overall/Read access to Jenkins=
=20
to connect to an attacker-specified HipChat server using attacker-specified=
=20
connection settings and credentials IDs obtained through another method,=20
capturing credentials stored in Jenkins, and submitting messages to HipChat.

Additionally, this form validation method did not require POST requests,=20
resulting in a cross-site request forgery vulnerability.


SECURITY-984 (2)
HipChat Plugin provides a list of applicable credential IDs to allow=20
administrators configuring the plugin to select the one to use.

This functionality did not check permissions, allowing any user with=20
Overall/Read permission to get a list of valid credentials IDs. Those could=
=20
be used as part of an attack to capture the credentials using another=20
vulnerability.


SECURITY-1013 (1)
Mesos Plugin provides a list of applicable credential IDs to allow=20
administrators configuring the Mesos cloud to select the one to use.

This functionality did not check permissions, allowing any user with=20
Overall/Read permission to get a list of valid credentials IDs. Those could=
=20
be used as part of an attack to capture the credentials using another=20
vulnerability.


SECURITY-1013 (2)
A missing permission check in a form validation method in Mesos Plugin=20
allowed users with Overall/Read permission to initiate a connection test,=20
connecting to an attacker-specified URL.

Additionally, this form validation method did not require POST requests,=20
resulting in a CSRF vulnerability.


SECURITY-1067
Crowd 2 Integration Plugin did not perform permission checks on a method=20
implementing form validation. This allowed users with Overall/Read access=20
to Jenkins to connect to an attacker-specified URL with attacker-specified=
=20
credentials and connection settings.

Additionally, this form validation method did not require POST requests,=20
resulting in a CSRF vulnerability.


SECURITY-1068
Crowd 2 Integration Plugin stored the Crowd password unencrypted in its=20
global configuration file on the Jenkins master. This password could be=20
viewed by users with access to the master file system.


SECURITY-972
Users with Overall/Read permission were able to access MQ Notifier Plugin=
=E2=80=99s=20
form validation URL, having it connect to an attacker-specified MQ system=20
with attacker-specified credentials.

Additionally, this form validation URL did not require POST requests,=20
resulting in a CSRF vulnerability.


SECURITY-1075
A stored cross-site scripting (XSS) vulnerability in Metadata Plugin allows=
=20
users with permission to change metadata definitions to insert arbitrary=20
HTML/Javascript into Jenkins pages.


SECURITY-1135
Metadata Plugin lacks a permission check that allows users with=20
Overall/Read access to Jenkins to change the plugin=E2=80=99s configuration.


SECURITY-265
Artifactory Plugin 2.4.0 introduced support for securely storing=20
credentials using the Credentials Plugin. Old, insecurely stored=20
credentials however were not removed when switching to this new system.


SECURITY-813 / CVE-2017-12197
The pam4j library bundled in PAM Authentication Plugin had a bug that=20
resulted in it not properly validating user accounts.


SECURITY-1163
SonarQube Scanner Plugin stored a server authentication token unencrypted=20
in its global configuration file on the Jenkins master. This token could be=
=20
viewed by users with access to the master file system.


SECURITY-1122
Git Changelog Plugin did not escape the Git commit messages it displayed=20
since version 1.48, resulting in a stored cross-site scripting (XSS)=20
vulnerability exploitable by users with commit access to specific Git=20
repositories.


SECURITY-948
Arachni Scanner Plugin stored its password unencrypted in its global=20
configuration file on the Jenkins master. This password could be viewed by=
=20
users with access to the master file system.


SECURITY-1011 (1)
Argus Notifier Plugin did not perform permission checks on a method=20
implementing form validation. This allowed users with Overall/Read access=20
to Jenkins to connect to an attacker-specified URL using attacker-specified=
=20
credentials IDs obtained through another method, capturing credentials=20
stored in Jenkins.

Additionally, this form validation method did not require POST requests,=20
resulting in a cross-site request forgery vulnerability.


SECURITY-1011 (2)
Argus Notifier Plugin provides a list of applicable credential IDs to allow=
=20
administrators configuring the plugin to select the one to use.

This functionality did not check permissions, allowing any user with=20
Overall/Read permission to get a list of valid credentials IDs. Those could=
=20
be used as part of an attack to capture the credentials using another=20
vulnerability.


SECURITY-1050 (1)
Chatter Notifier Plugin did not perform permission checks on a method=20
implementing form validation. This allowed users with Overall/Read access=20
to Jenkins to connect to an attacker-specified URL using attacker-specified=
=20
credentials IDs obtained through another method, capturing credentials=20
stored in Jenkins.

Additionally, this form validation method did not require POST requests,=20
resulting in a cross-site request forgery vulnerability.


SECURITY-1050 (2)
Chatter Notifier Plugin provides a list of applicable credential IDs to=20
allow users configuring the plugin=E2=80=99s functionality to select the on=
e to use.

This functionality did not check permissions, allowing any user with=20
Overall/Read permission to get a list of valid credentials IDs. Those could=
=20
be used as part of an attack to capture the credentials using another=20
vulnerability.


SECURITY-1065
Dimensions Plugin stored a password unencrypted in its global configuration=
=20
file on the Jenkins master. This password could be viewed by users with=20
access to the master file system.


SECURITY-1108
Users with Overall/Read permission were able to access Dimensions Plugin=E2=
=80=99s=20
form validation URL, having it connect to an attacker-specified Dimensions=
=20
system with attacker-specified credentials.

Additionally, this form validation URL did not require POST requests,=20
resulting in a CSRF vulnerability.


SECURITY-845
Publish Over Dropbox Plugin stored authorization code and access code=20
unencrypted in its global configuration file on the Jenkins master. These=20
secrets could be viewed by users with access to the master file system.

Additionally, the authorization code was not masked from view using a=20
password form field.


SECURITY-1156 / CVE-2018-15531
The JavaMelody library bundled in Monitoring Plugin is affected by an XML=20
External Entity (XXE) processing vulnerability.

This allows attacker to send crafted requests to a web application for=20
extraction of secrets from the file system, server-side request forgery, or=
=20
denial-of-service attacks.

Monitoring plugin 1.74 updates its JavaMelody dependency to fix the issue.

The Jenkins security team and the maintainer of Monitoring Plugin have been=
=20
unable to reproduce the issue in Jenkins, but we still recommend updating.

