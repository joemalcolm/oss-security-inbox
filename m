X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["2254" "Thursday" "30" "April" "2015" "14:46:42" "+0200" "Hanno =?UTF-8?B?QsO2Y2s=?=" "hanno@hboeck.de" "<20150430144642.54356798@pc1>" "60" "[oss-security] Heap overflow / invalid read in Libtasn1 before 4.5 (TFPA 005/2015)" nil nil nil "4" "2015043012:46:42" "[oss-security] Heap overflow / invalid read in Libtasn1 before 4.5 (TFPA 005/2015)" (number mark "        hanno@hboeck Apr 30   60/2254  " thread-indent "\"[oss-security] Heap overflow / invalid read in Libtasn1 before 4.5 (TFPA 005/2015)\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 16104 invoked by uid 550); 30 Apr 2015 12:50:57 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 16046 invoked from network); 30 Apr 2015 12:50:50 -0000
Message-ID: <20150430144642.54356798@pc1>
X-Mailer: Claws Mail 3.11.1 (GTK+ 2.24.27; x86_64-pc-linux-gnu)
Mime-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512; protocol="application/pgp-signature"; boundary="=_zucker.schokokeks.org-14941-1430398238-0001-2"
Date: Thu, 30 Apr 2015 14:46:42 +0200
From: Hanno =?UTF-8?B?QsO2Y2s=?= <hanno@hboeck.de>
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] Heap overflow / invalid read in Libtasn1 before 4.5 (TFPA 005/2015)
To: oss-security@lists.openwall.com, fulldisclosure@seclists.org,
  cve-assign@mitre.org

--=_zucker.schokokeks.org-14941-1430398238-0001-2
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

https://blog.fuzzing-project.org/9-Heap-overflow-invalid-read-in-Libtasn1-T=
FPA-0052015.html

While fuzzing GnuTLS I discovered a malformed certificate input sample
that would cause a heap overflow read of 99 bytes in the DER decoding
functions of Libtasn1. The heap overflow happens in the function
_asn1_extract_der_octet().

This issue was reported to the Libtasn1 developer on 16th April. A fix
was committed on 20th April and is part of the Libtasn1 4.5 release.
This issue was found with american fuzzy lop and address sanitizer.

http://git.savannah.gnu.org/gitweb/?p=3Dlibtasn1.git;a=3Dcommitdiff;h=3Df97=
9435823a02f842c41d49cd41cc81f25b5d677
Git commit / fix

https://lists.gnu.org/archive/html/help-libtasn1/2015-04/msg00000.html
Libtasn1 4.5 release notes

https://crashes.fuzzing-project.org/TFPA-2015-005-libtasn1-4.4-heap-overflo=
w.crt
Sample malformed certificate exposing heap overflow (test with
certtool -i --inder --infile=3D[sample] and address sanitizer or
valgrind)

--=20
Hanno B=C3=B6ck
http://hboeck.de/

mail/jabber: hanno@hboeck.de
GPG: BBB51E42

--=_zucker.schokokeks.org-14941-1430398238-0001-2
Content-Type: application/pgp-signature
Content-Transfer-Encoding: 7bit
Content-Description: OpenPGP digital signature

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v2

iQIcBAEBCgAGBQJVQiQyAAoJEKWIAHK7tR5C5bkQAKPIECpn8RnxQTwDZg4Ly91P
8VxPW4qfojIyWxxTPBlXp8XFTiI9x8lggdY4gI2PYMeNNgS0lOGXMK5pplT3VXhJ
rurARhoVtKzOE2a03Sgm6tXE71sA0xbUr1imRr7/4CEGBv+Come0SaKWWqO8zh6n
AWQxg/MPc2dPIFo6tZ0JlvmpDU1wWeZ5FB/bAWjPVQsjPIHQbiIkWemtAs+Z6GDR
G9bkxi6UX5gQR+DKkf1ZHLEfv3U6wj7uiw2O2rrN0zaZrMs9HIa8CNWXWLyvESV6
zuBJ4hOFPSb4dFEu2Q24EWxFwSwH0nhqmJFy0uRBHs8WybsfqgFX4eWz2GTdcJ8B
yEqUO9DJC249yBLtINfrZiSuTwp5POKrEa0og22vZ6xRWpKNh3NyMbDd4CuG5VLO
oEDvYKcQYEEW7oUdx/UzVF7KZD6+H8Jq8CPyYhpzwF3MJklye0nxtb3XQkq63k+h
7/eySA93Zsr5rRQJLhidNlTDFXf/tReWRp+RHtQl6KJnlMndr9vMRcsLh45+3r4l
k7w6oGir/MXhxllr+Of/N37FId3O8FtzQXcCg529kYjIAjOKKnHG3tT3tWmxbZoe
mwp8D9nm+j0rYU7TdHqcBUkE4Isu9rsrExP+VmNfRuGZ3eG+N5ZBVmGWxZRqFWZJ
v5PuyH04PCgE7V3cNU9B
=GNNB
-----END PGP SIGNATURE-----

--=_zucker.schokokeks.org-14941-1430398238-0001-2--
