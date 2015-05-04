X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["2488" "Monday" "4" "May" "2015" "10:21:09" "-0600" "Kurt Seifried" "kseifried@redhat.com" "<55479C75.3070000@redhat.com>" "71" "[oss-security] PHP and some == wonkiness" nil nil nil "5" "2015050416:21:09" "[oss-security] PHP and some == wonkiness" (number mark "        kseifried@re May  4   71/2488  " thread-indent "\"[oss-security] PHP and some == wonkiness\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 30333 invoked by uid 550); 4 May 2015 16:21:23 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 30312 invoked from network); 4 May 2015 16:21:23 -0000
Message-ID: <55479C75.3070000@redhat.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:31.0) Gecko/20100101 Thunderbird/31.6.0
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha1;
 protocol="application/pgp-signature";
 boundary="0Me1WgPSH3fmBAbu9WKa59sA1TMLL23uL"
X-Scanned-By: MIMEDefang 2.68 on 10.5.11.24
Date: Mon, 04 May 2015 10:21:09 -0600
From: Kurt Seifried <kseifried@redhat.com>
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] PHP and some == wonkiness
To: "oss-security@lists.openwall.com" <oss-security@lists.openwall.com>

--0Me1WgPSH3fmBAbu9WKa59sA1TMLL23uL
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable

https://news.ycombinator.com/item?id=3D9484757 read the entire thread for
an ongoing series of "what the heck?".

Some examples include:
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
This is well-known PHP-trick. Use =3D=3D=3D to right result.
  php > var_dump(md5('240610708') =3D=3D md5('QNKCDZO'));
  bool(true)
  php > var_dump(md5('240610708'),   md5('QNKCDZO'));


  string(32) "0e462097431906509019562988736854"
  string(32) "0e830400451993494058024219903391"
  php > var_dump(md5('240610708') =3D=3D=3D   md5('QNKCDZO'));


  bool(false)
  php > var_dump("0e462097431906509019562988736854" =3D=3D
"0e830400451993494058024219903391");
  bool(true)
  php > var_dump("0e462097431906509019562988736854" =3D=3D=3D
"0e830400451993494058024219903391");
  bool(false)
  php > var_dump(md5('240610708') =3D=3D=3D   md5('QNKCDZO'));


  bool(false)
  php > var_dump(md5('240610708') =3D=3D   md5('QNKCDZO'));

  bool(true)
  php > var_dump(md5('240610708') =3D=3D=3D md5('QNKCDZO'));
  bool(false)
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D

I'm guessing there is more than a bit of code that uses =3D=3D to compare
passwords/etc. Something to be aware of.


--=20
Kurt Seifried -- Red Hat -- Product Security -- Cloud
PGP A90B F995 7350 148F 66BF 7554 160D 4553 5E26 7993


--0Me1WgPSH3fmBAbu9WKa59sA1TMLL23uL
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="signature.asc"

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v2.0.22 (GNU/Linux)

iQIcBAEBAgAGBQJVR5x2AAoJEBYNRVNeJnmTZe8QAL5M+KQGEU/12o5zDnLQanm7
7tMi0yR0mqKEekEpezhbTRZNaPPao0Vac0nqWD203tG3Q9HLVkACMCUP7NUaryti
BlvG76J+RZH3Oa7nzaiFWU52IjEzLtd4oSWIvI6/RykqFaeF3oBz2f0/bVddqAXJ
pOIIrG8HeTVLzYb3skhNX9Fp7weufCaeo6h6hrs26WmkIRkfF3BRKo5eSTPa6w6L
WjUOhDz2cGfhEONtA3LJcLlVKXmH0Z4mPjWzxpoWMm0As2zajUJfhHUQFZXgiKVh
i/4uKe8xSG7IHkUSKP8XmVbNGWAXAN4EHENfJgGVKXefM3VILQ5bNK9RdDfoSn0o
05fgddUHIOr80xFoubFyZWoo1r1HXtNNtLnH1dSCLa8XluuP5hQdnhzNZw1u2XfB
0Cautn/9rVVLgPg9VfEqEi1B25Z9fP4cx31sxzvJBBZNEf213SFKd9I+IfkKZhjp
eDKYaPvTSM2/IyUVEexS1EQSiuBjOyyihwknbVMhOSuyeuSG3yu5m2azI365sdJK
KNBSO6VaDVeEN8tdpyN0hcFNk8c3ZA56GrVDJjj1TG0oef2NUzmKyJMi8IlooXOo
R+8w6pgL2s0rvn1cfsiQ14OP4R9koRWJ7OHn9jwGmLeBkWidNKt2MQhcstKTvvUy
0tW8LR5GK2UUUeWEzoIb
=7xEY
-----END PGP SIGNATURE-----

--0Me1WgPSH3fmBAbu9WKa59sA1TMLL23uL--
