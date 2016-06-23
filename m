X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["2717" "Thursday" "23" "June" "2016" "15:58:47" "+0200" "Hanno =?UTF-8?B?QsO2Y2s=?=" "hanno@hboeck.de" "<20160623155847.2236edb8@pc1>" "71" "[oss-security] Out of bounds read and signed integer overflow in libarchive" nil nil nil "6" "2016062313:58:47" "[oss-security] Out of bounds read and signed integer overflow in libarchive" (number mark "U       hanno@hboeck Jun 23   71/2717  " thread-indent "\"[oss-security] Out of bounds read and signed integer overflow in libarchive\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 30700 invoked by uid 550); 23 Jun 2016 13:59:07 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 30682 invoked from network); 23 Jun 2016 13:59:07 -0000
Date: Thu, 23 Jun 2016 15:58:47 +0200
From: Hanno =?UTF-8?B?QsO2Y2s=?= <hanno@hboeck.de>
To: oss-security@lists.openwall.com
Cc: cve-assign@mitre.org
Message-ID: <20160623155847.2236edb8@pc1>
X-Mailer: Claws Mail 3.13.2 (GTK+ 2.24.30; x86_64-pc-linux-gnu)
Mime-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512; protocol="application/pgp-signature"; boundary="=_zucker.schokokeks.org-5539-1466690337-0001-2"
Subject: [oss-security] Out of bounds read and signed integer overflow in libarchive

--=_zucker.schokokeks.org-5539-1466690337-0001-2
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

https://blog.fuzzing-project.org/48-Out-of-bounds-read-and-signed-integer-o=
verflow-in-libarchive.html

https://groups.google.com/forum/#!topic/libarchive-discuss/sui01WaM3ic
I recently wrote about a large number of bugs and potential security
issues in libarchive. The release 3.2.0 missed one fix for an out of
bounds read in the rar parser. Also I discovered one additional signed
integer overflow issue with ubsan. Both issues are now fixed in
libarchive 3.2.1. All issues were discovered with the help of american
fuzzy lop.

https://github.com/libarchive/libarchive/issues/521
Out of bounds heap read in RAR parser
http://libarchive.github.io/google-code/issue-413/comment-0/bsdtar-invalid-=
read.rar
Sample rar file
https://cve.mitre.org/cgi-bin/cvename.cgi?name=3DCVE-2015-8934
CVE-2015-8934

https://github.com/libarchive/libarchive/issues/717#event-697151157
Signed integer overflow in ISO parser
https://github.com/libarchive/libarchive/files/321672/libarchive-signed-int=
-overflow.zip
Sample ISO file

http://blog.talosintel.com/2016/06/the-poisoned-archives.html
Also a couple of other security issues in libarchive were found by
Cisco.

With the release of version 3.2.1 I consider libarchive to be
reasonably robust against fuzzing. I've tested all supported file
formats and fuzzed each one with afl/asan for at least one day. Of
course that doesn't mean that no security issues are left - but the
easy to find ones should be wiped out.


--=20
Hanno B=C3=B6ck
https://hboeck.de/

mail/jabber: hanno@hboeck.de
GPG: BBB51E42

--=_zucker.schokokeks.org-5539-1466690337-0001-2
Content-Type: application/pgp-signature
Content-Transfer-Encoding: 7bit
Content-Description: OpenPGP digital signature

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v2

iQIcBAEBCgAGBQJXa+sXAAoJEKWIAHK7tR5CWcwP/1D6oNePtl7e1BxOXUJQAnOF
vum8/2zRenWmsjKWwVol/tvU/1Q3mqCD9YDEBIiRFVkyzF6blJggMMBful8IpBB0
Btk+FFil+XVobW2cXxo74EVAdrdwt2Q9msCwYCIlyA4py4j396XFDeCIKQDrmrCD
8INSJz5gQnJt2arD7Oj6ONqOik+QbXtnY/kVxfsLYtM5lGj7It64Il/KPXpjIdiF
7ZD6AlxkNy1Xdx0OMX4VChv51D/5g2j9YU8hlVJGDdhlc+CPxVjd3oDZK0PjEuoE
229I+IgvezQ1ZT4i/QzR1M6D8qydlEWVxi1kNg5UViVbGXGJj6yEKaqK5WsouUne
3ibB4dcjB+Y+vys8cOjg5h/xdtmoBm/iX5A7X+zznT2ch+wtDFbmmL1KEBT+tP62
1jgYpVG/gx9IwBfQAQTmCxbjVnsG6FRFIc/ZFA0ohn8+MKeVKWASC2A8W9gvaX9j
c2MfEf7SoXHKyMS9ev3TimddUGor8SIdYF1w2aR3qg6pt9jKjeHE1zqx9k4/OrBd
ePebR9zg4ACR3/KQmtsgc1Ra9mvefiHVsRpZUirlmRehzNAy7pDPUvXu/wq+bEBh
KEtvLwO+JZPd/4YKxC5x3TSeTAssF4Wh82x7mRPVag16n1VA1nL6cg0tQxQtO5bj
U2c0P/a9YO90njYJ5HDn
=ekhG
-----END PGP SIGNATURE-----

--=_zucker.schokokeks.org-5539-1466690337-0001-2--
