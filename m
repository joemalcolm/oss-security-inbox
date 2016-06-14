X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["3252" "Tuesday" "14" "June" "2016" "13:53:28" "+0200" "Hanno =?UTF-8?B?QsO2Y2s=?=" "hanno@hboeck.de" "<20160614135328.34a1e4e4@pc1>" "85" "[oss-security] Various invalid memory reads in ImageMagick (WPG, DDS, DCM)" "^Cc:" nil nil "6" "2016061411:53:28" "[oss-security] Various invalid memory reads in ImageMagick (WPG, DDS, DCM)" (number mark "        hanno@hboeck Jun 14   85/3252  " thread-indent "\"[oss-security] Various invalid memory reads in ImageMagick (WPG, DDS, DCM)\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 18279 invoked by uid 550); 14 Jun 2016 11:53:51 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 18185 invoked from network); 14 Jun 2016 11:53:42 -0000
Message-ID: <20160614135328.34a1e4e4@pc1>
X-Mailer: Claws Mail 3.13.2 (GTK+ 2.24.30; x86_64-pc-linux-gnu)
Mime-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512; protocol="application/pgp-signature"; boundary="=_zucker.schokokeks.org-5752-1465905211-0001-2"
Cc: cve-assign@mitre.org
Date: Tue, 14 Jun 2016 13:53:28 +0200
From: Hanno =?UTF-8?B?QsO2Y2s=?= <hanno@hboeck.de>
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] Various invalid memory reads in ImageMagick (WPG, DDS, DCM)
To: oss-security@lists.openwall.com

--=_zucker.schokokeks.org-5752-1465905211-0001-2
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

https://blog.fuzzing-project.org/46-Various-invalid-memory-reads-in-ImageMa=
gick-WPG,-DDS,-DCM.html

Further fuzzing of ImageMagick uncovered some more issues.

An out of bounds memory read in the VerticalFilter() function can be
triggered by a malformed DDS file.
https://crashes.fuzzing-project.org/imagemagick-oob-heap-read-VerticalFilte=
r.dds
Sample file
https://github.com/ImageMagick/ImageMagick/commit/791aa82c8064ee8965a63ccf4=
384f56b95057e5b
Git commit / fix This was fixed in versions 7.0.1-4 and 6.9.4-3.

Several bugs in the WPG parser could lead to a heap overflow and random
invalid memory writes. These bugs only seem to appear when a memory
limit is set.
https://crashes.fuzzing-project.org/imagemagick-heapoverflow-SetPixelIndex.=
wpg
Sample for heap write overflow in SetPixelIndex
https://crashes.fuzzing-project.org/imagemagick-invalid-write-ScaleCharToQu=
antum.wpg
Sample for unclear invalid write in ScaleCharToQuantum
https://crashes.fuzzing-project.org/imagemagick-invalid-write-SetPixelIndex=
.wpg
Sample for unclear invalid write in SetPixelIndex
https://github.com/ImageMagick/ImageMagick/commit/fc43974d34318c834fbf78570=
ca1a3764ed8c7d7
Git commit / fix 1
https://github.com/ImageMagick/ImageMagick/commit/aecd0ada163a4d6c769cec178=
955d5f3e9316f2f
Git commit / fix 2 These issues were fixed in versions 7.0.1-4 and
6.9.4-3.

Null pointer accesses and unclear segfaults can happen in the DCM
parser.
https://crashes.fuzzing-project.org/imagemagick-nullptr-ReadDCMImage-3220.d=
cm
Sample for null pointer access in ReadDCMImage
https://crashes.fuzzing-project.org/imagemagick-nullptr-ReadDCMImage-3240.d=
cm
Sample for null pointer access in ReadDCMImage (different code)
https://crashes.fuzzing-project.org/imagemagick-segv-ReadDCMImage-3968.dcm
Sample for unclear segfault in ReadDCMImage
https://github.com/ImageMagick/ImageMagick/commit/5511ef530576ed18fd636baa3=
bb4eda3d667665d
Git commit / fix These issues were fixed in versions 7.0.1-7 and
6.9.4-5.


--=20
Hanno B=C3=B6ck
https://hboeck.de/

mail/jabber: hanno@hboeck.de
GPG: BBB51E42

--=_zucker.schokokeks.org-5752-1465905211-0001-2
Content-Type: application/pgp-signature
Content-Transfer-Encoding: 7bit
Content-Description: OpenPGP digital signature

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v2

iQIcBAEBCgAGBQJXX/A4AAoJEKWIAHK7tR5Cwm0P/1UsuiHeOdeN1f9/+CM65nU1
xwCfSxV+HvuHZB8SslU2F6NhNmQRw06pAFtwa4dgCQI6XwQdyRDq5WtPhzY4n7Uo
kOLtt3iyZj3B60qFmdP/lyXnCrH/7ej86KjqutZe8INZspiQ2MbW/RRqyO5PmxDU
fcUaypEWsQcW7PKqsU/N0NmFgmHXtHumthpCWz9+36NkawSZ5UIbCB7NPPfALgHU
9nGo3jZUBp4wtQFRJ7UeQlFmT0I+MHyzRV04XnXLrpGZ3QvrCsh7kbbQKmDNNXG9
WmKmFiupfvGvt+nSz6VR7NUkaYdFAWQAbQXD/BdeipkF87mW/jzGZIaLBhdXA59+
9T7SJ7wVm5K6JK1c3kWUdE/NOGaBayQ3xZVAsRFzoqoIcGaoF2kgauOdyzN8z55G
evM8wup27brkq3sLF8FwRC8HARXF0L9uVb3PWBwEMkG4oMlIdgbJhhW5wOML0E0k
VAGUZswnk2KHBAmIXpv49l2GCroBGMVRIVHIrvJJBfXbYuODAu6BKS/wSBzXZbRW
Qm3MM5YGs2ZnyCvXKfklUZeGfR5IQidxvwXnJxja7cMd3S0N2BAKn6exUWxbXHSE
8FMw7AWGICSSrh6pkAYZ08ivkEQM9ekA+eT5PSGX+UxwZUgwgchktJEq5oaT4vf/
wHBel8pQtz1igYTG1o0r
=4/WH
-----END PGP SIGNATURE-----

--=_zucker.schokokeks.org-5752-1465905211-0001-2--
