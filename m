X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1485" "Wednesday" "28" "June" "2017" "14:03:16" "+0200" "Agostino Sarubbo" "ago@gentoo.org" "<17034856.l0NmUXmGEd@wanheda>" "44" "[oss-security] lame: multiple vulnerabilities" nil nil nil "6" "2017062812:03:16" "[oss-security] lame: multiple vulnerabilities" (number mark "U       ago@gentoo.o Jun 28   44/1485  " thread-indent "\"[oss-security] lame: multiple vulnerabilities\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 15483 invoked by uid 550); 28 Jun 2017 12:04:13 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 14126 invoked from network); 28 Jun 2017 12:03:32 -0000
From: Agostino Sarubbo <ago@gentoo.org>
To: oss-security@lists.openwall.com
Date: Wed, 28 Jun 2017 14:03:16 +0200
Message-ID: <17034856.l0NmUXmGEd@wanheda>
User-Agent: KMail/4.14.10 (Linux/4.9.16-gentoo; KDE/4.14.32; x86_64; ; )
MIME-Version: 1.0
Content-Type: multipart/alternative; boundary="nextPart11805131.kgmvflQei8"
Content-Transfer-Encoding: 7Bit
Subject: [oss-security] lame: multiple vulnerabilities

--nextPart11805131.kgmvflQei8
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset="utf-8"

Hello all.

I discovered some crashes (which will follow one-by-one) in lame.

Lame was fuzzed in the past by someone else so I take the opportunity=20
during the CVE request to insert also some past bugs.

1) Invalid read - CVE-2015-9099
https://bugs.debian.org/cgi-bin/bugreport.cgi?bug=3D775959

2) Null pointer dereference - CVE-2015-9100
https://bugs.debian.org/cgi-bin/bugreport.cgi?bug=3D777160

3) Invalid read - CVE-2015-9100
https://bugs.debian.org/cgi-bin/bugreport.cgi?bug=3D777161

However, mitre decided that the bug N=C2=B03, CVE-2015-9100, can share the=
=20
same CVE ID of https://blogs.gentoo.org/ago/2017/06/17/lame-heap-based-buff=
er-overflow-in-fill_buffer_resample-util-c/

At this point, I'd like to mention that mitre won't assign anymore CVE IDs=
=20
for issues related to the Undefined Behavior Sanitizer, unless there are=20
informations about the exploitability.
http://common-vulnerabilities-and-exposures-cve-board.1128451.n5.nabble.com=
/Current-standards-criteria-for-Undefined-Behavior-td730.html#a768

The CVE IDs assigned in the past for the undefined behavior issues remain=20
valid. I will share anyway my findings about the undefined behavior issues.=
=20
They include, for completeness, some bugs that regard the frontend. You=20
can ignore them.

--=20
Agostino Sarubbo
Gentoo Linux Developer

--nextPart11805131.kgmvflQei8--

