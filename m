X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["2191" "Wednesday" "14" "February" "2018" "16:35:43" "+0100" "Daniel Beck" "ml@beckweb.net" "<077A6F23-B377-4356-8FD7-A21B6AB47148@beckweb.net>" "57" "[oss-security] Multiple vulnerabilities in Jenkins" nil nil nil "2" "2018021415:35:43" "[oss-security] Multiple vulnerabilities in Jenkins" (number mark "U       ml@beckweb.n Feb 14   57/2191  " thread-indent "\"[oss-security] Multiple vulnerabilities in Jenkins\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 29721 invoked by uid 550); 14 Feb 2018 15:35:56 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 29698 invoked from network); 14 Feb 2018 15:35:55 -0000
From: Daniel Beck <ml@beckweb.net>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Mime-Version: 1.0 (Mac OS X Mail 10.3 \(3273\))
Message-Id: <077A6F23-B377-4356-8FD7-A21B6AB47148@beckweb.net>
Date: Wed, 14 Feb 2018 16:35:43 +0100
To: oss-security@lists.openwall.com
X-Mailer: Apple Mail (2.3273)
X-bounce-key: webpack.hosteurope.de;ml@beckweb.net;1518622555;40d77885;
X-HE-SMSGID: 1elz5z-0007kZ-T1
Subject: [oss-security] Multiple vulnerabilities in Jenkins

Jenkins is an open source automation server which enables developers around=
=20
the world to reliably build, test, and deploy their software. The following=
=20
releases contain fixes for security vulnerabilities:

* Jenkins (weekly) 2.107
* Jenkins (LTS) 2.89.4

Summaries of the vulnerabilities are below. More details, severity, and
attribution can be found here:
https://jenkins.io/security/advisory/2018-02-14/

We provide advance notification for security updates on this mailing list:
https://groups.google.com/d/forum/jenkinsci-advisories

If you find security vulnerabilities in Jenkins, please report them as
described here:
https://jenkins.io/security/#reporting-vulnerabilities

---

SECURITY-506
The form validation for the proxy configuration form did not check the=20
permission of the user accessing it, allowing anyone with Overall/Read=20
access to Jenkins to cause Jenkins to send a GET request to a specified=20
URL, optionally with a specified proxy configuration.

If that request=E2=80=99s HTTP response code indicates success, the form va=
lidation=20
is returning a generic success message, otherwise the HTTP status code is=20
returned. It was not possible to reuse an existing proxy configuration to=20
send those requests; that configuration had to be provided by the attacker.


SECURITY-705 / CVE-2018-6356
Jenkins did not properly prevent specifying relative paths that escape a=20
base directory for URLs accessing plugin resource files. This allowed users=
=20
with Overall/Read permission to download files from the Jenkins master they=
=20
should not have access to.

On Windows, any file accessible to the Jenkins master process could be=20
downloaded. On other operating systems, any file within the Jenkins home=20
directory accessible to the Jenkins master process could be downloaded.


SECURITY-717
Jenkins did not take into account case-insensitive file systems when=20
preventing access to plugin resource files that should not be accessible.=20
This allowed users with Overall/Read permission to download plugin resource=
=20
files in META-INF and WEB-INF directories, such as the plugins' JAR files,=
=20
which could contain hardcoded secrets.

