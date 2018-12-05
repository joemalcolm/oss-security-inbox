X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["3267" "Wednesday" "5" "December" "2018" "10:18:04" "+0100" "Daniel Beck" "ml@beckweb.net" "<0DBFE9A5-170A-437C-B42C-AF5088CFB14D@beckweb.net>" "75" "[oss-security] Multiple vulnerabilities in Jenkins" "^Date:" nil nil "12" "2018120509:18:04" "[oss-security] Multiple vulnerabilities in Jenkins" (number mark "        ml@beckweb.n Dec  5   75/3267  " thread-indent "\"[oss-security] Multiple vulnerabilities in Jenkins\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 32031 invoked by uid 550); 5 Dec 2018 09:18:17 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 32011 invoked from network); 5 Dec 2018 09:18:17 -0000
Content-Type: text/plain;
	charset=utf-8
Content-Transfer-Encoding: quoted-printable
Mime-Version: 1.0 (Mac OS X Mail 11.5 \(3445.9.1\))
Message-Id: <0DBFE9A5-170A-437C-B42C-AF5088CFB14D@beckweb.net>
X-Mailer: Apple Mail (2.3445.9.1)
X-bounce-key: webpack.hosteurope.de;ml@beckweb.net;1544001497;0379a5eb;
X-HE-SMSGID: 1gUTJl-0001Lc-QI
Date: Wed, 5 Dec 2018 10:18:04 +0100
From: Daniel Beck <ml@beckweb.net>
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] Multiple vulnerabilities in Jenkins
To: oss-security@lists.openwall.com

Jenkins is an open source automation server which enables developers around
the world to reliably build, test, and deploy their software. The following
releases contain fixes for security vulnerabilities:

* Jenkins weekly 2.154
* Jenkins LTS 2.138.4
* Jenkins LTS 2.150.1

Summaries of the vulnerabilities are below. More details, severity, and
attribution can be found here:
https://jenkins.io/security/advisory/2018-12-05/

We provide advance notification for security updates on this mailing list:
https://groups.google.com/d/forum/jenkinsci-advisories

If you discover security vulnerabilities in Jenkins, please report them as
described here:
https://jenkins.io/security/#reporting-vulnerabilities

---

SECURITY-595
Jenkins uses the Stapler web framework for HTTP request handling.=20
Stapler=E2=80=99s basic premise is that it uses reflective access to code=20
elements matching its naming conventions. For example, any public method=20
whose name starts with get, and that has a String, int, long, or no=20
argument can be invoked this way on objects that are reachable through=20
these means. As these naming conventions closely match common code=20
patterns in Java, accessing crafted URLs could invoke methods never=20
intended to be invoked this way.

The Stapler web framework has been extended with a Service Provider=20
Interface (SPI) that allows methods and fields to be excluded from routing.
The implementation of that SPI in Jenkins now restricts which getter=20
methods, do* action methods, and fields can be invoked reflectively by=20
Stapler.


SECURITY-1072
The fix for SECURITY-499 introduced a mechanism that renamed user=20
directories on disk as a user with an unsafe user name (user ID) is loaded.
Insufficient input validation allowed attackers to rename such user=20
directories even for users with a safe user name by submitting a crafted=20
user name when attempting to log in, even with an invalid password. Doing=20
so prevented users from logging in successfully afterwards.

Jenkins no longer uses directory names as a reference for user names,=20
making the on-load migration of user records unnecessary. Instead, the=20
new file users/users.xml is used to map user names to the directories=20
containing the user metadata.


SECURITY-904
The file browser used for workspaces, archived artifacts, and=20
$JENKINS_HOME/userContent/ followed symbolic links to locations outside=20
the directory being browsed.

While builds typically have access to the file system outside the=20
workspace allocated by Jenkins, this should not extend to beyond the=20
execution of a build on that agent. Notably, the configuration may have=20
been changed to not allow a build to run on a given agent, but the=20
workspace used during the previous execution still exists, and could=20
allow browsing the file system outside the workspace.

Neither browsing through the UI nor downloading directory content as a=20
ZIP file allow accessing directories and files outside the workspace=20
anymore.


SECURITY-1193
The form validation for cron expressions (e.g. "Poll SCM", "Build=20
periodically") could enter infinite loops when cron expressions only=20
matching certain rare dates were entered, blocking request handling=20
threads indefinitely.

