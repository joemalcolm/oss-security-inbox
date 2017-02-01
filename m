X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["2323" "Wednesday" "1" "February" "2017" "10:18:08" "+0100" "Agostino Sarubbo" "ago@gentoo.org" "<21545601.TvTXDKVynH@blackgate>" "75" "[oss-security] pax-utils: scanelf: out of bounds read in scanelf_file_textrel (scanelf.c)" nil nil nil "2" "2017020109:18:08" "[oss-security] pax-utils: scanelf: out of bounds read in scanelf_file_textrel (scanelf.c)" (number mark "U       ago@gentoo.o Feb  1   75/2323  " thread-indent "\"[oss-security] pax-utils: scanelf: out of bounds read in scanelf_file_textrel (scanelf.c)\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 20121 invoked by uid 550); 1 Feb 2017 09:18:26 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 20072 invoked from network); 1 Feb 2017 09:18:24 -0000
From: Agostino Sarubbo <ago@gentoo.org>
To: oss-security@lists.openwall.com
Date: Wed, 01 Feb 2017 10:18:08 +0100
Message-ID: <21545601.TvTXDKVynH@blackgate>
User-Agent: KMail/4.14.10 (Linux/4.4.39-gentoo; KDE/4.14.24; x86_64; ; )
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset="utf-8"
Subject: [oss-security] pax-utils: scanelf: out of bounds read in scanelf_file_textrel (scanelf.c)

Description:
pax-utils is a set of tools that check files for security relevant properti=
es.

A fuzz on scanelf exposed an out-of bound read. It was reported to vapier=20
which fixed the issue immediately.
Unfortunately I can=E2=80=99t get a symbolized ASan stacktrace, so I will s=
how only=20
the useful part of both asan and gdb.

# scanelf -s '*' -axetrnibSDIYZB $FILE
=3D=3D1853=3D=3DERROR: AddressSanitizer: unknown-crash on address 0x7f4099d=
25008 at pc=20
0x00000053586e bp 0x7fff335cb8b0 sp 0x7fff335cb8a8
READ of size 8 at 0x7f4099d25008 thread T0
    #0 0x53586d  (/usr/bin/scanelf+0x53586d)
    #1 0x51f526  (/usr/bin/scanelf+0x51f526)
    #2 0x51b97e  (/usr/bin/scanelf+0x51b97e)
    #3 0x51ad43  (/usr/bin/scanelf+0x51ad43)
    #4 0x51922e  (/usr/bin/scanelf+0x51922e)
    #5 0x7f4098afd61f  (/lib64/libc.so.6+0x2061f)
    #6 0x41a008  (/usr/bin/scanelf+0x41a008)=20

(gdb) bt
#8  0x000000000053586e in scanelf_file_textrel (elf=3D, found_textrel=3D) a=
t=20
scanelf.c:560
#9  0x000000000051f527 in scanelf_elfobj (elf=3D) at scanelf.c:1536
#10 0x000000000051b97f in scanelf_elf (filename=3D0x7fffffffe50e=20
"/tmp/afl/scanelf/report/crashes/2.crashes", fd=3D, len=3D) at scanelf.c:16=
12
#11 scanelf_fileat (dir_fd=3D, filename=3D, st_cache=3D) at scanelf.c:1679
#12 0x000000000051ad44 in scanelf_dirat (dir_fd=3D, path=3D) at scanelf.c:1=
713
#13 0x000000000051922f in scanelf_dir (path=3D) at scanelf.c:1763
#14 parseargs (argc=3D5, argv=3D0x7fffffffe258) at scanelf.c:2273
#15 main (argc=3D5, argv=3D) at scanelf.c:2361

Affected version:
1.2

Fixed version:
1.2.1

Commit fix:
https://github.com/gentoo/pax-utils/commit/95e5489534ac9e9324c5096286899b68=
8e19ae00

Credit:
This bug was discovered by Agostino Sarubbo of Gentoo.

CVE:
N/A

Reproducer:
https://github.com/asarubbo/poc/blob/master/00132-pax-utils-scanelf-oobread=
-scanelf_file_textrel

Timeline:
2017-01-23: bug discovered and reported to upstream
2017-01-24: upstream realeased a patch and 1.2.1
2017-02-01: blog post about the issue

Note:
This bug was found with American Fuzzy Lop.
I=E2=80=99d suggest to go to 1.2.2 because of a functionality bug(s) in 1.2=
.1

Permalink:
https://blogs.gentoo.org/ago/2017/02/01/pax-utils-scanelf-out-of-bounds-rea=
d-in-scanelf_file_textrel-scanelf-c

--=20
Agostino Sarubbo
Gentoo Linux Developer
