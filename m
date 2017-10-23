X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["3122" "Monday" "23" "October" "2017" "14:20:30" "+0200" "Daniel Beck" "ml@beckweb.net" "<D63A4457-CF66-4203-BBA2-F2D432A2DBE0@beckweb.net>" "83" "[oss-security] Multiple vulnerabilities in Jenkins plugins" nil nil nil "10" "2017102312:20:30" "[oss-security] Multiple vulnerabilities in Jenkins plugins" (number mark "U       ml@beckweb.n Oct 23   83/3122  " thread-indent "\"[oss-security] Multiple vulnerabilities in Jenkins plugins\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 23804 invoked by uid 550); 23 Oct 2017 12:20:42 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 23774 invoked from network); 23 Oct 2017 12:20:41 -0000
From: Daniel Beck <ml@beckweb.net>
Content-Type: text/plain; charset=us-ascii
Content-Transfer-Encoding: quoted-printable
Mime-Version: 1.0 (Mac OS X Mail 10.3 \(3273\))
Message-Id: <D63A4457-CF66-4203-BBA2-F2D432A2DBE0@beckweb.net>
Date: Mon, 23 Oct 2017 14:20:30 +0200
To: oss-security@lists.openwall.com
X-Mailer: Apple Mail (2.3273)
X-bounce-key: webpack.hosteurope.de;ml@beckweb.net;1508761241;1abc53ff;
X-HE-SMSGID: 1e6biY-0002Wt-51
Subject: [oss-security] Multiple vulnerabilities in Jenkins plugins

Jenkins is an open source automation server which enables developers around=
=20
the world to reliably build, test, and deploy their software. The following=
=20
plugin releases contain fixes for security vulnerabilities:

* Active Choices (uno-choice) Plugin 2.0
* Build-Publisher Plugin 1.22
* Dependency Graph Viewer Plugin 0.13
* global-build-stats Plugin 1.5
* Multijob Plugin 1.26

Additionally, we announce a vulnerability in SCP publisher plugin without f=
ix.

Summaries of the vulnerabilities are below. More details, severity, and
attribution can be found here:
https://jenkins.io/security/advisory/2017-10-23/

We provide advance notification for security updates on this mailing list:
https://groups.google.com/d/forum/jenkinsci-advisories

If you find security vulnerabilities in Jenkins, please report them as
described here:
https://jenkins.io/security/#reporting-vulnerabilities

---

SECURITY-470
Active Choices plugin allowed users with Job/Configure permission to
provide arbitrary HTML to be shown on the Build With Parameters page
through the Active Choices Reactive Reference Parameter type. This could
include, for example, arbitrary JavaScript.


SECURITY-50
Some URLs provided by global-build-stats plugin returned a JSON response=20
that contained request parameters. These responses had the=20
Content-Type: text/html, so could have been interpreted as HTML by clients,
resulting in a potential reflected cross-site scripting vulnerability.

Additionally, some URLs provided by global-build-stats plugin that modify=20
data did not require POST requests to be sent, resulting in a potential=20
cross-site request forgery vulnerability.


SECURITY-57
Dependency Graph Viewer plugin did not perform permission checks for the=20
API endpoint that modifies the dependency graph, allowing anyone with=20
Overall/Read permission to modify this data.


SECURITY-374
SCP publisher plugin stores credentials to other Jenkins instances in the=20
file be.certipost.hudson.plugin.SCPRepositoryPublisher.xml in the Jenkins=20
master home directory. These credentials are stored unencrypted, allowing=20
anyone with local file system access to access them.

Additionally, the credentials are also transmitted in plain text as part=20
of the configuration form. This could result in exposure of the credentials=
=20
through browser extensions, cross-site scripting vulnerabilities, and=20
similar situations.


SECURITY-378
Build-Publisher plugin stores credentials to other Jenkins instances in the=
=20
file hudson.plugins.build_publisher.BuildPublisher.xml in the Jenkins=20
master home directory. These credentials were stored unencrypted, allowing=
=20
anyone with local file system access to access them.

Additionally, the credentials were also transmitted in plain text as part=20
of the configuration form. This could result in exposure of the API key=20
through browser extensions, cross-site scripting vulnerabilities, and=20
similar situations.


JENKINS-36333
Multijob plugin did not check permissions in the Resume Build action,=20
allowing anyone with Job/Read permission to resume the build.

