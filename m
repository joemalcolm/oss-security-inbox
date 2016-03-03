X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["8676" "Thursday" "3" "March" "2016" "08:36:12" "-0600" "Tyler Hicks" "tyhicks@canonical.com" "<20160303143611.GA24776@boyd>" "248" "[oss-security] Security issues in JasPer (CVE-2016-1577 and CVE-2016-2116)" "^Cc:" nil nil "3" "2016030314:36:12" "[oss-security] Security issues in JasPer (CVE-2016-1577 and CVE-2016-2116)" (number mark "        tyhicks@cano Mar  3  248/8676  " thread-indent "\"[oss-security] Security issues in JasPer (CVE-2016-1577 and CVE-2016-2116)\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 17926 invoked by uid 550); 3 Mar 2016 14:36:27 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 17899 invoked from network); 3 Mar 2016 14:36:26 -0000
Message-ID: <20160303143611.GA24776@boyd>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="LwW0XdcUbUexiWVK"
Content-Disposition: inline
User-Agent: Mutt/1.5.24 (2015-08-30)
Cc: Jacob Baines <baines.jacob@gmail.com>
Date: Thu, 3 Mar 2016 08:36:12 -0600
From: Tyler Hicks <tyhicks@canonical.com>
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] Security issues in JasPer (CVE-2016-1577 and CVE-2016-2116)
To: oss-security@lists.openwall.com

--LwW0XdcUbUexiWVK
Content-Type: multipart/mixed; boundary="TRYliJ5NKNqkz5bu"
Content-Disposition: inline


--TRYliJ5NKNqkz5bu
Content-Type: text/plain; charset=us-ascii; name="msg-5829-2.txt"
Content-Disposition: inline; filename="msg-5829-2.txt"
Content-Transfer-Encoding: quoted-printable

-------------
CVE-2016-1577
-------------

Jacob Baines discovered[1] that a double free vulnerability in the
jas_iccattrval_destroy function in JasPer 1.900.1 and earlier allows
remote attackers to cause a denial of service (crash) or possibly
execute arbitrary code via a crafted ICC color profile in a JPEG 2000
image file, a different vulnerability than CVE-2014-8137. This double
free issue was assigned CVE-2016-1577.

In the code snippet below, attrval variable is assigned on line 298 and fre=
ed
with the call to jas_iccattrval_destroy() on line 302. If the tests on lines
312, 321, or 324 are true, the same pointer will be passed a second time
to jas_iccattrval_destroy() on line 357.

src/libjasper/base/jas_icc.c:
258	jas_iccprof_t *jas_iccprof_load(jas_stream_t *in)
259	{
...
294		for (i =3D 0; i < numtags; ++i) {
295			tagtabent =3D &prof->tagtab.ents[i];
296			if (tagtabent->off =3D=3D JAS_CAST(jas_iccuint32_t, prevoff)) {
297				if (prevattrval) {
298					if (!(attrval =3D jas_iccattrval_clone(prevattrval)))
299						goto error;
300					if (jas_iccprof_setattr(prof, tagtabent->tag, attrval))
301						goto error;
302					jas_iccattrval_destroy(attrval);
303				} else {
304	#if 0
305					jas_eprintf("warning: skipping unknown tag type\n");
306	#endif
307				}
308				continue;
309			}
310			reloff =3D tagtabent->off - curoff;
311			if (reloff > 0) {
312				if (jas_stream_gobble(in, reloff) !=3D reloff)
313					goto error;
314				curoff +=3D reloff;
315			} else if (reloff < 0) {
316				/* This should never happen since we read the tagged
317				element data in a single pass. */
318				abort();
319			}
320			prevoff =3D curoff;
321			if (jas_iccgetuint32(in, &type)) {
322				goto error;
323			}
324			if (jas_stream_gobble(in, 4) !=3D 4) {
325				goto error;
326			}
327			curoff +=3D 8;
328			if (!(attrvalinfo =3D jas_iccattrvalinfo_lookup(type))) {
329	#if 0
330				jas_eprintf("warning: skipping unknown tag type\n");
331	#endif
332				prevattrval =3D 0;
333				continue;
334			}
335			if (!(attrval =3D jas_iccattrval_create(type))) {
336				goto error;
337			}
...
353	error:
354		if (prof)
355			jas_iccprof_destroy(prof);
356		if (attrval)
357			jas_iccattrval_destroy(attrval);
358		return 0;
359	}

I've attached a patch to fix the issue by setting the attrval variable
to NULL after it is initially freed. See the original bug report[1] for
an image file to reproduce this issue.

-------------
CVE-2016-2116
-------------

While testing the fix for the issue above, I discovered that a memory
leak in the jas_iccprof_createfrombuf function in JasPer 1.900.1 and
earlier allows remote attackers to cause a denial of service (memory
consumption) via a crafted ICC color profile in a JPEG 2000 image file.
This memory leak issue was assigned CVE-2016-2116.=20

Valgrind says 8,352 bytes are leaked per call to jas_image_decode():

$ valgrind --leak-check=3Dfull imginfo -f bad.jp2=20
=3D=3D3131=3D=3D Memcheck, a memory error detector
=3D=3D3131=3D=3D Copyright (C) 2002-2015, and GNU GPL'd, by Julian Seward e=
t al.
=3D=3D3131=3D=3D Using Valgrind-3.11.0 and LibVEX; rerun with -h for copyri=
ght info
=3D=3D3131=3D=3D Command: imginfo -f bad.jp2
=3D=3D3131=3D=3D=20
error: failed to parse ICC profile
cannot load image
=3D=3D3131=3D=3D=20
=3D=3D3131=3D=3D HEAP SUMMARY:
=3D=3D3131=3D=3D     in use at exit: 20,772 bytes in 6 blocks
=3D=3D3131=3D=3D   total heap usage: 1,116 allocs, 1,110 frees, 502,815 byt=
es allocated
=3D=3D3131=3D=3D=20
=3D=3D3131=3D=3D 8,352 (104 direct, 8,248 indirect) bytes in 1 blocks are d=
efinitely lost in loss record 5 of 6
=3D=3D3131=3D=3D    at 0x4C2BBCF: malloc (in /usr/lib/valgrind/vgpreload_me=
mcheck-amd64-linux.so)
=3D=3D3131=3D=3D    by 0x4E4AF0D: ??? (in /usr/lib/x86_64-linux-gnu/libjasp=
er.so.1.0.0)
=3D=3D3131=3D=3D    by 0x4E4BFF4: jas_stream_memopen (in /usr/lib/x86_64-li=
nux-gnu/libjasper.so.1.0.0)
=3D=3D3131=3D=3D    by 0x4E49E7A: jas_iccprof_createfrombuf (in /usr/lib/x8=
6_64-linux-gnu/libjasper.so.1.0.0)
=3D=3D3131=3D=3D    by 0x4E50571: jp2_decode (in /usr/lib/x86_64-linux-gnu/=
libjasper.so.1.0.0)
=3D=3D3131=3D=3D    by 0x4E44EAC: jas_image_decode (in /usr/lib/x86_64-linu=
x-gnu/libjasper.so.1.0.0)
=3D=3D3131=3D=3D    by 0x400C71: ??? (in /usr/bin/imginfo)
=3D=3D3131=3D=3D    by 0x50AF9FF: (below main) (libc-start.c:289)
=3D=3D3131=3D=3D=20
=3D=3D3131=3D=3D 12,420 (104 direct, 12,316 indirect) bytes in 1 blocks are=
 definitely lost in loss record 6 of 6
=3D=3D3131=3D=3D    at 0x4C2BBCF: malloc (in /usr/lib/valgrind/vgpreload_me=
mcheck-amd64-linux.so)
=3D=3D3131=3D=3D    by 0x4E4AF0D: ??? (in /usr/lib/x86_64-linux-gnu/libjasp=
er.so.1.0.0)
=3D=3D3131=3D=3D    by 0x4E4B384: jas_stream_fopen (in /usr/lib/x86_64-linu=
x-gnu/libjasper.so.1.0.0)
=3D=3D3131=3D=3D    by 0x400C47: ??? (in /usr/bin/imginfo)
=3D=3D3131=3D=3D    by 0x50AF9FF: (below main) (libc-start.c:289)
=3D=3D3131=3D=3D=20
=3D=3D3131=3D=3D LEAK SUMMARY:
=3D=3D3131=3D=3D    definitely lost: 208 bytes in 2 blocks
=3D=3D3131=3D=3D    indirectly lost: 20,564 bytes in 4 blocks
=3D=3D3131=3D=3D      possibly lost: 0 bytes in 0 blocks
=3D=3D3131=3D=3D    still reachable: 0 bytes in 0 blocks
=3D=3D3131=3D=3D         suppressed: 0 bytes in 0 blocks
=3D=3D3131=3D=3D=20
=3D=3D3131=3D=3D For counts of detected and suppressed errors, rerun with: =
-v
=3D=3D3131=3D=3D ERROR SUMMARY: 2 errors from 2 contexts (suppressed: 0 fro=
m 0)

Ignore the second memory leak (12,420 bytes) as it is a leak in imginfo and=
 not
libjasper.

In the following snippet, the jas_stream_t allocated by the call to
jas_stream_memopen() is leaked if jas_iccprof_load() fails on line 1691.

src/libjasper/base/jas_icc.c:
1685	jas_iccprof_t *jas_iccprof_createfrombuf(uchar *buf, int len)
1686	{
1687		jas_stream_t *in;
1688		jas_iccprof_t *prof;
1689		if (!(in =3D jas_stream_memopen(JAS_CAST(char *, buf), len)))
1690			goto error;
1691		if (!(prof =3D jas_iccprof_load(in)))
1692			goto error;
1693		jas_stream_close(in);
1694		return prof;
1695	error:
1696		return 0;
1697	}

I've attached a patch that fixes the issue by closing the jas_stream_t
in the error path.

[1] https://launchpad.net/bugs/1547865

Tyler

--TRYliJ5NKNqkz5bu
Content-Type: text/x-diff; charset=us-ascii
Content-Disposition: attachment; filename="CVE-2016-1577.patch"

Description: CVE-2016-1577: Prevent double-free in jas_iccattrval_destroy()
Author: Tyler Hicks <tyhicks@canonical.com>
Bug-Ubuntu: https://launchpad.net/bugs/1547865

--- jasper-1.900.1-debian1.orig/src/libjasper/base/jas_icc.c
+++ jasper-1.900.1-debian1/src/libjasper/base/jas_icc.c
@@ -300,6 +300,7 @@ jas_iccprof_t *jas_iccprof_load(jas_stre
 				if (jas_iccprof_setattr(prof, tagtabent->tag, attrval))
 					goto error;
 				jas_iccattrval_destroy(attrval);
+				attrval = 0;
 			} else {
 #if 0
 				jas_eprintf("warning: skipping unknown tag type\n");

--TRYliJ5NKNqkz5bu
Content-Type: text/x-diff; charset=us-ascii
Content-Disposition: attachment; filename="CVE-2016-2116.patch"
Content-Transfer-Encoding: quoted-printable

Description: Prevent jas_stream_t memory leak in jas_iccprof_createfrombuf()
Author: Tyler Hicks <tyhicks@canonical.com>

--- jasper-1.900.1-debian1.orig/src/libjasper/base/jas_icc.c
+++ jasper-1.900.1-debian1/src/libjasper/base/jas_icc.c
@@ -1693,6 +1693,8 @@ jas_iccprof_t *jas_iccprof_createfrombuf
 	jas_stream_close(in);
 	return prof;
 error:
+	if (in)
+		jas_stream_close(in);
 	return 0;
 }
=20

--TRYliJ5NKNqkz5bu--

--LwW0XdcUbUexiWVK
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1

iQIcBAEBCgAGBQJW2EvbAAoJENaSAD2qAscKCDMQAMxS2ZNjMuYFpoIwHhN5akcC
pU4X7k2IQV1C8hPgaXwTT6ZBhuG7Nx9EP0a3hm4oMsMN7hMZgMxh9MQ0eInCTgbj
tsNxJMnmZxQuvFMz8cF7hhBNjt8v9qYaIKFN531A9fnz+SUtLuZ39WRVggAOSuWp
GpAidGl43NyqOvnPYacjyPBMyEZNml3kNf3mI9KI+VGboe0Jt7npxCIh2agcIEYH
MJxqM+kkT6ERuH5wD0BW6UMt2tDF/7/N07XD8jutVCWoD9V2TZCDeyKqnwEVUSPT
S1G9orheHnS8Goe6NZxi9LHC/IOU72jXgZWYGbC0Gttg7+oDiXCWBMeydoKsTAUU
utc0AwIXrneEp7blBxf8T2F68c6TzZB5cANFnI6hicNHwG21jjwrChRl1/XOOrx2
bCDdKkvDIpRnYAs1VOHmwaszUwGdJE9C5gqYd+a9zlsHZstjkmo3vJgenOdYbCao
lG97ytMZWY524YRMVzJqSEv2lCiM3kGYs26q6RCxVuFFBYIMHg4GpvFSTscA5rac
+zXXxZwW2/TW7nJJZSpm8aJFwCdzXa/BsPR56F0ViM7XqGH5HMvnwE5AH/AWNNsw
iQC4sXTYC8s2Lx4RyMo7xWZSJiRNU9m4ApzQLzfXfDs4O5EoBtnAzvxZ9mPZ6wPP
Ln7idmCFH+9sfaIBi/dV
=VowO
-----END PGP SIGNATURE-----

--LwW0XdcUbUexiWVK--
