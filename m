X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["3133" "Wednesday" "1" "February" "2017" "10:18:51" "+0100" "Agostino Sarubbo" "ago@gentoo.org" "<3334481.1M2hnby0EQ@blackgate>" "87" "[oss-security] pax-utils: scanelf: out of bounds read in scanelf_file_get_symtabs (scanelf.c)" nil nil nil "2" "2017020109:18:51" "[oss-security] pax-utils: scanelf: out of bounds read in scanelf_file_get_symtabs (scanelf.c)" (number mark "U       ago@gentoo.o Feb  1   87/3133  " thread-indent "\"[oss-security] pax-utils: scanelf: out of bounds read in scanelf_file_get_symtabs (scanelf.c)\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 28103 invoked by uid 550); 1 Feb 2017 09:19:10 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 27918 invoked from network); 1 Feb 2017 09:19:07 -0000
From: Agostino Sarubbo <ago@gentoo.org>
To: oss-security@lists.openwall.com
Date: Wed, 01 Feb 2017 10:18:51 +0100
Message-ID: <3334481.1M2hnby0EQ@blackgate>
User-Agent: KMail/4.14.10 (Linux/4.4.39-gentoo; KDE/4.14.24; x86_64; ; )
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset="utf-8"
Subject: [oss-security] pax-utils: scanelf: out of bounds read in scanelf_file_get_symtabs (scanelf.c)

Description:
pax-utils is a set of tools that check files for security relevant properti=
es.

A fuzz on scanelf exposed an out-of bound read. It was reported to vapier=20
which fixed the issue immediately.
Unfortunately I can=E2=80=99t get a symbolized ASan stacktrace, so I will s=
how only=20
the useful part of both asan and gdb.

# scanelf -s '*' -axetrnibSDIYZB $FILE
=3D=3D32758=3D=3DERROR: AddressSanitizer: unknown-crash on address 0x7f8f9f=
a252dc at=20
pc 0x00000053c6a0 bp 0x7ffe93a19910 sp 0x7ffe93a19908=20
READ of size 4 at 0x7f8f9fa252dc thread T0=20=20=20=20=20=20=20=20=20=20=20=
=20=20=20=20=20=20=20=20=20=20=20=20=20=20=20=20=20=20=20=20=20=20=20=20=20=
=20=20=20=20=20=20=20=20=20=20=20=20=20=20=20=20=20=20=20=20=20=20=20=20=20=
=20=20=20=20=20=20=20=20=20=20=20=20=20=20=20=20=20=20=20=20=20=20=20=20=20=
=20=20=20=20=20=20=20=20=20=20=20=20=20=20=20=20=20=20=20=20=20=20=20=20=20=
=20=20=20=20=20=20=20=20=20=20=20=20=20=20=20=20=20=20=20=20=20=20=20=20=20=
=20=20=20=20=20=20=20=20=20=20=20=20=20=20=20=20=20=20=20=20=20=20=20=20=20=
=20=20=20=20=20=20=20=20=20=20=20=20=20=20=20=20=20=20=20=20=20=20=20=20=20=
=20=20=20=20=20=20=20=20=20=20=20=20=20=20=20=20=20=20=20=20=20=20=20=20=20=
=20=20=20=20=20=20=20=20=20=20=20=20=20=20=20=20=20=20=20
   #0 0x53c69f  (/usr/bin/scanelf+0x53c69f)=20
   #1 0x51d649  (/usr/bin/scanelf+0x51d649)=20
   #2 0x51b97e  (/usr/bin/scanelf+0x51b97e)=20
   #3 0x51ad43  (/usr/bin/scanelf+0x51ad43)=20
   #4 0x51922e  (/usr/bin/scanelf+0x51922e)=20
   #5 0x7f8f9e7fd61f  (/lib64/libc.so.6+0x2061f)=20
   #6 0x41a008  (/usr/bin/scanelf+0x41a008)=20

(gdb) bt
#8  0x000000000053c6a0 in scanelf_file_get_symtabs (elf=3D, sym=3D0x7ffffff=
fcc00,=20
str=3D0x7fffffffcc20) at scanelf.c:357
#9  0x000000000051d64a in scanelf_file_sym (elf=3D0x60700000de60, found_sym=
=3D) at=20
scanelf.c:1327
#10 scanelf_elfobj (elf=3D) at scanelf.c:1547
#11 0x000000000051b97f in scanelf_elf (filename=3D0x7fffffffe50e "1.crashes=
",=20
fd=3D, len=3D) at scanelf.c:1612
#12 scanelf_fileat (dir_fd=3D, filename=3D, st_cache=3D) at scanelf.c:1679
#13 0x000000000051ad44 in scanelf_dirat (dir_fd=3D, path=3D) at scanelf.c:1=
713
#14 0x000000000051922f in scanelf_dir (path=3D) at scanelf.c:1763
#15 parseargs (argc=3D5, argv=3D0x7fffffffe258) at scanelf.c:2273
#16 main (argc=3D5, argv=3D) at scanelf.c:2361

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
https://github.com/asarubbo/poc/blob/master/00131-pax-utils-scanelf-oobread=
-scanelf_file_get_symtabs

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
d-in-scanelf_file_get_symtabs-scanelf-c

--=20
Agostino Sarubbo
Gentoo Linux Developer
