X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["2825" "Wednesday" "3" "June" "2015" "01:00:28" "+0200" "Hanno =?UTF-8?B?QsO2Y2s=?=" "hanno@hboeck.de" "<20150603010028.2c166570@pc1>" "78" "[oss-security] Stack out of bounds read access in uudecode / sharutils" nil nil nil "6" "2015060223:00:28" "[oss-security] Stack out of bounds read access in uudecode / sharutils" (number mark "        hanno@hboeck Jun  3   78/2825  " thread-indent "\"[oss-security] Stack out of bounds read access in uudecode / sharutils\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 5870 invoked by uid 550); 2 Jun 2015 23:00:00 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 5824 invoked from network); 2 Jun 2015 22:59:54 -0000
Message-ID: <20150603010028.2c166570@pc1>
X-Mailer: Claws Mail 3.11.1 (GTK+ 2.24.28; x86_64-pc-linux-gnu)
Mime-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512; protocol="application/pgp-signature"; boundary="=_zucker.schokokeks.org-29183-1433285982-0001-2"
Cc: cve-assign@mitre.org
Date: Wed, 3 Jun 2015 01:00:28 +0200
From: Hanno =?UTF-8?B?QsO2Y2s=?= <hanno@hboeck.de>
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] Stack out of bounds read access in uudecode / sharutils
To: oss security list <oss-security@lists.openwall.com>

--=_zucker.schokokeks.org-29183-1433285982-0001-2
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

https://blog.fuzzing-project.org/13-Stack-out-of-bounds-read-access-in-uude=
code-sharutils.html

uudecode is a tool to decode uuencoded data. It is shipped with the
package sharutils.

An invalid input file can cause an out of bounds stack read access in
the function expand_tilde(). This issue has been reported to the
developers on 2015-03-04. It has been fixed in sharutils 4.15.2
(2015-05-30).

To see this bug one needs to use a tool like valgrind or address
sanitizer that detects out of bounds memory reads. The bug was found
with american fuzzy lop.

Sample file
https://crashes.fuzzing-project.org/uudecode-oob-read-stack-expand_tilde.uu

Address sanitizer output:

=3D=3D8209=3D=3DERROR: AddressSanitizer: stack-buffer-overflow on address 0=
x7fff8a4a8690 at pc 0x40738d bp 0x7fff8a4a44a0 sp 0x7fff8a4a4490
READ of size 1 at 0x7fff8a4a8690 thread T0
#0 0x40738c in expand_tilde /mnt/ram/sharutils-4.14/src/uudecode.c:252
#1 0x40738c in decode /mnt/ram/sharutils-4.14/src/uudecode.c:437
#2 0x403660 in main /mnt/ram/sharutils-4.14/src/uudecode.c:530
#3 0x7f13d97fff9f in __libc_start_main (/lib64/libc.so.6+0x1ff9f)
#4 0x403c81 (/mnt/ram/sharutils-4.14/src/uudecode+0x403c81)

Address 0x7fff8a4a8690 is located in stack of thread T0 at offset 16800 in =
frame
#0 0x403da7 in decode /mnt/ram/sharutils-4.14/src/uudecode.c:362

This frame has 7 object(s):
[32, 36) 'mode'
[96, 104) 'outlen'
[160, 168) 'ctx'
[224, 368) 'attr'
[416, 16800) 'buf' <=3D=3D Memory access at offset 16800 overflows this var=
iable
[16832, 33216) 'buf_in'
[33248, 49632) 'buf'

--=20
Hanno B=C3=B6ck
http://hboeck.de/

mail/jabber: hanno@hboeck.de
GPG: BBB51E42

--=_zucker.schokokeks.org-29183-1433285982-0001-2
Content-Type: application/pgp-signature
Content-Transfer-Encoding: 7bit
Content-Description: OpenPGP digital signature

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v2

iQIcBAEBCgAGBQJVbjWMAAoJEKWIAHK7tR5C0pwP/i3uIAM/03H501E5ppislTa8
e6WxuRnJar0yORGWCmDV5He0SLx1pkMoiHNB7GBEa8OYSmfp8ZEUHflxQGXzNtYz
GzCGJWlo1oUzFOmRPvn86/W4wcC+K80jN1tBjCOSitK3S33jUmClcui8trjk/wjr
L1tcYF/Om8h+J2ZhWNX65jyqcjQ1L4oNxe4IvouQvWV/Z8ScNvYR5F3EoeLhKsap
h8WDB7SvChqKxeuVZwKGe2asKcETYqoxiLvCtLj+0Y53t8gtYTgRz2DhVRpAvJ7v
auozrUSlBU56zN24Nr/1ZAeelboJyDMw/RI57YMtsw+msC0h1oW/QCulwJvVSTyT
bpnhoBXvm2Z1ki8RQmC31JuSLRpL3ZtQ/m+XXOS3RASlMLPbj5dc8+Wb9WyaL1NZ
cAnE0FG3bFMjdOp4NyPvecEpusq8K7r4s45G2b2ry9OfkwMfAKoenI9nlctBOQwk
V1aGrOwIiEmcAzh9um+Yqo1VyxNaJYUJ30fiYB5aWQwWo2rS1btmLCn1PJfydl9+
Z0XrsQoS4EdY8KH19Keo0ok0GiqqGt4NqlLOZBF5960dfO1vKYuVsCKSRir6ZoTZ
94aBRh8rz7Cn/EzD0tXTdj5jOStxP4RFDmNFH9u4AIZe6mBJjOV5zvtoOwtVSfPA
P+hILw/SYKCvxQs8dkZn
=xQrE
-----END PGP SIGNATURE-----

--=_zucker.schokokeks.org-29183-1433285982-0001-2--
