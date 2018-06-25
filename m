X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["6189" "Monday" "25" "June" "2018" "16:10:22" "+0200" "Daniel Beck" "ml@beckweb.net" "<E00DE545-C35C-4E5F-8AEF-022602DEB087@beckweb.net>" "171" "[oss-security] Multiple vulnerabilities in Jenkins plugins" nil nil nil "6" "2018062514:10:22" "[oss-security] Multiple vulnerabilities in Jenkins plugins" (number mark "U       ml@beckweb.n Jun 25  171/6189  " thread-indent "\"[oss-security] Multiple vulnerabilities in Jenkins plugins\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 3583 invoked by uid 550); 25 Jun 2018 14:10:35 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 3556 invoked from network); 25 Jun 2018 14:10:34 -0000
From: Daniel Beck <ml@beckweb.net>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Mime-Version: 1.0 (Mac OS X Mail 10.3 \(3273\))
Message-Id: <E00DE545-C35C-4E5F-8AEF-022602DEB087@beckweb.net>
Date: Mon, 25 Jun 2018 16:10:22 +0200
To: oss-security@lists.openwall.com
X-Mailer: Apple Mail (2.3273)
X-bounce-key: webpack.hosteurope.de;ml@beckweb.net;1529935834;6e35a651;
X-HE-SMSGID: 1fXSCE-0005Pq-Pu
Subject: [oss-security] Multiple vulnerabilities in Jenkins plugins

Jenkins is an open source automation server which enables developers around
the world to reliably build, test, and deploy their software. The following
releases contain fixes for security vulnerabilities:

* AWS CodeBuild 0.27
* AWS CodeDeploy 1.20
* AWS CodePipeline 0.37
* Badge 1.5
* CollabNet 2.0.5
* Configuration as Code 0.8-alpha
* Fortify CloudScan 1.5.2
* GitHub 1.29.2
* IBM z/OS Connector 2.0.0
* Openstack Cloud 2.36
* SAML 1.0.7
* SSH Credentials 1.14
* URLTrigger 0.43

Summaries of the vulnerabilities are below. More details, severity, and
attribution can be found here:
https://jenkins.io/security/advisory/2018-06-25/

We provide advance notification for security updates on this mailing list:
https://groups.google.com/d/forum/jenkinsci-advisories

If you discover security vulnerabilities in Jenkins, please report them as
described here:
https://jenkins.io/security/#reporting-vulnerabilities

---

SECURITY-915
A form action method in GitHub Plugin did not check the permission of the=20
user accessing it, allowing anyone with Overall/Read access to Jenkins to=20
cause Jenkins to send a GitHub API request to create an API token to a an=20
attacker specified URL.

This allowed users with Overall/Read access to Jenkins to connect to an=20
attacker-specified URL using attacker-specified credentials IDs obtained=20
through another method, capturing credentials stored in Jenkins.

Additionally, this form validation method did not require POST requests,=20
resulting in a CSRF vulnerability.


SECURITY-440
SSH Credentials Plugin allowed the creation of SSH credentials with keys=20
"From a file on Jenkins master". Credentials Binding Plugin 1.13 and newer=
=20
allows binding SSH credentials to environment variables. In combination,=20
these two features allow users with the permission to configure a job to=20
read arbitrary files on the Jenkins master by creating an SSH credential=20
referencing an arbitrary file on the Jenkins master, and binding it to an=20
environment variable in a job.


SECURITY-916
SAML Plugin did not invalidate the previous session and create a new one=20
upon successful login, allowing attackers able to control or obtain=20
another user=E2=80=99s pre-login session ID to impersonate them.


SECURITY-808
Openstack Cloud Plugin did not perform permission checks on methods=20
implementing form validation. This allowed users with Overall/Read access=20
to Jenkins to connect to an attacker-specified URL using attacker-
specified credentials IDs obtained through another method, capturing=20
credentials stored in Jenkins, and to cause Jenkins to submit HTTP=20
requests to attacker-specified URLs.

Additionally, these form validation methods did not require POST requests,=
=20
resulting in a CSRF vulnerability.


SECURITY-825 / CVE-2018-1000402
AWS CodeDeploy Plugin could persist environment variables from the last=20
run of any project with the post-build step configured in the job=E2=80=99s
config.xml file.

In some cases, this allowed users with file system access or Extended Read=
=20
permission to obtain those potentially sensitive environment variables by=20
accessing the project=E2=80=99s config.xml.


SECURITY-833 / CVE-2018-1000403
AWS CodeDeploy Plugin stored the AWS Secret Key in its configuration=20
unencrypted in jobs' config.xml files on the Jenkins master. This key=20
could be viewed by users with Extended Read permission, or access to the=20
master file system.

While masked from view using a password form field, the AWS Secret Key was=
=20
transferred in plain text to users when accessing the job configuration=20
form.


SECURITY-834 / CVE-2018-1000404
AWS CodeBuild Plugin stored the AWS Secret Key in its configuration=20
unencrypted in jobs' config.xml files on the Jenkins master. This key=20
could be viewed by users with Extended Read permission, or access to the=20
master file system.

While masked from view using a password form field, the AWS Secret Key was=
=20
transferred in plain text to users when accessing the job configuration=20
form.


SECURITY-967 / CVE-2018-1000401
AWS CodePipeline Plugin stored the AWS Secret Key in its configuration=20
unencrypted in jobs' config.xml files on the Jenkins master. This key=20
could be viewed by users with Extended Read permission, or access to the=20
master file system.

While masked from view using a password form field, the AWS Secret Key was=
=20
transferred in plain text to users when accessing the job configuration=20
form.


SECURITY-906
Badge Plugin stored and displayed user-provided HTML for badges and=20
summaries unprocessed, allowing users with the ability to control badge=20
content to store malicious HTML to be displayed within Jenkins.


SECURITY-941
CollabNet Plugin disabled SSL/TLS certificate validation for the entire=20
Jenkins master JVM by default.


SECURITY-819
A form validation method in URLTrigger Plugin did not check the permission=
=20
of the user accessing them, allowing anyone with Overall/Read access to=20
Jenkins to cause Jenkins to send a GET request to a specified URL.

Additionally, this form validation method did not require POST requests,=20
resulting in a CSRF vulnerability.


SECURITY-870
Fortify CloudScan Plugin did not validate file names in rulepack ZIP=20
archives it extracts, resulting in an arbitrary file write vulnerability.


SECURITY-950
IBM z/OS Connector Plugin did not encrypt password credentials stored in=20
its configuration. This could be used by users with master file system=20
access to obtain the password.

While masked from view using a password form field, the AWS Secret Key was=
=20
transferred in plain text to administrators when accessing the global=20
configuration form.


SECURITY-927
Configuration as Code Plugin lacked a permission check in the method=20
handling the URL exporting the system configuration. This allows users=20
with Overall/Read access to Jenkins to obtain this YAML export.


SECURITY-929
Configuration as Code Plugin logged secrets set via its configuration to=20
the Jenkins master system log in plain text. This allowed users with=20
access to the Jenkins log files to obtain these passwords and similar=20
secrets.

