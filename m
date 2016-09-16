X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["2767" "Friday" "16" "September" "2016" "15:00:53" "+0200" "Hanno =?UTF-8?B?QsO2Y2s=?=" "hanno@hboeck.de" "<20160916150053.76622e04@hboeck.de>" "75" "[oss-security] Out of bounds heap bugs in glib, heap buffer overflow in gnome-session" "^Date:" nil nil "9" "2016091613:00:53" "[oss-security] Out of bounds heap bugs in glib, heap buffer overflow in gnome-session" (number mark "U       hanno@hboeck Sep 16   75/2767  " thread-indent "\"[oss-security] Out of bounds heap bugs in glib, heap buffer overflow in gnome-session\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 32721 invoked by uid 550); 16 Sep 2016 13:01:06 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 32697 invoked from network); 16 Sep 2016 13:01:06 -0000
Message-ID: <20160916150053.76622e04@hboeck.de>
X-Mailer: Claws Mail 3.14.0 (GTK+ 2.24.31; x86_64-pc-linux-gnu)
Mime-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256; protocol="application/pgp-signature"; boundary="=_zucker.schokokeks.org-14226-1474030856-0001-2"
Date: Fri, 16 Sep 2016 15:00:53 +0200
From: Hanno =?UTF-8?B?QsO2Y2s=?= <hanno@hboeck.de>
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] Out of bounds heap bugs in glib, heap buffer overflow in
 gnome-session
To: oss-security@lists.openwall.com

--=_zucker.schokokeks.org-14226-1474030856-0001-2
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

https://blog.fuzzing-project.org/53-Out-of-bounds-heap-bugs-in-glib,-heap-b=
uffer-overflow-in-gnome-session.html

By testing GNOME-related packages with Address Sanitizer I recently
discovered several trivial to find bugs.

Two out of bounds bugs in the glib library were uncovered by running
the test suite with Address Sanitizer enabled. One heap buffer overflow
in the parameter parsing of gnome-session was uncovered by trying to
start GNOME. Given that these bugs weren't discovered earlier means
that most likely nobody ever used Address Sanitizer to test GNOME
components.

I strongly recommend to GNOME and to other software communities to use
Address Sanitizer testing in order to improve the quality of their
software.

Out of bounds read in g_unichar_iswide_bsearch() / glib
https://bugzilla.gnome.org/show_bug.cgi?id=3D766211
Upstream bug report (again reported here)
https://git.gnome.org/browse/glib/commit/?id=3Dbcbd8d7
Commit / fix
Fixed in 2.48.2.

Out of bounds read in token_stream_prepare() / glib
https://bugzilla.gnome.org/show_bug.cgi?id=3D762417
Upstream bug report
https://git.gnome.org/browse/glib/commit/glib/gvariant-parser.c?id=3Daead1c=
046dd39748cca449b55ec300ba5f025365
Commit / fix
Fixed in 2.48.0.

Heap buffer overflow in gnome-session
https://bugzilla.gnome.org/show_bug.cgi?id=3D768441
Upstream bug report
https://git.gnome.org/browse/gnome-session/commit/?h=3Dgnome-3-20&id=3D634a=
b70d9f03b1650be4b8259091ca3036f0fbf9
Commit / fix
Fixed in 3.20.2.


--=20
Hanno B=C3=B6ck
https://hboeck.de/

mail/jabber: hanno@hboeck.de
GPG: FE73757FA60E4E21B937579FA5880072BBB51E42

--=_zucker.schokokeks.org-14226-1474030856-0001-2
Content-Type: application/pgp-signature
Content-Transfer-Encoding: 7bit
Content-Description: OpenPGP digital signature

-----BEGIN PGP SIGNATURE-----

iQIbBAEBCAAGBQJX2+0FAAoJEKWIAHK7tR5CRnoP9R2nLZBsNKkKA9B0cH0Wd+gg
kEIaQXSqUd2UoUYT4HWtSj6ZA63JsdkvJcOclym3+I4+B1tsZk2H56R06tcMddLK
sH9jJf7z+qUiLRSJh83bYfNXFqZIeSctDbdD387AHuR2a5XOxro22HpTJc0yfBnO
gSm+uIiXX9FjznAYjReDpBUvloeOCCkyekHvnuM+L6WoTEGl6qRLdi8rH13C5Jl7
w5bUcesqFk6PpW9nq5/BXxOO0hbls8C5ITp6G4yuTkoYAgl/91ojIUZxs0kwrlMh
ilE9REBqP51Q0LsGyekQD29q/H9mDZWbqo9U66p6fresKaiXy30v6kL3S6JZyZM2
qtTCFSiLocyuL5TRvP0suRT6LUFBdSmHTHARiIn8WBXqGLhYv0Pt+PkEO3iinkYX
/0IxXfzkctYUgvAzMPX5a7u1G7SqsmsRDdDzvH2OT7IdzTUwkKa72JbHDtXAAau0
7IjQr4h5her5/3GMwpdos8OEU0SfVr9xeDUYElkT6wAng19RJ2MiEz1XBPPYNx3v
cqawUN8iGCjxDmZufpov3j1Lagy0BoVnDLYIDqk4ZXfFv5biBr4m62J1lPc83mL7
Vqgd7ga4U+PGE23fL2wuHzMsv8/w7uNqlyK51iBYEv728n7Kif2pk6Yz3CWX+4+t
s/qQHh4+PAXR+whKvF8=
=Gm3l
-----END PGP SIGNATURE-----

--=_zucker.schokokeks.org-14226-1474030856-0001-2--
