X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["821" "Tuesday" "11" "October" "2016" "14:11:59" "+0200" "Ludovic =?utf-8?B?Q291cnTDqHM=?=" "ludo@gnu.org" "<878ttvw0ds.fsf@gnu.org>" "21" "[oss-security] CVE request: GNU Guile <= 2.0.12: Thread-unsafe umask modification" nil nil nil "10" "2016101112:11:59" "[oss-security] CVE request: GNU Guile <= 2.0.12: Thread-unsafe umask modification" (number mark "U       ludo@gnu.org Oct 11   21/821   " thread-indent "\"[oss-security] CVE request: GNU Guile <= 2.0.12: Thread-unsafe umask modification\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 19598 invoked by uid 550); 11 Oct 2016 13:03:42 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 30175 invoked from network); 11 Oct 2016 12:12:40 -0000
From: ludo@gnu.org (Ludovic =?utf-8?Q?Court=C3=A8s?=)
To: oss-security@lists.openwall.com
CC: Andy Wingo <wingo@pobox.com>, Mark H Weaver <mhw@netris.org>
X-URL: http://www.fdn.fr/~lcourtes/
X-Revolutionary-Date: 20 =?utf-8?Q?Vend=C3=A9miaire?= an 225 de la
 =?utf-8?Q?R=C3=A9volution?=
X-PGP-Key-ID: 0x090B11993D9AEBB5
X-PGP-Key: http://www.fdn.fr/~lcourtes/ludovic.asc
X-PGP-Fingerprint: 3CE4 6455 8A84 FDC6 9DB4  0CFB 090B 1199 3D9A EBB5
X-OS: x86_64-unknown-linux-gnu
Date: Tue, 11 Oct 2016 14:11:59 +0200
Message-ID: <878ttvw0ds.fsf@gnu.org>
User-Agent: Gnus/5.13 (Gnus v5.13) Emacs/25.1 (gnu/linux)
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
X-detected-operating-system: by eggs.gnu.org: GNU/Linux 2.2.x-3.x [generic]
X-Received-From: 2001:4830:134:3::e
Subject: [oss-security] CVE request: GNU Guile <= 2.0.12: Thread-unsafe umask modification

The =E2=80=98mkdir=E2=80=99 procedure of GNU=C2=A0Guile, an implementation =
of the Scheme
programming language, temporarily changed the process=E2=80=99 umask to zer=
o.
During that time window, in a multithreaded application, other threads
could end up creating files with insecure permissions.  For example,
=E2=80=98mkdir=E2=80=99 without the optional =E2=80=98mode=E2=80=99 argumen=
t would create directories
as 0777.

This can be worked around by always passing the optional =E2=80=98mode=E2=
=80=99 argument
to Guile=E2=80=99s =E2=80=98mkdir=E2=80=99 procedure.

This will be fixed in Guile=C2=A02.0.13, to be released shortly.

Upstream bug report: http://bugs.gnu.org/24659
Patch: http://git.savannah.gnu.org/cgit/guile.git/commit/?h=3Dstable-2.0&id=
=3D245608911698adb3472803856019bdd5670b6614

Ludo=E2=80=99.
