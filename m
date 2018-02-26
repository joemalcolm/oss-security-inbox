X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["6570" "Monday" "26" "February" "2018" "13:39:42" "+0100" "Daniel Beck" "ml@beckweb.net" "<EE50D829-E164-4655-8E42-E289C14E8E58@beckweb.net>" "165" "[oss-security] Multiple vulnerabilities in Jenkins plugins" nil nil nil "2" "2018022612:39:42" "[oss-security] Multiple vulnerabilities in Jenkins plugins" (number mark "U       ml@beckweb.n Feb 26  165/6570  " thread-indent "\"[oss-security] Multiple vulnerabilities in Jenkins plugins\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 11493 invoked by uid 550); 26 Feb 2018 12:39:56 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 11468 invoked from network); 26 Feb 2018 12:39:55 -0000
From: Daniel Beck <ml@beckweb.net>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Mime-Version: 1.0 (Mac OS X Mail 10.3 \(3273\))
Message-Id: <EE50D829-E164-4655-8E42-E289C14E8E58@beckweb.net>
Date: Mon, 26 Feb 2018 13:39:42 +0100
To: oss-security@lists.openwall.com
X-Mailer: Apple Mail (2.3273)
X-bounce-key: webpack.hosteurope.de;ml@beckweb.net;1519648795;31379b3a;
X-HE-SMSGID: 1eqI4G-00047Y-7N
Subject: [oss-security] Multiple vulnerabilities in Jenkins plugins

Jenkins is an open source automation server which enables developers around
the world to reliably build, test, and deploy their software. The following
releases contain fixes for security vulnerabilities:

* Coverity Plugin 1.11.0
* CppNCSS Plugin 1.2
* Environment Injector Plugin 1.91
* Gerrit Trigger Plugin 2.27.5
* Git Plugin 3.8.0
* Google Play Android Publisher Plugin 1.7
* Job and Node ownership Plugin 0.12.0
* Mercurial Plugin 2.3
* promoted builds Plugin 3.0
* Subversion Plugin 2.10.3
* TestLink Plugin 3.13

Additionally, one plugin was removed from distribution as it has been=20
deprecated in 2016, and there are no plans to fix its security issue:

- Azure Slave Plugin

Summaries of the vulnerabilities are below. More details, severity, and
attribution can be found here:
https://jenkins.io/security/advisory/2018-02-26/

We provide advance notification for security updates on this mailing list:
https://groups.google.com/d/forum/jenkinsci-advisories

If you find security vulnerabilities in Jenkins, please report them as
described here:
https://jenkins.io/security/#reporting-vulnerabilities

---

SECURITY-248
EnvInject plugin stores environment variables in order to visualize them in=
=20
the "Injected Environment Variables" view. Sensitive build variables,=20
typically passwords, are exempt from this behavior. Plugin versions older=20
than 1.91 (released on Mar 08, 2015) however did not exempt sensitive=20
variables, and persisted them on disk too. Such persisted sensitive=20
variables may be displayed by any release of this plugin for builds run=20
before it was updated to version 1.91 or newer.

While the bug persisting sensitive build variables has been addressed in
release 1.91, there is no fix addressing this problem for historical build
data.

To prevent the further exposure of sensitive build variables, we recommend
that you (temporarily) disable the visualization of Injected Environment
variables in the global configuration, then remove the sensitive data from
disk by manually removing corresponding entries from injectedEnvVars.txt
files, or deleting the injectedEnvVars.txt files in old build directories,
and rotate all secrets that have potentially been exposed.


SECURITY-260
The Coverity Plugin stored passwords unencrypted as part of its
configuration. This allowed users with Jenkins master local file system
access and Jenkins administrators to retrieve the stored password. The
latter could result in exposure of the passwords through browser
extensions, cross-site scripting vulnerabilities, and similar situations.


SECURITY-402
Missing permission checks in Gerrit Trigger Plugin allowed users with
Overall/Read permission to access a form that showed the configuration of
Gerrit servers in Jenkins. The key file password was only shown in its
encrypted form, if configured. Other options were plainly visible.


SECURITY-403
Missing permission checks in Gerrit Trigger Plugin allowed users with
Overall/Read permission to perform the following actions:

- Configure Gerrit servers
- Connect and disconnect configured Gerrit servers


SECURITY-498
Job and Node ownership Plugin did not prevent the ownership metadata being
overwritten when a job or node configuration was updated from the CLI or
using the remote API (POST config.xml).

This allowed users with Job/Configure permission but without
ManageOwnership/Jobs permission to change job ownership metadata, and users
with Computer/Configure but without ManageOwnership/Nodes to change node
ownership metadata.


SECURITY-554 / CVE-2015-5262
The Azure Slave Plugin bundles a version of the httpclient library that is
vulnerable to CVE-2015-5262.

As the plugin has been deprecated in favor of Azure VM Agents Plugin in
2016, there are no plans to release a fix. It has been removed from
distribution per request by the former maintainers.


SECURITY-712
CppNCSS Plugin did not properly escape the report name and graph name,
resulting in a reflected cross-site scripting vulnerability.


SECURITY-715
Google Play Android Publisher Plugin provides a list of applicable
credential IDs to allow users configuring a job to select the one they=E2=
=80=99d
like to use to authenticate with the Google Play API.

This functionality did not check permissions, allowing any user with
Overall/Read permission to get a list of valid credential IDs. Those could
be used as part of an attack to capture the credentials using another
vulnerability.

Additionally, a related form validation function would allow verification
whether a specified credential is valid for use with the Google Play API.


SECURITY-723
The class handling unauthenticated Git post-commit hook notification
requests at the /git/ path unnecessarily extended another type that handled
requests to the =E2=80=A6/search/ sub-path.

This allowed submission of search queries to Jenkins, and getting a list of
search results usually available to anyone with Overall/Read permission. In
current Jenkins releases, those are typically the names of known users
(both actual users of Jenkins, and known SCM committers) and nodes (master
and agents).


SECURITY-724
The class handling unauthenticated Subversion post-commit hook notification
requests at the /subversion/ path unnecessarily extended another type that
handled requests to the =E2=80=A6/search/ sub-path.

This allowed submission of search queries to Jenkins, and getting a list of
search results usually available to anyone with Overall/Read permission. In
current Jenkins releases, those are typically the names of known users
(both actual users of Jenkins, and known SCM committers) and nodes (master
and agents).


SECURITY-726
The class handling unauthenticated Mercurial post-commit hook notification
requests at the /mercurial/ path unnecessarily extended another type that
handled requests to the =E2=80=A6/search/ sub-path.

This allowed submission of search queries to Jenkins, and getting a list of
search results usually available to anyone with Overall/Read permission. In
current Jenkins releases, those are typically the names of known users
(both actual users of Jenkins, and known SCM committers) and nodes (master
and agents).


SECURITY-731
Users with Job/Configure permission were able to configure TestLink reports
to display arbitrary unescaped HTML e.g. in test case names.


SECURITY-746
In Promoted Builds Plugin, users with Job/Read access were able to approve
and re-execute promotion processes with a manual promotion condition that
did not specify a list of users allowed to manually approve the promotion.

