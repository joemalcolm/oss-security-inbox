X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["2323" "Tuesday" "24" "November" "2015" "11:33:43" "+0100" "Hanno =?UTF-8?B?QsO2Y2s=?=" "hanno@hboeck.de" "<20151124113343.4382bed3@pc1>" "62" "[oss-security] Heap Overflow in PCRE" "^Date:" nil nil "11" "2015112410:33:43" "[oss-security] Heap Overflow in PCRE" (number mark "        hanno@hboeck Nov 24   62/2323  " thread-indent "\"[oss-security] Heap Overflow in PCRE\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 28590 invoked by uid 550); 24 Nov 2015 10:33:54 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 28510 invoked from network); 24 Nov 2015 10:33:48 -0000
Message-ID: <20151124113343.4382bed3@pc1>
X-Mailer: Claws Mail 3.13.0 (GTK+ 2.24.28; x86_64-pc-linux-gnu)
Mime-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512; protocol="application/pgp-signature"; boundary="=_zucker.schokokeks.org-3825-1448361217-0001-2"
Date: Tue, 24 Nov 2015 11:33:43 +0100
From: Hanno =?UTF-8?B?QsO2Y2s=?= <hanno@hboeck.de>
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] Heap Overflow in PCRE
To: oss-security@lists.openwall.com, cve-assign@mitre.org

--=_zucker.schokokeks.org-3825-1448361217-0001-2
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

https://blog.fuzzing-project.org/29-Heap-Overflow-in-PCRE.html

The Perl Compatible Regular Expressions (PCRE) library has just
released a new version which fixes a number of security issues.

Fuzzing the pcretest tool uncovered an input leading to a heap overflow
in the function pcre_exec. This bug was found with the help of american
fuzzy lop and address sanitizer.
https://bugs.exim.org/show_bug.cgi?id=3D1637 Upstream bug #1637 (PoC and
ASAN trace attached there)

This is fixed in PCRE 8.38. There are two variants of PCRE, the classic
one and PCRE2. PCRE2 is not affected.
https://lists.exim.org/lurker/message/20151123.125009.80e5ac05.en.html

Appart from that a couple of other vulnerabilities found by other
people have been fixed in this release:
https://bugs.exim.org/show_bug.cgi?id=3D1672
Heap overflow in compile_regex
https://bugs.exim.org/show_bug.cgi?id=3D1515
Stack overflow in compile_regex
https://bugs.exim.org/show_bug.cgi?id=3D1667
Heap overflow in compile_regex

If you use PCRE to parse untrusted inputs you should update immediately.


--=20
Hanno B=C3=B6ck
http://hboeck.de/

mail/jabber: hanno@hboeck.de
GPG: BBB51E42

--=_zucker.schokokeks.org-3825-1448361217-0001-2
Content-Type: application/pgp-signature
Content-Transfer-Encoding: 7bit
Content-Description: OpenPGP digital signature

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v2

iQIcBAEBCgAGBQJWVD0HAAoJEKWIAHK7tR5C72YP/i5rnxzEdYaTRxH6V675RMRB
D9TMPpBrTlFm0HCSo8q7RxSaF16WYkO3fpRvUAgK59hPK1bSZPdf783T1TPNqWcJ
VHKO+Y1yKPyiWm4bArrQNXKkT2LkJTAn5IocQO58SSgMdlFirgDuFxO1soVEOf4w
6Yi8O4g3VPfKPkU+wPFTowtDgk1TL2SliLo8s9jrNspzasXbdd4rpJwMva15Z/hl
SkJvsoQmCjewcRkOrSiRTskL3V9wgYfoF4hpcm5zrfjoSGWHwnkMQQQxhM66rhet
ENmx4DFDSwLOmFrIRLWcrmkQPZWzNBheW8FwPontHDrhXZ15yUcNDkXNlb0JsBav
CLI6tQywGp+09AQwC8n9zSZUdooXE5ICPjwjlvA4vDy9Ou26Ly6pDMD46WZgqZY5
Ip5nV+CHmWghbPEYnUKiqKp7MYSzsa6slYjwd2ZsOnWz3WtFk6XsVr9WQ4lmazIC
JMFIWGuw/cXmDsgCVEQsAKGAQlmLuuM2NX0uKs3lUzo9TfJcQ2mWsFi2VvqVxG12
fEOiT+WZKDI3Y1Wt/pguxZMepeIEFP8y4UEi4UIL76/e+UxBGpKu65kIaN7eG11s
eSObPv3oJtyHrPcOE4MhNlZTYIUFo7hUpZrHB49RY/w90csocn1oGGd94XeQZUMY
k0ynsiIjMIV1xkfc2bnK
=aLGe
-----END PGP SIGNATURE-----

--=_zucker.schokokeks.org-3825-1448361217-0001-2--
