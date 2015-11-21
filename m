X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["3415" "Saturday" "21" "November" "2015" "10:12:53" "+0100" "Hanno =?UTF-8?B?QsO2Y2s=?=" "hanno@hboeck.de" "<20151121101253.20323cd3@pc1>" "89" "[oss-security] Libxml2: Several out of bounds reads" nil nil nil "11" "2015112109:12:53" "[oss-security] Libxml2: Several out of bounds reads" (number mark "U       hanno@hboeck Nov 21   89/3415  " thread-indent "\"[oss-security] Libxml2: Several out of bounds reads\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 22074 invoked by uid 550); 21 Nov 2015 09:13:07 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 21938 invoked from network); 21 Nov 2015 09:12:59 -0000
Date: Sat, 21 Nov 2015 10:12:53 +0100
From: Hanno =?UTF-8?B?QsO2Y2s=?= <hanno@hboeck.de>
To: oss-security@lists.openwall.com
Cc: cve-assign@mitre.org
Message-ID: <20151121101253.20323cd3@pc1>
X-Mailer: Claws Mail 3.13.0 (GTK+ 2.24.28; x86_64-pc-linux-gnu)
Mime-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512; protocol="application/pgp-signature"; boundary="=_zucker.schokokeks.org-29398-1448097167-0001-2"
Subject: [oss-security] Libxml2: Several out of bounds reads

--=_zucker.schokokeks.org-29398-1448097167-0001-2
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

https://blog.fuzzing-project.org/28-Libxml2-Several-out-of-bounds-reads.html

Libxml2: Several out of bounds reads

I discovered several out of bounds read issues in Libxml2. The upstream
developers have just released version 2.9.3, which fixes all relevant
issues.

A malformed XML file can cause a heap out of bounds read access in the
function xmlParseXMLDecl.
https://bugzilla.gnome.org/show_bug.cgi?id=3D751603
Upstream bug #751603 (sample input attached)
https://git.gnome.org/browse/libxml2/commit/?id=3D9aa37588ee78a06ca1379a9d9=
356eab16686099c
Git commit / fix

A second, very similar issue in the same function xmlParseXMLDecl.
https://bugzilla.gnome.org/show_bug.cgi?id=3D751631
Upstream bug #751631 (sample input attached)
https://git.gnome.org/browse/libxml2/commit/?id=3D709a952110e98621c9b78c4f2=
6462a9d8333102e
Git commit / fix

A malformed XML file can cause a global out of bounds read access in
the function xmlNextChar. This only affected the git code and was never
an issue in any release version. Upstream bug #751643 (sample input
attached)

All three issues above were found with american fuzzy lop and address
sanitizer.

Some inputs can cause a stack out of bounds read. This was found by
running the test suite with Address Sanitizer (make check). The issue
was re-found by fuzzing independently by Hugh Davenport:
https://bugzilla.gnome.org/show_bug.cgi?id=3D752191
Upstream bug #752191
https://bugzilla.gnome.org/show_bug.cgi?id=3D756372
Upstream bug #756372 (duplicate)
https://git.gnome.org/browse/libxml2/commit/?id=3D8fb4a770075628d6441fb17a1=
e435100e2f3b1a2
Git commit / fix
https://web.nvd.nist.gov/view/vuln/detail?vulnId=3DCVE-2015-8242
CVE-2015-8242

Unfortunately there is another issue affecting the test suite (also
documented in upstream bug #752191) that isn't fixed yet, but the bug
is in the code of the test itself, therefore it's not affecting the use
of Libxml2.

A large number of other issues have been fixed, many of them found with
american fuzzy lop and libfuzzer. The release notes of 2.9.3 mention
10 CVEs. If you use Libxml2 please update as soon as possible.
http://www.xmlsoft.org/news.html

--=20
Hanno B=C3=B6ck
http://hboeck.de/

mail/jabber: hanno@hboeck.de
GPG: BBB51E42

--=_zucker.schokokeks.org-29398-1448097167-0001-2
Content-Type: application/pgp-signature
Content-Transfer-Encoding: 7bit
Content-Description: OpenPGP digital signature

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v2

iQIcBAEBCgAGBQJWUDWVAAoJEKWIAHK7tR5CLboP/icju+756MWQzFGB2gXZzjA/
7hXBg2cDIir3nY03nTobrJeSQULnUdPhmreSoMVVVQI/dYJJ3jrxocOT+Gn2kIQ8
bovATdOveKF/WpKQPQCHnmgt9da4XVX7Fh1tKTWTC9hFEkJFOmvXiAZUroBd4GvL
4DY53cqEtcumW9k4TpsHxpskZxZMtrWtpGLsaTNaYbR8jBs42rm6Fyk177kl71NT
8iBK0hdZ0OlET9hkzTrxX0sWnyOdUcsmzsZg4dSwD/8K9nYh2+GHcL90laQXmu+R
lISaC4fedQu/JDSruKtYTnbOCzZRiPi1fYX/fLJjtMnYjSfx6gj8nzjTtw41sY7G
kw8PIZrK1LbzKGMFqHLtd8CDp8jc3x0/8NlK2f0GFqYMlFQTwX8k4fwWYJ7fZi3a
vKMrcr3kddTZBUC8UlQ39M10nyW+hbA7CBUlOIlCFwN0VDue2v0Fcl/nRjk5mM99
vRwVRVQU1YeNz1y9wEjNehqtTA9PJJyWN2PI39GJt6hXSKfcxTtyuBujg+Zr8pHC
v5y2U4ROxeFTyuTNSEzNNIzaordB4VrN3mSjXlp0O9Dv6/as2pllKO1b2E+/Wisk
IrvUL4fleWHISHAHHRsdslaSFXUlldKgkrq01uJ3V8z1/uzZ3IbOg7OFUrbo+9RO
vna9NHbQ80lefAxqqt0w
=lGNq
-----END PGP SIGNATURE-----

--=_zucker.schokokeks.org-29398-1448097167-0001-2--
