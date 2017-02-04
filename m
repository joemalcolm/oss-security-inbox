X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["2396" "Saturday" "4" "February" "2017" "13:20:51" "+0100" "Agostino Sarubbo" "ago@gentoo.org" "<15646667.pyuNQbuQqX@arcadia>" "85" "[oss-security] pax-utils: dumpelf: two invalid memory read in dumpelf.c" nil nil nil "2" "2017020412:20:51" "[oss-security] pax-utils: dumpelf: two invalid memory read in dumpelf.c" (number mark "U       ago@gentoo.o Feb  4   85/2396  " thread-indent "\"[oss-security] pax-utils: dumpelf: two invalid memory read in dumpelf.c\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 13863 invoked by uid 550); 4 Feb 2017 12:21:09 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 13712 invoked from network); 4 Feb 2017 12:21:07 -0000
From: Agostino Sarubbo <ago@gentoo.org>
To: oss-security@lists.openwall.com
Date: Sat, 04 Feb 2017 13:20:51 +0100
Message-ID: <15646667.pyuNQbuQqX@arcadia>
User-Agent: KMail/4.14.10 (Linux/4.1.15-gentoo-r1; KDE/4.14.24; x86_64; ; )
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset="utf-8"
Subject: [oss-security] pax-utils: dumpelf: two invalid memory read in dumpelf.c

Description:
pax-utils is a set of tools that check files for security relevant properti=
es.

A fuzz on scanelf exposed two invalid memory read. They was reported to vap=
ier=20
which fixed the issue immediately.
Unfortunately I can=E2=80=99t get a symbolized ASan stacktrace, so I will s=
how only=20
the useful part of both asan and gdb.

# dumpelf $FILE
  SEGV on unknown address 0x7f8d94dc9e28 (pc 0x00000051efc6 bp 0x7ffe15ddbf=
a0=20
sp 0x7ffe15ddbf60 T0)
=3D=3D31647=3D=3DThe signal is caused by a READ memory access.

(gdb)
#0  0x00000000004067f7 in dump_dyn (dyn_void=3Ddyn_void@entry=3D0x7ff5f7ff6=
e28,=20
dyn_cnt=3Ddyn_cnt@entry=3D0, elf=3D0x60d8e0, elf=3D0x60d8e0) at dumpelf.c:4=
86
#1  0x0000000000401e24 in dumpelf (file_cnt=3D0, filename=3D) at dumpelf.c:=
146
#2  parseargs (argv=3D0x7fffffffe1a8, argc=3D2) at dumpelf.c:557
#3  main (argc=3D2, argv=3D0x7fffffffe1a8) at dumpelf.c:566

Reproducer:
https://github.com/asarubbo/poc/blob/master/00140-pax-utils-dumpelf-invalid=
read-dump_dyn

# dumpelf $FILE
SEGV on unknown address 0x6360e1292000 (pc 0x00000051fba9 bp 0x7ffeef817f20=
 sp=20
0x7ffeef817ec0 T0)
=3D=3D8213=3D=3DThe signal is caused by a READ memory access.

(gdb)
#0  dump_notes (B=3DB@entry=3D64, memory=3Dmemory@entry=3D0x63fff7ff5000,=20
memory_end=3D0x6414f7ff5000, elf=3D0x60d8e0, elf=3D0x60d8e0) at dumpelf.c:2=
28
#1  0x0000000000405636 in dump_phdr (elf=3Delf@entry=3D0x60d8e0,=20
phdr_void=3Dphdr_void@entry=3D0x7ffff7ff50f0, phdr_cnt=3Dphdr_cnt@entry=3D1=
) at=20
dumpelf.c:324
#2  0x0000000000401dd9 in dumpelf (file_cnt=3D0, filename=3D) at dumpelf.c:=
91
#3  parseargs (argv=3D0x7fffffffe1a8, argc=3D2) at dumpelf.c:557
#4  main (argc=3D2, argv=3D0x7fffffffe1a8) at dumpelf.c:566

Reproducer:
https://github.com/asarubbo/poc/blob/master/00141-pax-utils-dumpelf-invalid=
read-dump_notes

Affected version:
1.2.2

Fixed version:
N/A

Commit fix:
https://github.com/gentoo/pax-utils/commit/18ded0e30ee5a84260cceb80d818b9c2=
1ade4c76

Credit:
This bug was discovered by Agostino Sarubbo of Gentoo.

CVE:
N/A

Timeline:
2017-01-30: bug discovered and reported to upstream
2017-02-01: upstream released a patch
2017-02-04: blog post about the issue

Note:
This bug was found with American Fuzzy Lop.

Permalink:
https://blogs.gentoo.org/ago/2017/02/04/pax-utils-dumpelf-two-invalid-memor=
y-read-in-dumpelf-c

--=20
Agostino Sarubbo
Gentoo Linux Developer
