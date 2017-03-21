X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["2177" "Tuesday" "21" "March" "2017" "02:19:41" "+0100" "Daniel Beck" "ml@beckweb.net" "<60EF1721-9E02-481D-9A2D-204F87D75282@beckweb.net>" "63" "[oss-security] Jenkins plugins -- multiple vulnerabilities" "^Date:" nil nil "3" "2017032101:19:41" "[oss-security] Jenkins plugins -- multiple vulnerabilities" (number mark "        ml@beckweb.n Mar 21   63/2177  " thread-indent "\"[oss-security] Jenkins plugins -- multiple vulnerabilities\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 16227 invoked by uid 550); 21 Mar 2017 01:19:53 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 16209 invoked from network); 21 Mar 2017 01:19:53 -0000
Content-Type: text/plain; charset=us-ascii
Content-Transfer-Encoding: quoted-printable
Message-Id: <60EF1721-9E02-481D-9A2D-204F87D75282@beckweb.net>
Mime-Version: 1.0 (Mac OS X Mail 9.3 \(3124\))
X-Mailer: Apple Mail (2.3124)
X-bounce-key: webpack.hosteurope.de;ml@beckweb.net;1490059193;27f2f331;
X-HE-SMSGID: 1cq8Sb-0000cl-Pz
Date: Tue, 21 Mar 2017 02:19:41 +0100
From: Daniel Beck <ml@beckweb.net>
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] Jenkins plugins -- multiple vulnerabilities
To: oss-security@lists.openwall.com

Jenkins is an open source automation server which enables developers around=
=20
the world to reliably build, test, and deploy their software. The following=
=20
plugin releases published today contain fixes for security vulnerabilities:

- Active Directory 2.3
- DistFork Plugin 1.6.0
- Email Extension (email-ext) 2.57.1
- Mailer Plugin 1.20
- SSH Slaves 1.15

Users of these plugins should upgrade them to the indicated versions.

Additionally, one plugin was removed from distribution as there are no plan=
s=20
to fix its vulnerability, and there are adequate alternatives:

- Pipeline: Classpath Step

Summary and description of the vulnerabilities are below. Some more details=
,=20
severity, and attribution can be found here:
https://jenkins.io/security/advisory/2017-03-20/

We provide advance notification for security updates on this mailing list:
https://groups.google.com/d/forum/jenkinsci-advisories

If you find security vulnerabilities in Jenkins, please report them as=20
described here:
https://jenkins.io/security/#reporting-vulnerabilities

---

SECURITY-161 / CVE-2017-2648
SSH Slaves Plugin did not verify host keys of hosts it connected to.

SECURITY-251 / CVE-2017-2649
Active Directory Plugin did not verify TLS certificate of AD server.

SECURITY-336 / CVE-2017-2650
Pipeline: Classpath Step plugin allows Script Security sandbox bypass for=20
users with SCM commit access, as well as users with e.g. Job/Configure=20
permission in Jenkins.

SECURITY-372 / CVE-2017-2651 (Mailer)
SECURITY-372 / CVE-2017-2654 (Email Extension)
Emails could be sent to addresses not associated with actual users of Jenki=
ns=20
by Mailer Plugin and Email Extension Plugin if they were configured to send=
=20
notifications to a dynamically created list of users based on SCM changes. =
In=20
rare cases this even resulted in emails sent to people who were not involve=
d=20
in whatever project was being built.

SECURITY-386 / CVE-2017-2652
There were no permission checks performed in the Distributed Fork plugin=20
beyond the basic check for Overall/Read permission, allowing anyone with th=
at=20
permission to run arbitrary shell commands on all connected nodes.

