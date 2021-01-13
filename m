X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["6362" "Wednesday" "13" "January" "2021" "15:24:49" "+0100" "Daniel Beck" "ml@beckweb.net" "<FC7D4C78-D385-4BF3-8BF9-FB707830F104@beckweb.net>" "160" "[oss-security] Multiple vulnerabilities in Jenkins and Jenkins plugins" nil nil nil "1" "2021011314:24:49" "[oss-security] Multiple vulnerabilities in Jenkins and Jenkins plugins" (number mark "U       ml@beckweb.n Jan 13  160/6362  " thread-indent "\"[oss-security] Multiple vulnerabilities in Jenkins and Jenkins plugins\"\n") nil nil nil nil nil nil nil nil nil "[oss-security] Multiple vulnerabilities in Jenkins and Jenkins plugins" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 7952 invoked by uid 550); 13 Jan 2021 14:25:01 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 7931 invoked from network); 13 Jan 2021 14:25:01 -0000
From: Daniel Beck <ml@beckweb.net>
Content-Type: text/plain;
	charset=us-ascii
Content-Transfer-Encoding: quoted-printable
Mime-Version: 1.0 (Mac OS X Mail 12.4 \(3445.104.15\))
Message-Id: <FC7D4C78-D385-4BF3-8BF9-FB707830F104@beckweb.net>
Date: Wed, 13 Jan 2021 15:24:49 +0100
To: oss-security@lists.openwall.com
X-Mailer: Apple Mail (2.3445.104.15)
X-bounce-key: webpack.hosteurope.de;ml@beckweb.net;1610547901;f0fb8d88;
X-HE-SMSGID: 1kzh4r-0008G1-Q4
Subject: [oss-security] Multiple vulnerabilities in Jenkins and Jenkins plugins

Jenkins is an open source automation server which enables developers around
the world to reliably build, test, and deploy their software.

The following releases contain fixes for security vulnerabilities:

* Jenkins 2.275
* Jenkins LTS 2.263.2
* Bumblebee HP ALM Plugin 4.1.6
* TICS Plugin 2020.3.0.7
* TraceTronic ECU-TEST Plugin 2.24


Summaries of the vulnerabilities are below. More details, severity, and
attribution can be found here:
https://www.jenkins.io/security/advisory/2021-01-13/

We provide advance notification for security updates on this mailing list:
https://groups.google.com/d/forum/jenkinsci-advisories

If you discover security vulnerabilities in Jenkins, please report them as
described here:
https://www.jenkins.io/security/#reporting-vulnerabilities

---

SECURITY-1889 / CVE-2021-21603
Jenkins 2.274 and earlier, LTS 2.263.1 and earlier does not escape
notification bar response contents (typically shown after form submissions
via Apply button).

This results in a cross-site scripting (XSS) vulnerability exploitable by
attackers able to influence notification bar contents.


SECURITY-2035 / CVE-2021-21608
Jenkins 2.274 and earlier, LTS 2.263.1 and earlier does not escape button
labels in the Jenkins UI.

This results in a cross-site scripting vulnerability exploitable by
attackers with the ability to control button labels. An example of buttons
with a user-controlled label are the buttons of the Pipeline `input` step.


SECURITY-2153 / CVE-2021-21610
Jenkins allows administrators to choose the markup formatter to use for
descriptions of jobs, builds, views, etc. displayed in Jenkins. When
editing such a description, users can choose to have Jenkins render a
formatted preview of the description they entered.

Jenkins 2.274 and earlier, LTS 2.263.1 and earlier does not implement any
restrictions for the URL rendering the formatted preview of markup passed
as a query parameter. This results in a reflected cross-site scripting
(XSS) vulnerability if the configured markup formatter does not prohibit
unsafe elements (JavaScript) in markup, like Anything Goes Formatter
Plugin.


SECURITY-2171 / CVE-2021-21611
Jenkins 2.274 and earlier, LTS 2.263.1 and earlier does not escape display
names and IDs of item types shown on the New Item page.

