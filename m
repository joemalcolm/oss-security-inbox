X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["2656" "Wednesday" "18" "July" "2018" "16:38:38" "+0200" "Daniel Beck" "ml@beckweb.net" "<2EA2CE8E-22FD-4098-89D4-A1A9ACB7F970@beckweb.net>" "74" "[oss-security] Multiple vulnerabilities in Jenkins" nil nil nil "7" "2018071814:38:38" "[oss-security] Multiple vulnerabilities in Jenkins" (number mark "U       ml@beckweb.n Jul 18   74/2656  " thread-indent "\"[oss-security] Multiple vulnerabilities in Jenkins\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 24086 invoked by uid 550); 18 Jul 2018 14:38:51 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 24062 invoked from network); 18 Jul 2018 14:38:50 -0000
From: Daniel Beck <ml@beckweb.net>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Mime-Version: 1.0 (Mac OS X Mail 10.3 \(3273\))
Message-Id: <2EA2CE8E-22FD-4098-89D4-A1A9ACB7F970@beckweb.net>
Date: Wed, 18 Jul 2018 16:38:38 +0200
To: oss-security@lists.openwall.com
X-Mailer: Apple Mail (2.3273)
X-bounce-key: webpack.hosteurope.de;ml@beckweb.net;1531924730;de2a1f32;
X-HE-SMSGID: 1ffnbC-0000sd-TA
Subject: [oss-security] Multiple vulnerabilities in Jenkins

Jenkins is an open source automation server which enables developers around
the world to reliably build, test, and deploy their software. The following
releases contain fixes for security vulnerabilities:

* Jenkins (weekly) 2.133
* Jenkins (LTS) 2.121.2

Summaries of the vulnerabilities are below. More details, severity, and
attribution can be found here:
https://jenkins.io/security/advisory/2018-07-18/

We provide advance notification for security updates on this mailing list:
https://groups.google.com/d/forum/jenkinsci-advisories

If you discover security vulnerabilities in Jenkins, please report them as
described here:
https://jenkins.io/security/#reporting-vulnerabilities

---

SECURITY-897
Unauthenticated users could provide maliciously crafted login credentials=20
that cause Jenkins to move the config.xml file from the Jenkins home=20
directory. This configuration file contains basic configuration of=20
Jenkins, including the selected security realm and authorization strategy.=
=20
If Jenkins is started without this file present, it will revert to the=20
legacy defaults of granting administrator access to anonymous users.


SECURITY-914
An arbitrary file read vulnerability in the Stapler web framework used by=20
Jenkins allowed unauthenticated users to send crafted HTTP requests=20
returning the contents of any file on the Jenkins master file system that=20
the Jenkins master process has access to.


SECURITY-891
The URLs handling cancellation of queued builds did not perform a=20
permission check, allowing users with Overall/Read permission to cancel=20
queued builds.


SECURITY-892
The URL that initiates agent launches on the Jenkins master did not perform=
=20
a permission check, allowing users with Overall/Read permission to initiate=
=20
agent launches.


SECURITY-944
The build timeline widget shown on URLs like /view/=E2=80=A6/builds did not=
=20
properly escape display names of items. This resulted in a cross-site=20
scripting vulnerability exploitable by users able to control item display=20
names.


SECURITY-925
Files indicating when a plugin JPI file was last extracted into a=20
subdirectory of plugins/ in the Jenkins home directory was accessible via=20
HTTP by users with Overall/Read permission. This allowed unauthorized users=
=20
to determine the likely install date of a given plugin.


SECURITY-390
Stapler is the web framework used by Jenkins to route HTTP requests. When=20
its debug mode is enabled, HTTP 404 error pages display diagnostic=20
information. Those error pages did not escape parts of URLs they displayed,=
=20
in rare cases resulting in a cross-site scripting vulnerability.

