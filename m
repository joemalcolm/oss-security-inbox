X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["9213" "Wednesday" "16" "November" "2016" "15:06:10" "+0100" "Agostino Sarubbo" "ago@gentoo.org" "<3304410.S0cpkzc54u@arcadia>" "317" "[oss-security] jasper: multiple assertion failures" nil nil nil "11" "2016111614:06:10" "[oss-security] jasper: multiple assertion failures" (number mark "U       ago@gentoo.o Nov 16  317/9213  " thread-indent "\"[oss-security] jasper: multiple assertion failures\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 20411 invoked by uid 550); 16 Nov 2016 14:05:24 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 20375 invoked from network); 16 Nov 2016 14:05:21 -0000
From: Agostino Sarubbo <ago@gentoo.org>
To: oss-security@lists.openwall.com
Cc: cve-assign@mitre.org
Date: Wed, 16 Nov 2016 15:06:10 +0100
Message-ID: <3304410.S0cpkzc54u@arcadia>
User-Agent: KMail/4.14.10 (Linux/4.1.15-gentoo-r1; KDE/4.14.24; x86_64; ; )
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset="utf-8"
Subject: [oss-security] jasper: multiple assertion failures

If it is suitable for a CVE please assign one. Thanks.

Description:
jasper is an open-source initiative to provide a free software-based refere=
nce=20
implementation of the codec specified in the JPEG-2000 Part-1 standard.

A fuzzing revealed multiple assertion failures.
Since the jasper=E2=80=99s maintainer releases frequently, the fuzzing was =
done across=20
multiple versions. The =E2=80=9Caffected version=E2=80=9D tag means that it=
 was tested and=20
discovered on that version, so previously versions may be affected too.
The latest failures are unfixed. I will update the post when upstream will=
=20
work on them.

Affected version:
1.900.12
Output/failure:
imginfo: /tmp/portage/media-
libs/jasper-1.900.12/work/jasper-1.900.12/src/libjasper/base/jas_seq.c:90:=
=20
jas_matrix<=3D yend' failed.
Commit fix:
https://github.com/mdadams/jasper/commit/d91198abd00fc435a397fe6bad906a4c17=
48e9cf
Fixed version:
1.900.13
Testcase:
https://github.com/asarubbo/poc/blob/master/00003-jasper-assert-jas_matrix_t

######################################################

Affected version:
1.900.13
Output/failure:
/tmp/portage/media-
libs/jasper-1.900.13/work/jasper-1.900.13/src/libjasper/ras/ras_dec.c:330: =
int=20
ras_getcmap(jas_stream_t *, ras_hdr_t *, ras_cmap_t *): Assertion `numcolor=
s=20
<=3D 256' failed.
Commit fix:
https://github.com/mdadams/jasper/commit/411a4068f8c464e883358bf403a3e25158=
863823
Fixed version:
1.900.14
Testcase:
https://github.com/asarubbo/poc/blob/master/00005-jasper-assert-ras_getcmap

######################################################

Affected version:
1.900.13
Output/failure:
imginfo: /tmp/portage/media-
libs/jasper-1.900.13/work/jasper-1.900.13/src/libjasper/jpc/jpc_mct.c:146:=
=20
void jpc_irct(jas_matrix_t *, jas_matrix_t *, jas_matrix_t *): Assertion=20
`((c1)->numrows_) =3D=3D numrows && ((c1)->numcols_) =3D=3D numcols && ((c2=
)-
>numrows_) =3D=3D numrows && ((c2)->numcols_) =3D=3D numcols=E2=80=99 faile=
d.
Commit fix:
https://github.com/mdadams/jasper/commit/dee11ec440d7908d1daf69f40a3324b27c=
f213ba
Fixed version:
1.900.14
Testcase:
https://github.com/asarubbo/poc/blob/master/00006-jasper-assert-jpc_irct

######################################################

Affected version:
1.900.13
Output/failure:
type =3D 0xff76 (UNKNOWN); len =3D 20;10 40 40 00 00 00 00 00 00 00 00 00 0=
0 00 00=20
00 00 00 imginfo: /tmp/portage/media-
libs/jasper-1.900.13/work/jasper-1.900.13/src/libjasper/jpc/jpc_mct.c:233:=
=20
void jpc_iict(jas_matrix_t *, jas_matrix_t *, jas_matrix_t *): Assertion=20
`((c1)->numcols_) =3D=3D numcols && ((c2)->numcols_) =3D=3D numcols=E2=80=
=99 failed.
Commit fix:
https://github.com/mdadams/jasper/commit/dee11ec440d7908d1daf69f40a3324b27c=
f213ba
Fixed version:
1.900.14
Testcase:
https://github.com/asarubbo/poc/blob/master/00008-jasper-assert-jpc_iict

######################################################

Affected version:
1.900.13
Output/failure:
imginfo: /tmp/portage/media-
libs/jasper-1.900.13/work/jasper-1.900.13/src/libjasper/base/jas_seq.c:90:=
=20
jas_matrix_t *jas_seq2d_create(int, int, int, int): Assertion `xstart <=3D =
xend=20
&& ystart <=3D yend' failed.
Commit fix:
https://github.com/mdadams/jasper/commit/ba2b9d000660313af7b692542afbd374c5=
685865
Fixed version:
1.900.14
Testcase:
https://github.com/asarubbo/poc/blob/master/00007-jasper-assert-jas_matrix_t

######################################################

Affected version:
1.900.13
Output/failure:
type =3D 0xff05 (UNKNOWN); len =3D 20;01 40 40 00 f0 00 00 00 00 00 00 00 0=
0 00 00=20
00 00 00 imginfo: /tmp/portage/media-
libs/jasper-1.900.13/work/jasper-1.900.13/src/libjasper/jpc/jpc_bs.c:197: l=
ong=20
jpc_bitstream_getbits(jpc_bitstream_t *, int): Assertion `n >=3D 0 && n < 3=
2'=20
failed.
Commit fix:
https://github.com/mdadams/jasper/commit/1e84674d95353c64e5c4c0e7232ae86fd6=
ea813b
Fixed version:
1.900.14
Testcase:
https://github.com/asarubbo/poc/blob/master/00014-jasper-assert-jpc_bitstre=
am_getbits

######################################################

Affected version:
1.900.13
Output/failure:
imginfo: /tmp/portage/media-
libs/jasper-1.900.13/work/jasper-1.900.13/src/libjasper/jpc/jpc_dec.c:1637:=
=20
void calcstepsizes(uint_fast16_t, int, uint_fast16_t *): Assertion `!((expn=
 +=20
(numrlvls =E2=80=93 1) =E2=80=93 (numrlvls =E2=80=93 1 =E2=80=93 ((bandno >=
 0) ? ((bandno + 2) / 3) : (0)))) &=20
(~0x1f))=E2=80=99 failed.
Commit fix:
https://github.com/mdadams/jasper/commit/f7038068550fba0e41e1d0c355787f1dcd=
5bf330
Fixed version:
1.900.17
Testcase:
https://github.com/asarubbo/poc/blob/master/00012-jasper-assert-calcstepsiz=
es

######################################################

Affected version:
1.900.13
Output/failure:
type =3D 0xff41 (UNKNOWN); len =3D 20;02 40 40 00 00 00 00 ee ff 00 00 00 0=
0 24 00=20
00 00 00 imginfo: /tmp/portage/media-
libs/jasper-1.900.13/work/jasper-1.900.13/src/libjasper/jpc/jpc_t2cod.c:297=
:=20
int jpc_pi_nextrpcl(jpc_pi_t *): Assertion `pi->prcno pirlvl->numprcs=E2=80=
=99 failed.
Commit fix:
https://github.com/mdadams/jasper/commit/f7038068550fba0e41e1d0c355787f1dcd=
5bf330
Fixed version:
1.900.17
Testcase:
https://github.com/asarubbo/poc/blob/master/00013-jasper-assert-jpc_pi_next=
rpcl

######################################################

Affected version:
1.900.15
Output/failure:
imginfo: /tmp/portage/media-
libs/jasper-1.900.15/work/jasper-1.900.15/src/libjasper/base/jas_seq.c:90:=
=20
jas_matrix_t *jas_seq2d_create(int, int, int, int): Assertion `xstart <=3D =
xend=20
&& ystart <=3D yend' failed.
Commit fix:
https://github.com/mdadams/jasper/commit/f7038068550fba0e41e1d0c355787f1dcd=
5bf330
Fixed version:
1.900.17
Testcase:
https://github.com/asarubbo/poc/blob/master/00016-jasper-assert-jas_matrix_t

######################################################

Affected version:
1.900.22
Output/failure:
warning: trailing garbage in marker segment (9 bytes)
warning: trailing garbage in marker segment (40 bytes)
warning: ignoring unknown marker segment (0xffee)
type =3D 0xffee (UNKNOWN); len =3D 23;1f 32 ff ff ff 00 10 00 3d 4d 00 01 3=
2 ff 00=20
e4 00 10 00 00 4f warning: trailing garbage in marker segment (34 bytes)
imginfo: /tmp/portage/media-
libs/jasper-1.900.22/work/jasper-1.900.22/src/libjasper/base/jas_seq.c:90:=
=20
jas_matrix_t *jas_seq2d_create(int, int, int, int): Assertion `xstart <=3D =
xend=20
&& ystart <=3D yend' failed.
Commit fix:
https://github.com/mdadams/jasper/commit/d42b2388f7f8e0332c846675133acea151=
fc557a
Fixed version:
1.900.25
Testcase:
https://github.com/asarubbo/poc/blob/master/00043-jasper-assert-jas_matrix_t

######################################################

Affected version:
1.900.13
Output/failure:
/tmp/portage/media-
libs/jasper-1.900.13/work/jasper-1.900.13/src/libjasper/jpc/jpc_t1cod.c:144=
:=20
int JPC_NOMINALGAIN(int, int, int, int): Assertion `qmfbid =3D=3D 0x01=E2=
=80=B2 failed.
Commit fix:
N/A
Fixed version:
N/A
Testcase:
https://github.com/asarubbo/poc/blob/master/00004-jasper-assert-JPC_NOMINAL=
GAIN

######################################################

Affected version:
1.900.13
Output/failure:
type =3D 0xff76 (UNKNOWN); len =3D 20;00 40 40 00 00 00 00 00 00 00 00 00 0=
0 00 00=20
00 00 00 imginfo: /tmp/portage/media-
libs/jasper-1.900.13/work/jasper-1.900.13/src/libjasper/jpc/jpc_dec.c:1817:=
=20
void jpc_dequantize(jas_matrix_t *, jpc_fix_t): Assertion `absstepsize >=3D=
 0=E2=80=B2=20
failed.
Commit fix:
N/A
Fixed version:
N/A
Testcase:
https://github.com/asarubbo/poc/blob/master/00010-jasper-assert-jpc_dequant=
ize

######################################################

Affected version:
1.900.17
Output/failure:
imginfo: /tmp/portage/media-
libs/jasper-1.900.17/work/jasper-1.900.17/src/libjasper/jpc/jpc_math.c:94: =
int=20
jpc_floorlog2(int): Assertion `x > 0=E2=80=B2 failed.
Commit fix:
N/A
Fixed version:
N/A
Testcase:
https://github.com/asarubbo/poc/blob/master/00023-jasper-assert-jpc_floorlo=
g2

######################################################

Affected version:
1.900.22
Output/failure:
warning: trailing garbage in marker segment (9 bytes)
warning: trailing garbage in marker segment (28 bytes)
warning: trailing garbage in marker segment (40 bytes)
warning: ignoring unknown marker segment (0xffee)
type =3D 0xffee (UNKNOWN); len =3D 23;1f 32 ff ff ff 00 10 00 3d 4d 00 01 3=
2 40 e4=20
e4 00 10 00 00 4f warning: trailing garbage in marker segment (12 bytes)
imginfo: /tmp/portage/media-
libs/jasper-1.900.22/work/jasper-1.900.22/src/libjasper/jpc/jpc_dec.c:1650:=
=20
void calcstepsizes(uint_fast16_t, int, uint_fast16_t *): Assertion `!((expn=
 +=20
(numrlvls =E2=80=93 1) =E2=80=93 (numrlvls =E2=80=93 1 =E2=80=93 ((bandno >=
 0) ? ((bandno + 2) / 3) : (0)))) &=20
(~0x1f))=E2=80=99 failed.
Commit fix:
N/A
Fixed version:
N/A
Testcase:
https://github.com/asarubbo/poc/blob/master/00044-jasper-assert-calcstepsiz=
es

Credit:
This bug was discovered by Agostino Sarubbo of Gentoo.

Timeline:
2016-10-23: start to report to upstream the issues
2016-11-16: blog post about the issue

Note:
These bugs were found with American Fuzzy Lop.

Permalink:
https://blogs.gentoo.org/ago/2016/11/16/jasper-multiple-assertion-failure
