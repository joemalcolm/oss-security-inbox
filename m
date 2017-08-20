X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["4673" "Sunday" "20" "August" "2017" "21:34:32" "+0200" "Hanno =?UTF-8?B?QsO2Y2s=?=" "hanno@hboeck.de" "<20170820213432.0ec33271@pc1>" "118" "[oss-security] unrar-free/unrar-gpl: directory traversal and other issues" "^Date:" nil nil "8" "2017082019:34:32" "[oss-security] unrar-free/unrar-gpl: directory traversal and other issues" (number mark "        hanno@hboeck Aug 20  118/4673  " thread-indent "\"[oss-security] unrar-free/unrar-gpl: directory traversal and other issues\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 29871 invoked by uid 550); 20 Aug 2017 19:34:45 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 29833 invoked from network); 20 Aug 2017 19:34:43 -0000
Message-ID: <20170820213432.0ec33271@pc1>
X-Mailer: Claws Mail 3.15.0-dirty (GTK+ 2.24.31; x86_64-pc-linux-gnu)
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary="MP_/=qMKO5jLgxEmFkgp_FvSSm2"
Date: Sun, 20 Aug 2017 21:34:32 +0200
From: Hanno =?UTF-8?B?QsO2Y2s=?= <hanno@hboeck.de>
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] unrar-free/unrar-gpl: directory traversal and other issues
To:
  "oss-security@lists.openwall.com" <oss-security@lists.openwall.com>

--MP_/=qMKO5jLgxEmFkgp_FvSSm2
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable
Content-Disposition: inline

Hi,

There exists a package that is named in some distros unrar-free and in
others unrar-gpl. It's - as the name says - a gpl licensed unpacker for
old versions of the rar format. (The "original" unrar is not FOSS, as
it contains a restricted license.)

It was hosted on gna [1], which got shut down recently.
It hasn't been developed for a while.

unrar-free suffers from a trivial directory traversal vulnerability
(poc attacked). I also found a stack overread and null pointer crash
within a few minutes of running afl. In all likelyhood there are more
issues.
evince uses unrar-free if available and named like that for cbr files.
Thus it adds more vulns like the recent issues with evince and comic
book formats.

Given that it's no longer developed, has no active upstream and isn't
very useful I'd recommend simply removing that package. It only supports
very old rar files up to version 2, which aren't very common. When
looking for a FOSS licensed rar unpacker: libarchive supports modern RAR
files and is well maintained.

I'm maintaining the Gentoo package and I'm going to propose to remove
it from Gentoo. (Unless someone steps in and takes up upstream
maintainership of this package, which is probably unlikely.)

Issue 1: Directory Traversal

Creating a rar v2 archive with path names of the form ../[filename]
will unpack them into the upper directory.


Issue 2: Stack overread

A malformed archive can cause a stack overread, detectable with asan.
This issue doesn't happen reliably, I haven't investigated further.

=3D=3D2585=3D=3DERROR: AddressSanitizer: stack-buffer-overflow on address 0=
x7fff76184120 at pc 0x000000445d25 bp 0x7fff76183ef0 sp 0x7fff761836a0
READ of size 519 at 0x7fff76184120 thread T0
    #0 0x445d24 in __interceptor_strchr.part.33 (/r/unrar-gpl/unrar+0x445d2=
4)
    #1 0x516d0d in stricomp /f/unrar-gpl/unrar/src/unrarlib.c:851:19
    #2 0x511613 in ExtrFile /f/unrar-gpl/unrar/src/unrarlib.c:745:20
    #3 0x510b02 in urarlib_get /f/unrar-gpl/unrar/src/unrarlib.c:303:13
    #4 0x50b249 in unrar_extract_file /f/unrar-gpl/unrar/src/unrar.c:343:8
    #5 0x50be32 in unrar_extract /f/unrar-gpl/unrar/src/unrar.c:483:9
    #6 0x50c69c in main /f/unrar-gpl/unrar/src/unrar.c:556:14
    #7 0x7f632d3834f0 in __libc_start_main (/lib64/libc.so.6+0x204f0)
    #8 0x419e19 in _start (/r/unrar-gpl/unrar+0x419e19)

Address 0x7fff76184120 is located in stack of thread T0 at offset 544 in fr=
ame
    #0 0x516c1f in stricomp /f/unrar-gpl/unrar/src/unrarlib.c:844

  This frame has 2 object(s):
    [32, 544) 'S1'
    [608, 1120) 'S2' <=3D=3D Memory access at offset 544 partially
    underflows this variable

Issue 3: Null pointer

A malformed input file can cause a null pointer read.

=3D=3D3328=3D=3DERROR: AddressSanitizer: SEGV on unknown address 0x00000000=
0020 (pc 0x00000051ed2c bp 0x000000278b18 sp 0x7fffc410e300 T0)
=3D=3D3328=3D=3DThe signal is caused by a READ memory access.
=3D=3D3328=3D=3DHint: address points to the zero page.
    #0 0x51ed2b in DecodeNumber /f/unrar-gpl/unrar/src/unrarlib.c:1649:16
    #1 0x5186f5 in Unpack /f/unrar-gpl/unrar/src/unrarlib.c:1148:4
    #2 0x511c47 in ExtrFile /f/unrar-gpl/unrar/src/unrarlib.c:799:10
    #3 0x510b02 in urarlib_get /f/unrar-gpl/unrar/src/unrarlib.c:303:13
    #4 0x50b249 in unrar_extract_file /f/unrar-gpl/unrar/src/unrar.c:343:8
    #5 0x50be32 in unrar_extract /f/unrar-gpl/unrar/src/unrar.c:483:9
    #6 0x50c69c in main /f/unrar-gpl/unrar/src/unrar.c:556:14
    #7 0x7f0a337df4f0 in __libc_start_main (/lib64/libc.so.6+0x204f0)
    #8 0x419e19 in _start (/r/unrar-gpl/unrar+0x419e19)


[1] https://web.archive.org/web/20170326081002/http://home.gna.org/unrar
--=20
Hanno B=C3=B6ck
https://hboeck.de/

mail/jabber: hanno@hboeck.de
GPG: FE73757FA60E4E21B937579FA5880072BBB51E42

--MP_/=qMKO5jLgxEmFkgp_FvSSm2
Content-Type: application/vnd.rar
Content-Transfer-Encoding: base64
Content-Disposition: attachment; filename=unrar-gpl-directory-traversal.rar

UmFyIRoHAM+QcwAADQAAAAAAAABvvXQAgCUABQAAAAUAAAAAm7HC/4+CR0YU
MAUAIAAAAC4uL3h4YWFiDQo=

--MP_/=qMKO5jLgxEmFkgp_FvSSm2
Content-Type: application/vnd.rar
Content-Transfer-Encoding: base64
Content-Disposition: attachment; filename=unrar-gpl-nullptr.rar

UmFyIRoHAM+QcwAADQAAAAAAAABvvXQAgCUABQAAAAUAAAAAm7HC/4+CR0YU
AAAAAAAAb70=

--MP_/=qMKO5jLgxEmFkgp_FvSSm2
Content-Type: application/vnd.rar
Content-Transfer-Encoding: base64
Content-Disposition: attachment; filename=unrar-gpl-stack-overread.rar

UmFyIRoHADAwMDAwDQAwMDAwMDAwMHQwMDA=

--MP_/=qMKO5jLgxEmFkgp_FvSSm2--
