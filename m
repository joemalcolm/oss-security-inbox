X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1866" "Saturday" "4" "February" "2017" "13:19:37" "+0100" "Agostino Sarubbo" "ago@gentoo.org" "<3275935.MH2SCY44WS@arcadia>" "66" "[oss-security] pax-utils: dumpelf: out of bounds read in dump_notes (dumpelf.c)" nil nil nil "2" "2017020412:19:37" "[oss-security] pax-utils: dumpelf: out of bounds read in dump_notes (dumpelf.c)" (number mark "U       ago@gentoo.o Feb  4   66/1866  " thread-indent "\"[oss-security] pax-utils: dumpelf: out of bounds read in dump_notes (dumpelf.c)\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 5171 invoked by uid 550); 4 Feb 2017 12:19:58 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 5144 invoked from network); 4 Feb 2017 12:19:56 -0000
From: Agostino Sarubbo <ago@gentoo.org>
To: oss-security@lists.openwall.com
Date: Sat, 04 Feb 2017 13:19:37 +0100
Message-ID: <3275935.MH2SCY44WS@arcadia>
User-Agent: KMail/4.14.10 (Linux/4.1.15-gentoo-r1; KDE/4.14.24; x86_64; ; )
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset="utf-8"
Subject: [oss-security] pax-utils: dumpelf: out of bounds read in dump_notes (dumpelf.c)

Description:
pax-utils is a set of tools that check files for security relevant properti=
es.

A fuzz on dumpelf an out of bounds read. It was reported to vapier which fi=
xed=20
the issue immediately.
Unfortunately I can=E2=80=99t get a symbolized ASan stacktrace, so I will s=
how only=20
the useful part of both asan and gdb.
This is not CVE-worthy because of the =E2=80=9CREAD of size 1=E2=80=9D in a=
 command-line tool.=20
I=E2=80=99m sharing it because some distro/packagers may want to have the p=
atch=20
aboard.

# dumpelf $FILE
unknown-crash on address 0x7fc30f701000 at pc 0x000000520111 bp 0x7ffdc3db8=
eb0=20
sp 0x7ffdc3db8ea8
READ of size 1 at 0x7fc30f701000 thread T0

(gdb)
#0  dump_notes (B=3DB@entry=3D64, memory=3Dmemory@entry=3D0x7ffff7ff428c,=20
memory_end=3D0x7ffff7ff42ac, elf=3D0x60d8e0, elf=3D0x60d8e0) at dumpelf.c:2=
45
#1  0x0000000000405636 in dump_phdr (elf=3Delf@entry=3D0x60d8e0,=20
phdr_void=3Dphdr_void@entry=3D0x7ffff7ff4158, phdr_cnt=3Dphdr_cnt@entry=3D5=
) at=20
dumpelf.c:324
#2  0x0000000000401dd9 in dumpelf (file_cnt=3D0, filename=3D) at dumpelf.c:=
91
#3  parseargs (argv=3D0x7fffffffe1a8, argc=3D2) at dumpelf.c:557
#4  main (argc=3D2, argv=3D0x7fffffffe1a8) at dumpelf.c:566

Affected version:
1.2.2

Fixed version:
N/A

Commit fix:
https://github.com/gentoo/pax-utils/commit/10a9643d90a1ba6058a66066803fac6c=
f43f6917

Credit:
This bug was discovered by Agostino Sarubbo of Gentoo.

Reproducer:
https://github.com/asarubbo/poc/blob/master/00142-pax-utils-dumpelf-oob1

Timeline:
2017-01-30: bug discovered and reported to upstream
2017-02-01: upstream released a patch
2017-02-04: blog post about the issue

Note:
This bug was found with American Fuzzy Lop.

Permalink:
https://blogs.gentoo.org/ago/2017/02/04/pax-utils-dumpelf-out-of-bounds-rea=
d-in-dump_notes-dumpelf-c

--=20
Agostino Sarubbo
Gentoo Linux Developer
