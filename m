X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["6621" "Wednesday" "31" "July" "2019" "14:41:03" "+0200" "Daniel Beck" "ml@beckweb.net" "<33295FEC-7C08-4AFD-A55C-B5DCB0042AAB@beckweb.net>" "158" "[oss-security] Multiple vulnerabilities in Jenkins plugins" nil nil nil "7" "2019073112:41:03" "[oss-security] Multiple vulnerabilities in Jenkins plugins" (number mark "U       ml@beckweb.n Jul 31  158/6621  " thread-indent "\"[oss-security] Multiple vulnerabilities in Jenkins plugins\"\n") nil nil nil nil nil nil nil nil nil "[oss-security] Multiple vulnerabilities in Jenkins plugins" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 1671 invoked by uid 550); 31 Jul 2019 12:41:17 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 1634 invoked from network); 31 Jul 2019 12:41:16 -0000
From: Daniel Beck <ml@beckweb.net>
Content-Type: text/plain;
	charset=utf-8
Content-Transfer-Encoding: quoted-printable
Mime-Version: 1.0 (Mac OS X Mail 11.5 \(3445.9.1\))
Message-Id: <33295FEC-7C08-4AFD-A55C-B5DCB0042AAB@beckweb.net>
Date: Wed, 31 Jul 2019 14:41:03 +0200
To: oss-security@lists.openwall.com
X-Mailer: Apple Mail (2.3445.9.1)
X-bounce-key: webpack.hosteurope.de;ml@beckweb.net;1564576876;ead27781;
X-HE-SMSGID: 1hsnui-0004n8-Um
Subject: [oss-security] Multiple vulnerabilities in Jenkins plugins

Jenkins is an open source automation server which enables developers around
the world to reliably build, test, and deploy their software. The following
releases contain fixes for security vulnerabilities:

* Amazon EC2 Plugin 1.44
* Configuration as Code Plugin 1.25
* Google Kubernetes Engine Plugin 0.6.3
* Maven Integration Plugin 3.4
* Maven Release Plug-in Plugin 0.15.0
* Pipeline: Shared Groovy Libraries Plugin 2.15
* Script Security Plugin 1.62
* Skytap Cloud CI Plugin 2.07

Summaries of the vulnerabilities are below. More details, severity, and
attribution can be found here:
https://jenkins.io/security/advisory/2019-07-31/

We provide advance notification for security updates on this mailing list:
https://groups.google.com/d/forum/jenkinsci-advisories

If you discover security vulnerabilities in Jenkins, please report them as
described here:
https://jenkins.io/security/#reporting-vulnerabilities

---


SECURITY-1465 (1) / CVE-2019-10355
Sandbox protection in Script Security Plugin could be circumvented by
casting crafted objects to other types. This allowed attackers able to
specify sandboxed scripts to invoke constructors that weren=E2=80=99t white=
listed.

Additionally, this could be used to read arbitrary files on the Jenkins
master.


SECURITY-1465 (2) / CVE-2019-10356
Sandbox protection in Script Security Plugin could be circumvented through
crafted subexpressions used as arguments to method pointer expressions. This
allowed attackers able to specify sandboxed scripts to execute arbitrary
code in the context of the Jenkins master JVM.


SECURITY-1422 / CVE-2019-10357
Pipeline: Shared Groovy Libraries Plugin provides form validation to
determine whether the revision (e.g. commit, tag, or branch name) specified
for a global library exists in the repository. This form validation method
lacked a permission check, allowing attackers with Overall/Read access to
determine whether an attacker-specified revision exists in an SCM repository
configured for use in an existing shared library.


SECURITY-713 / CVE-2019-10358
Maven Integration Plugin did not apply build log decorators from the Build
Environment configuration to module builds. This could prevent sensitive
content in module build logs from being masked.


SECURITY-1098 / CVE-2019-10359
Maven Release Plug-in Plugin did not require that requests sent to the
endpoint used to initiate the release process use POST. This resulted in a
cross-site request forgery vulnerability that allows attackers to perform
releases.


SECURITY-1184 / CVE-2019-10360
Maven Release Plug-in Plugin did not properly escape variables in multiple
views, resulting in a stored cross-site scripting vulnerability.


SECURITY-1435 / CVE-2019-10361
Maven Release Plug-in Plugin stored credentials unencrypted in its global
configuration file org.jvnet.hudson.plugins.m2release.M2ReleaseBuildWrapper.
xml on the Jenkins master. These credentials could be viewed by users with
access to the master file system.


SECURITY-1279 / CVE-2019-10343
Configuration as Code Plugin logs the changes it applies to the Jenkins
system log. Secrets such as passwords should be masked (i.e. replaced with
asterisks) in that log to prevent accidental disclosure.

Between Configuration as Code Plugin 0.8-alpha and 1.0, log messages
contained values if the values were specified using properties in the YAML
file (SECURITY-929).
Since Configuration as Code Plugin 1.1, log messages in Configuration as
Code Plugin instead mask values of type Secret, which is used in Jenkins to
store the values encrypted on disk. This did not work in many instances, as
plugins could use the Secret type to store credentials encrypted on disk
while not having the Secret type appear in their Java API.


SECURITY-1290 / CVE-2019-10344
Configuration as Code Plugin provides a generated schema and reference
documentation for the configuration options supported on the current Jenkins
instance. These URLs did not perform additional permission checks, resulting
in their content being available to users with Overall/Read access. This
included detailed information about installed plugins that may not be
available otherwise.


SECURITY-1303 / CVE-2019-10345
Configuration as Code Plugin provides a custom configurator for the Jenkins
proxy configuration.

This feature did not mask the password for logging or encrypt it in the
export.


SECURITY-1446 / CVE-2019-10362
Configuration as Code Plugin allows exporting the live Jenkins
configuration, as well as importing and applying a configuration provided in
the same format. One of the features of the import is that it allows
specifying variable references (e.g. ${VARIABLE_NAME}) in the configuration
YAML file. These will be replaced by the value of the corresponding
environment variable (or other source of secrets) during import (
interpolation). If such a value should not be interpolated, the escape
character ^ can be used before (e.g. ^${VARIABLE_NAME}).

Exporting did not add ^ escape characters to exported strings, such as
various entity descriptions. This allowed attackers with permission to
configure certain entities, such as credentials or agents, to specify
crafted descriptions containing variable references. These would be replaced
by the corresponding environment variable=E2=80=99s value during a subseque=
nt import.


SECURITY-1458 / CVE-2019-10363
Configuration as Code Plugin allows to export the current Jenkins
configuration as a YAML file. Secrets such as passwords should be exported
in their encrypted form to prevent accidental disclosure.

Configuration as Code Plugin did not reliably detect which values in the
exported YAML file need to be considered sensitive (e.g. credentials and
other secrets), as plugins could use the Secret type to store credentials
encrypted on disk while not having the Secret type appear in their Java API.
This resulted in credentials being exported in plain text in some cases.


SECURITY-673 / CVE-2019-10364
Amazon EC2 Plugin printed a log message that contained the beginning of the
private key to the Jenkins system log.


SECURITY-1345 / CVE-2019-10365
Google Kubernetes Engine Plugin created a temporary file named .kube=E2=80=
=A6config
containing a temporary access token in the project workspace. This allowed
the file to be accessed via workspace browsers, or accidentally archived,
disclosing the token.


SECURITY-1429 / CVE-2019-10366
Skytap Cloud CI Plugin stored credentials unencrypted in job config.xml
files on the Jenkins master. These credentials could be viewed by users with
Extended Read permission, or access to the master file system.