This results in a stored cross-site scripting (XSS) vulnerability
exploitable by attackers able to specify display names or IDs of item
types.


SECURITY-1923 / CVE-2021-21604
Jenkins provides XML REST APIs to configure views, jobs, and other items.
When deserialization fails because of invalid data, Jenkins 2.274 and
earlier, LTS 2.263.1 and earlier stores invalid object references created
through these endpoints in the Old Data Monitor. If an administrator
discards the old data, some erroneous data submitted to these endpoints may
be persisted.

This allows attackers with View/Create, Job/Create, Agent/Create, or their
respective */Configure permissions to inject crafted content into Old Data
Monitor that results in the instantiation of potentially unsafe objects
when discarded by an administrator.


SECURITY-1452 / CVE-2021-21602
The file browser for workspaces, archived artifacts, and
`$JENKINS_HOME/userContent/` follows symbolic links to locations outside
the directory being browsed in Jenkins 2.274 and earlier, LTS 2.263.1 and
earlier.

This allows attackers with Job/Workspace permission and the ability to
control workspace contents (e.g., with Job/Configure permission or the
ability to change SCM contents) to create symbolic links that allow them to
access files outside workspaces using the workspace browser.


SECURITY-2021 / CVE-2021-21605
Jenkins 2.274 and earlier, LTS 2.263.1 and earlier allows users with
Agent/Configure permission to choose agent names that cause Jenkins to
override unrelated `config.xml` files. If the global `config.xml` file is
replaced, Jenkins will start up with unsafe legacy defaults after a
restart.


SECURITY-2023 / CVE-2021-21606
Jenkins provides a feature for jobs to store and track fingerprints of
files used during a build. Jenkins 2.274 and earlier, LTS 2.263.1 and
earlier provides a REST API to check where a given fingerprint was used by
which builds. This endpoint does not fully validate that the provided
fingerprint ID is properly formatted before checking for the XML metadata
for that fingerprint on the controller file system.

This allows attackers with Overall/Read permission to check for the
existence of XML files on the controller file system where the relative
path can be constructed as 32 characters.


SECURITY-2025 / CVE-2021-21607
Jenkins renders several different graphs for features like agent and label
usage statistics, memory usage, or various plugin-provided statistics.

Jenkins 2.274 and earlier, LTS 2.263.1 and earlier does not limit the graph
size provided as query parameters.

This allows attackers to request, or to have legitimate Jenkins users
request, crafted URLs that rapidly use all available memory in Jenkins,
potentially leading to out of memory errors.


SECURITY-2047 / CVE-2021-21609
Jenkins includes a static list of URLs that are always accessible even
without Overall/Read permission, such as the login form. These URLs are
excluded from an otherwise universal permission check.

Jenkins 2.274 and earlier, LTS 2.263.1 and earlier does not correctly
compare requested URLs with that list.


SECURITY-2057 / CVE-2021-21612
TraceTronic ECU-TEST Plugin 2.23.1 and earlier stores credentials
unencrypted in its global configuration file
`de.tracetronic.jenkins.plugins.ecutest.report.atx.installation.ATXInstalla=
tion.xml`
on the Jenkins controller as part of its configuration.

These credentials can be viewed by users with access to the Jenkins
controller file system.


SECURITY-2098 / CVE-2021-21613
TICS Plugin 2020.3.0.6 and earlier does not escape TICS service responses.

This results in a cross-site scripting (XSS) vulnerability exploitable by
attackers able to control TICS service response content.


SECURITY-2156 / CVE-2021-21614
Bumblebee HP ALM Plugin 4.1.5 and earlier stores credentials unencrypted in
its global configuration file
`com.agiletestware.bumblebee.BumblebeeGlobalConfig.xml` on the Jenkins
controller as part of its configuration.

These credentials can be viewed by users with access to the Jenkins
controller file system.=
