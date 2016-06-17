X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["5451" "Friday" "17" "June" "2016" "14:51:46" "+0200" "Hanno =?UTF-8?B?QsO2Y2s=?=" "hanno@hboeck.de" "<20160617145146.710ad5de@pc1>" "155" "[oss-security] Many invalid memory access issues in libarchive" "^Cc:" nil nil "6" "2016061712:51:46" "[oss-security] Many invalid memory access issues in libarchive" (number mark "        hanno@hboeck Jun 17  155/5451  " thread-indent "\"[oss-security] Many invalid memory access issues in libarchive\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 26459 invoked by uid 550); 17 Jun 2016 12:52:13 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 26341 invoked from network); 17 Jun 2016 12:52:00 -0000
Message-ID: <20160617145146.710ad5de@pc1>
X-Mailer: Claws Mail 3.13.2 (GTK+ 2.24.30; x86_64-pc-linux-gnu)
Mime-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512; protocol="application/pgp-signature"; boundary="=_zucker.schokokeks.org-30994-1466167910-0001-2"
Cc: cve-assign@mitre.org
Date: Fri, 17 Jun 2016 14:51:46 +0200
From: Hanno =?UTF-8?B?QsO2Y2s=?= <hanno@hboeck.de>
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] Many invalid memory access issues in libarchive
To: oss-security@lists.openwall.com

--=_zucker.schokokeks.org-30994-1466167910-0001-2
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

https://blog.fuzzing-project.org/47-Many-invalid-memory-access-issues-in-li=
barchive.html

libarchive version 3.2.0 (released on April 30th) fixed a large number
of memory access bugs that I reported to them a while ago.

https://github.com/libarchive/libarchive/issues/503
Unclear invalid memory read in CPIO parser
http://libarchive.github.io/google-code/issue-395/comment-0/crash.cpio
Sample file

https://github.com/libarchive/libarchive/issues/504
Null pointer access in RAR parser
http://libarchive.github.io/google-code/issue-396/comment-0/crash.rar
Sample file

https://github.com/libarchive/libarchive/issues/505
Null pointer access in CAB parser
http://libarchive.github.io/google-code/issue-397/comment-0/segf.cab
Sample file

https://github.com/libarchive/libarchive/issues/506
Overlapping memcpy in CAB parser
http://libarchive.github.io/google-code/issue-398/comment-0/memcpy.cab
Sample file

https://github.com/libarchive/libarchive/issues/510
Heap out of bounds read in LHA/LZH parser
http://libarchive.github.io/google-code/issue-402/comment-0/bsdtar-invalid-=
read.lzh
Sample file

https://github.com/libarchive/libarchive/issues/511
Stack out of bounds read in ar parser
http://libarchive.github.io/google-code/issue-403/comment-0/bsdtar-invalid-=
read-stack.a
Sample file

https://github.com/libarchive/libarchive/issues/512
Global out of bounds read in mtree parser
http://libarchive.github.io/google-code/issue-404/comment-0/invalid-read-ov=
erflow.mtree
Sample file

https://github.com/libarchive/libarchive/issues/513
Null pointe access in 7z parser
http://libarchive.github.io/google-code/issue-405/comment-0/bsdtar-null-ptr=
.7z
Sample file

https://github.com/libarchive/libarchive/issues/514
Unclear crashes in ZIP parser
http://libarchive.github.io/google-code/issue-406/comment-0/bsdtar-zip-cras=
h-variant1.zip
Sample file

https://github.com/libarchive/libarchive/issues/515
Heap out of bounds read in TAR parser
http://libarchive.github.io/google-code/issue-407/comment-0/tar-heap-overfl=
ow.tar
Sample file

https://github.com/libarchive/libarchive/issues/516
Unclear invalid memory read in mtree parser
http://libarchive.github.io/google-code/issue-408/comment-0/read_mtree.mtree
Sample file

https://github.com/libarchive/libarchive/issues/518
Null pointer access in RAR parser
http://libarchive.github.io/google-code/issue-410/comment-0/segfault.rar
Sample file

https://github.com/libarchive/libarchive/issues/523
Heap out of bounds heap read read when reading password for malformed
ZIP
http://libarchive.github.io/google-code/issue-415/comment-0/pwcrash.zip
Sample file

https://github.com/libarchive/libarchive/issues/550
Heap out of bounds read in mtree parser
https://crashes.fuzzing-project.org/libarchive-oob-process_add_entry.mtree
Sample file

I also reported a couple of lower severity issues (leaks, hangs,
undefined behavior issues):

https://github.com/libarchive/libarchive/issues/517
Memory leak in TAR parser

https://github.com/libarchive/libarchive/issues/522
Endless loop in ISO parser
http://libarchive.github.io/google-code/issue-414/comment-0/hang.iso
Sample file

https://github.com/libarchive/libarchive/issues/539
Undefined behavior / signed integer overflow in mtree parser

https://github.com/libarchive/libarchive/issues/540
Use after free in test suite

https://github.com/libarchive/libarchive/issues/547
Undefined behavior / invalid shiftleft in TAR parser
https://crashes.fuzzing-project.org/libarchive-undefined-shiftleft
Sample file

https://github.com/libarchive/libarchive/issues/548
Undefined behavior / signed integer overflow in TAR parser
https://crashes.fuzzing-project.org/libarchive-undefined-signed-overflow.tar
Sample file

Unfortunately one out of bounds heap read bug in the RAR parser (sample
file) remained unfixed. I hope a fix will find its way into the next
version. I was interested in making libarchive more robust because once
all issues are fixed it can serve as a safer alternative to many low
quality command line tools for various archiving formats.
https://github.com/libarchive/libarchive/issues/521
http://libarchive.github.io/google-code/issue-413/comment-0/bsdtar-invalid-=
read.rar


--=20
Hanno B=C3=B6ck
https://hboeck.de/

mail/jabber: hanno@hboeck.de
GPG: BBB51E42

--=_zucker.schokokeks.org-30994-1466167910-0001-2
Content-Type: application/pgp-signature
Content-Transfer-Encoding: 7bit
Content-Description: OpenPGP digital signature

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v2

iQIcBAEBCgAGBQJXY/JiAAoJEKWIAHK7tR5CbO8QAJvYZGClzPaZ5GmgdCc323qt
dPFfzwv/+eFYZEIGFS/S4lx4RDJdFlVqrdrQP0QMLg/4JeeyfyHnCweY0zzyk2rz
bPY0SbFOy+9dSDCN/GAD1ov7bOBYQkfMjJJALQ1BY41+NwInmN0Pz4x6femSQJ08
V5zY0Dnql0FeHefF1qPxyTIXFfwlCfC2AAN8Tb0Y3fnFVdPTYhNSt7Vl3pNkCLmi
6eLJoIFYKeV2ndOWigcEyyyGsH7czP8KIWRF3+Y5eFlHaR7X2t93AmKavIGSHdCR
0WcQGV3bA0e1iJRBzrjjy1N0iOUPm/VyS0GciwbliVidzuF9KJ9rmEvXvzTNaxqX
/KzP6TQ3ofEdK3TCvPuyRT5OmKDyYB1g/1p6JcKU3GI2MSoSm//Xxgmw4Fxj5RJ7
5FmUVzgI7dsI5hP9UnrlgCNTZlWA8PmwXB2vXrni/OcaiQ9FaCg1TttJYgPdJy/D
yKaP3Ox8DUq830ZBgfmW3KjkgZQ6xIM8eOI6ptra3R0YhOAIHP6IKeqCVaSCossJ
1mNgvIYK2yJHnPIS+UyevmyHcOA93a6OmXEaHu5JPmo1GEFKHH4Ozbzd2LmKPplR
Cv22kPHMq+Dm3utHm6/xpZbcG+I9dHrkXW71+/OGVlaRx59SzpOJR1c0CBffFWk9
RiV5+yqIDLaq2nXh6mbt
=2h96
-----END PGP SIGNATURE-----

--=_zucker.schokokeks.org-30994-1466167910-0001-2--
