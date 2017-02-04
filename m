X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1526" "Saturday" "4" "February" "2017" "13:20:17" "+0100" "Agostino Sarubbo" "ago@gentoo.org" "<5995128.rBqAYY1dqO@arcadia>" "66" "[oss-security] pax-utils: dumpelf: multiple divide-by-zero in dumpelf.c" nil nil nil "2" "2017020412:20:17" "[oss-security] pax-utils: dumpelf: multiple divide-by-zero in dumpelf.c" (number mark "U       ago@gentoo.o Feb  4   66/1526  " thread-indent "\"[oss-security] pax-utils: dumpelf: multiple divide-by-zero in dumpelf.c\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 9903 invoked by uid 550); 4 Feb 2017 12:20:36 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 9680 invoked from network); 4 Feb 2017 12:20:33 -0000
From: Agostino Sarubbo <ago@gentoo.org>
To: oss-security@lists.openwall.com
Date: Sat, 04 Feb 2017 13:20:17 +0100
Message-ID: <5995128.rBqAYY1dqO@arcadia>
User-Agent: KMail/4.14.10 (Linux/4.1.15-gentoo-r1; KDE/4.14.24; x86_64; ; )
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset="utf-8"
Subject: [oss-security] pax-utils: dumpelf: multiple divide-by-zero in dumpelf.c

Description:
pax-utils is a set of tools that check files for security relevant properti=
es.

A fuzz on dumpelf shows multiple divide-by-zero . They was reported to vapi=
er=20
which fixed the issues immediately.
Unfortunately I can=E2=80=99t get the ASan stacktrace, so I will show only =
the=20
useful(not at all) part of the crash.

# dumpelf $FILE
 FPE on unknown address 0x00000051ca65 (pc 0x00000051ca65 bp 0x7ffc31bb6f80=
 sp=20
0x7ffc31bb6e40 T0)

Reproducer:
https://github.com/asarubbo/poc/blob/master/00137-pax-utils-dumpelf-fpe1

# dumpelf $FILE
  FPE on unknown address 0x00000051d335 (pc 0x00000051d335 bp 0x7ffc17babf8=
0=20
sp 0x7ffc17babe40 T0)

Reproducer:
https://github.com/asarubbo/poc/blob/master/00138-pax-utils-dumpelf-fpe2

# dumpelf $FILE
  FPE on unknown address 0x00000051db76 (pc 0x00000051db76 bp 0x7ffdf90fff8=
0=20
sp 0x7ffdf90ffe40 T0)

Reproducer:
https://github.com/asarubbo/poc/blob/master/00139-pax-utils-dumpelf-fpe3

Affected version:
1.2.2

Fixed version:
N/A

Commit fix:
https://github.com/gentoo/pax-utils/commit/4609f57a690b4a5670baeb93167dab53=
00d07d4e

Credit:
These bugs were discovered by Agostino Sarubbo of Gentoo.

CVE:
N/A

Timeline:
2017-01-30: bug discovered and reported to upstream
2017-02-01: upstream released a patch
2017-02-04: blog post about the issue

Note:
These bugs were found with American Fuzzy Lop.

Permalink:
https://blogs.gentoo.org/ago/2017/02/04/pax-utils-dumpelf-multiple-divide-b=
y-zero-in-dumpelf-c

--=20
Agostino Sarubbo
Gentoo Linux Developer
