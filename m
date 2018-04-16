X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["2039" "Monday" "16" "April" "2018" "13:25:08" "+0200" "Daniel Beck" "ml@beckweb.net" "<05E0E047-0C5E-4459-890A-39522576EF0F@beckweb.net>" "57" "[oss-security] Multiple vulnerabilities in Jenkins plugins" nil nil nil "4" "2018041611:25:08" "[oss-security] Multiple vulnerabilities in Jenkins plugins" (number mark "U       ml@beckweb.n Apr 16   57/2039  " thread-indent "\"[oss-security] Multiple vulnerabilities in Jenkins plugins\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 17590 invoked by uid 550); 16 Apr 2018 11:25:20 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 17569 invoked from network); 16 Apr 2018 11:25:20 -0000
From: Daniel Beck <ml@beckweb.net>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Mime-Version: 1.0 (Mac OS X Mail 10.3 \(3273\))
Message-Id: <05E0E047-0C5E-4459-890A-39522576EF0F@beckweb.net>
Date: Mon, 16 Apr 2018 13:25:08 +0200
To: oss-security@lists.openwall.com
X-Mailer: Apple Mail (2.3273)
X-bounce-key: webpack.hosteurope.de;ml@beckweb.net;1523877920;0637b6db;
X-HE-SMSGID: 1f82Fw-0004Yf-I5
Subject: [oss-security] Multiple vulnerabilities in Jenkins plugins

Jenkins is an open source automation server which enables developers around
the world to reliably build, test, and deploy their software. The following
releases contain fixes for security vulnerabilities:

* Email Extension 2.62
* Google Login 1.3.1
* HTML Publisher 1.16
* S3 Publisher 0.11.0

Summaries of the vulnerabilities are below. More details, severity, and
attribution can be found here:
https://jenkins.io/security/advisory/2018-04-16/

We provide advance notification for security updates on this mailing list:
https://groups.google.com/d/forum/jenkinsci-advisories

If you find security vulnerabilities in Jenkins, please report them as
described here:
https://jenkins.io/security/#reporting-vulnerabilities

---

SECURITY-442
Google Login Plugin did not invalidate the previous session and create a=20
new one upon successful login, allowing attackers able to control or=20
obtain another user=E2=80=99s pre-login session ID to impersonate them.


SECURITY-684
Google Login Plugin redirected users to an arbitrary URL specified as a=20
query parameter after successful login, enabling phishing attacks.


SECURITY-729
Email Extension Plugin stores an SMTP password in the global Jenkins=20
configuration.

While the password is stored encrypted on disk, it was transmitted in=20
plain text as part of the configuration form. This could result in=20
exposure of the password through browser extensions, cross-site scripting=20
vulnerabilities, and similar situations.


SECURITY-730
S3 Publisher Plugin did not properly escape file names shown on the
Jenkins UI. This resulted in a cross-site scripting vulnerability
exploitable by users able to control the names of uploaded files.


SECURITY-784
HTML Publisher Plugin allows specifying a name for the HTML reports it=20
publishes. This report name was used in the URL of the report and as a=20
directory name on the Jenkins master without further processing, resulting=
=20
in a path traversal vulnerability that allowed overriding files outside=20
the intended directory.

