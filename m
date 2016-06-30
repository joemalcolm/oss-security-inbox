X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["2473" "Thursday" "30" "June" "2016" "04:00:46" "+0000" "halfdog" "me@halfdog.net" "<fake-VM-id.0d012f75613e61c14fa476b20e779933@talos.iv>" "68" "[oss-security] Debian Exim Spool Local Root" nil nil nil "6" "2016063004:00:46" "[oss-security] Debian Exim Spool Local Root" (number mark "U       me@halfdog.n Jun 30   68/2473  " thread-indent "\"[oss-security] Debian Exim Spool Local Root\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 8039 invoked by uid 550); 30 Jun 2016 04:41:52 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 8006 invoked from network); 30 Jun 2016 04:41:47 -0000
From: halfdog <me@halfdog.net>
To: oss-security@lists.openwall.com
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
Date: Thu, 30 Jun 2016 04:00:46 +0000
Subject: [oss-security] Debian Exim Spool Local Root
Message-ID: <20160630040046.1k1Wi9C8fvHf9Wht2elxjL0AiJoYENKh_MwHIz8Uc-k@z>

-----BEGIN PGP SIGNED MESSAGE-----
Hash: SHA512

Hello List,

This is just a minor issue in Exim, no replies so far, so publication
should be OK.

Introduction:
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
Exim4 in some variants is started as root but switches to uid/gid
Debian-exim/Debian-exim. But as Exim might need to store received
messages in user mailboxes, it has to have the ability to regain
privileges. This is also true when Exim is started as "sendmail".
During internal operation, sendmail (Exim) will manipulate message
spool files in directory structures owned by user "Debian-exim"
without caring about symlink attacks. Thus execution of code as
user "Debian-exim" can be used to gain root privileges by invoking
"sendmail" as user "Debian-exim".


POC:
=3D=3D=3D
http://www.halfdog.net/Security/2016/DebianEximSpoolLocalRoot/EximUpgrade.c
demonstrates the issue using a ELF file being both executable
and shared library which is invoked multiple times by different
processes.


Results, Discussion:
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
As Exim4 process itself is already quite privileged - it has to
access the user mailboxes with different UIDs anyway - the having
such problems is expectable and explainable. A change in documentation
might make sense, to indicate, that the special user "Debian-exim"
is only intended to mark files being used by the daemon, but not
to provide root/daemon user privilege separation.

Even without this vulnerability, a "Debian-exim" process could
use http://www.halfdog.net/Security/2015/SetgidDirectoryPrivilegeEscalation/
to escalate to "adm" group, which again makes it very likely to
use "syslog", "apache" or other components to escalate to root
via "/var/log". This is annoying, perhaps this should get a CVE
to make daemon-to-root escalations harder in general.


Timeline:
=3D=3D=3D=3D=3D=3D=3D=3D
20160605: Discovery, report Debian security
20160607: Writeup
20160611: Also verified in Ubuntu, https://bugs.launchpad.net/ubuntu/+sourc=
e/exim4/+bug/1580454/
20160630: Publication


References:
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
* http://www.halfdog.net/Security/2016/DebianEximSpoolLocalRoot/
* http://www.halfdog.net/Security/2015/SetgidDirectoryPrivilegeEscalation/
* https://bugs.launchpad.net/ubuntu/+source/exim4/+bug/1580454/
-----BEGIN PGP SIGNATURE-----

iEYEAREKAAYFAld0lPUACgkQxFmThv7tq+5MeACePVuh5CppGyhUudMfK7kjDXjj
8mcAn2AcZFVEwUKSHadffJJyCNLP0X7H
=3D4IJk
-----END PGP SIGNATURE-----


