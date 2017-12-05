X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1712" "Tuesday" "5" "December" "2017" "11:09:33" "+0100" "Daniel Beck" "ml@beckweb.net" "<CE3AFC1B-46F2-4482-809D-2D8822A219FB@beckweb.net>" "44" "[oss-security] Jenkins stored cross-site scripting vulnerability" nil nil nil "12" "2017120510:09:33" "[oss-security] Jenkins stored cross-site scripting vulnerability" (number mark "U       ml@beckweb.n Dec  5   44/1712  " thread-indent "\"[oss-security] Jenkins stored cross-site scripting vulnerability\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 16115 invoked by uid 550); 5 Dec 2017 10:09:45 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 16091 invoked from network); 5 Dec 2017 10:09:45 -0000
From: Daniel Beck <ml@beckweb.net>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Mime-Version: 1.0 (Mac OS X Mail 10.3 \(3273\))
Message-Id: <CE3AFC1B-46F2-4482-809D-2D8822A219FB@beckweb.net>
Date: Tue, 5 Dec 2017 11:09:33 +0100
To: oss-security@lists.openwall.com
X-Mailer: Apple Mail (2.3273)
X-bounce-key: webpack.hosteurope.de;ml@beckweb.net;1512468585;116c0366;
X-HE-SMSGID: 1eMAAP-0002J1-MA
Subject: [oss-security] Jenkins stored cross-site scripting vulnerability

Jenkins is an open source automation server which enables developers around
the world to reliably build, test, and deploy their software.

The Jenkins project released a security advisory today. A description of the
vulnerability is below. More details, severity, and attribution can be found
here:
https://jenkins.io/security/advisory/2017-12-05/

We provide advance notification for security updates on this mailing list:
https://groups.google.com/d/forum/jenkinsci-advisories

If you discover security vulnerabilities in Jenkins, please report them as
described here:
https://jenkins.io/security/#reporting-vulnerabilities

---

SECURITY-624
Jenkins administrators can configure tools, such as JDK, Maven, or Ant,
that will be available in job configurations for use by build scripts. Some
tool names are not properly escaped on job configuration forms, resulting
in a stored cross-site scripting vulnerability.

Tools confirmed to be affected are:
- JDK (provided by Jenkins core)
- Ant (provided by Ant plugin)

Others may also be affected by this.

This vulnerability can only be exploited by Jenkins administrators, as
they=E2=80=99re the only ones able to define tools. In the vast majority of=
 Jenkins
configurations, administrators are able to run any code and install any
plugin. Therefore this vulnerability only really affects installations that
don=E2=80=99t grant administrators the Run Scripts, Configure Update Sites,=
 and
Install Plugins permissions.

The Jenkins project has prepared a plugin preventing the configuration of
unsafe tool names at https://github.com/jenkinsci-cert/security624 as a
workaround. If you=E2=80=99re affected by this issue, we recommend installi=
ng this
plugin.

