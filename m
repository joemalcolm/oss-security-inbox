X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["2811" "Monday" "10" "December" "2018" "01:50:16" "+0100" "Daniel Beck" "ml@beckweb.net" "<E8407ACC-FD18-4EB6-AE20-F7C2187F0DDF@beckweb.net>" "69" "Re: [oss-security] Multiple vulnerabilities in Jenkins" nil nil nil "12" "2018121000:50:16" "[oss-security] Multiple vulnerabilities in Jenkins" (number mark "U       ml@beckweb.n Dec 10   69/2811  " thread-indent "\"Re: [oss-security] Multiple vulnerabilities in Jenkins\"\n") "<0DBFE9A5-170A-437C-B42C-AF5088CFB14D@beckweb.net>" ("<0DBFE9A5-170A-437C-B42C-AF5088CFB14D@beckweb.net>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 24336 invoked by uid 550); 10 Dec 2018 00:50:31 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 24315 invoked from network); 10 Dec 2018 00:50:30 -0000
From: Daniel Beck <ml@beckweb.net>
Content-Type: text/plain;
	charset=utf-8
Content-Transfer-Encoding: quoted-printable
Mime-Version: 1.0 (Mac OS X Mail 11.5 \(3445.9.1\))
Date: Mon, 10 Dec 2018 01:50:16 +0100
References: <0DBFE9A5-170A-437C-B42C-AF5088CFB14D@beckweb.net>
To: oss-security@lists.openwall.com
In-Reply-To: <0DBFE9A5-170A-437C-B42C-AF5088CFB14D@beckweb.net>
Message-Id: <E8407ACC-FD18-4EB6-AE20-F7C2187F0DDF@beckweb.net>
X-Mailer: Apple Mail (2.3445.9.1)
X-bounce-key: webpack.hosteurope.de;ml@beckweb.net;1544403030;20c8ff5a;
X-HE-SMSGID: 1gW9m7-0006PI-1R
Subject: Re: [oss-security] Multiple vulnerabilities in Jenkins



> On 5. Dec 2018, at 10:18, Daniel Beck <ml@beckweb.net> wrote:
>=20
> SECURITY-595
> Jenkins uses the Stapler web framework for HTTP request handling.=20
> Stapler=E2=80=99s basic premise is that it uses reflective access to code=
=20
> elements matching its naming conventions. For example, any public method=
=20
> whose name starts with get, and that has a String, int, long, or no=20
> argument can be invoked this way on objects that are reachable through=20
> these means. As these naming conventions closely match common code=20
> patterns in Java, accessing crafted URLs could invoke methods never=20
> intended to be invoked this way.
>=20
> The Stapler web framework has been extended with a Service Provider=20
> Interface (SPI) that allows methods and fields to be excluded from routin=
g.
> The implementation of that SPI in Jenkins now restricts which getter=20
> methods, do* action methods, and fields can be invoked reflectively by=20
> Stapler.

CVE-2018-1000861

> SECURITY-1072
> The fix for SECURITY-499 introduced a mechanism that renamed user=20
> directories on disk as a user with an unsafe user name (user ID) is loade=
d.
> Insufficient input validation allowed attackers to rename such user=20
> directories even for users with a safe user name by submitting a crafted=
=20
> user name when attempting to log in, even with an invalid password. Doing=
=20
> so prevented users from logging in successfully afterwards.
>=20
> Jenkins no longer uses directory names as a reference for user names,=20
> making the on-load migration of user records unnecessary. Instead, the=20
> new file users/users.xml is used to map user names to the directories=20
> containing the user metadata.

CVE-2018-1000863

> SECURITY-904
> The file browser used for workspaces, archived artifacts, and=20
> $JENKINS_HOME/userContent/ followed symbolic links to locations outside=20
> the directory being browsed.
>=20
> While builds typically have access to the file system outside the=20
> workspace allocated by Jenkins, this should not extend to beyond the=20
> execution of a build on that agent. Notably, the configuration may have=20
> been changed to not allow a build to run on a given agent, but the=20
> workspace used during the previous execution still exists, and could=20
> allow browsing the file system outside the workspace.
>=20
> Neither browsing through the UI nor downloading directory content as a=20
> ZIP file allow accessing directories and files outside the workspace=20
> anymore.

CVE-2018-1000862

> SECURITY-1193
> The form validation for cron expressions (e.g. "Poll SCM", "Build=20
> periodically") could enter infinite loops when cron expressions only=20
> matching certain rare dates were entered, blocking request handling=20
> threads indefinitely.

CVE-2018-1000864

