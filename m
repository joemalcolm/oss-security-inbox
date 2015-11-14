X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["2063" "Saturday" "14" "November" "2015" "17:34:06" "+0100" "Hanno =?UTF-8?B?QsO2Y2s=?=" "hanno@hboeck.de" "<20151114173406.7e5b2be9@pc1>" "57" "Re: [oss-security] New security advisory for Apache CXF" nil nil nil "11" "2015111416:34:06" "[oss-security] New security advisory for Apache CXF" (number mark "U       hanno@hboeck Nov 14   57/2063  " thread-indent "\"Re: [oss-security] New security advisory for Apache CXF\"\n") "<CAB8XdGD68dSoCEH6i_-zch9gP4fsrXJM5jXytT5u6juG+RgaGw@mail.gmail.com>" ("<CAB8XdGD68dSoCEH6i_-zch9gP4fsrXJM5jXytT5u6juG+RgaGw@mail.gmail.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 9424 invoked by uid 550); 14 Nov 2015 16:34:15 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 9404 invoked from network); 14 Nov 2015 16:34:15 -0000
Date: Sat, 14 Nov 2015 17:34:06 +0100
From: Hanno =?UTF-8?B?QsO2Y2s=?= <hanno@hboeck.de>
To: oss-security@lists.openwall.com
Message-ID: <20151114173406.7e5b2be9@pc1>
In-Reply-To: <CAB8XdGD68dSoCEH6i_-zch9gP4fsrXJM5jXytT5u6juG+RgaGw@mail.gmail.com>
References: <CAB8XdGD68dSoCEH6i_-zch9gP4fsrXJM5jXytT5u6juG+RgaGw@mail.gmail.com>
X-Mailer: Claws Mail 3.13.0 (GTK+ 2.24.28; x86_64-pc-linux-gnu)
Mime-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512; protocol="application/pgp-signature"; boundary="=_zucker.schokokeks.org-27626-1447518843-0001-2"
Subject: Re: [oss-security] New security advisory for Apache CXF

--=_zucker.schokokeks.org-27626-1447518843-0001-2
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

On Sat, 14 Nov 2015 15:32:32 +0000
Colm O hEigeartaigh <coheigea@apache.org> wrote:

> A new security advisory has been released for Apache CXF:
>=20
> CVE-2015-5253
> <http://cxf.apache.org/security-advisories.data/CVE-2015-5253.txt.asc?ver=
sion=3D1&modificationDate=3D1447433340000&api=3Dv2>:
> Apache CXF SAML SSO processing is vulnerable to a wrapping attack

It's a bit hard to judge from the description what this is about.

Am I right to assume that this is a fix for the XML encryption issues
Juraj Somorovsky found? He just presented that at BH Amsterdam
yesterday.
Every app that is using XML encryption in any way should be checked for
that.
(and the tl;dr is: don't decrypt unauthenticated data)

https://www.blackhat.com/eu-15/briefings.html#how-to-break-xml-encryption-a=
utomatically

--=20
Hanno B=C3=B6ck
http://hboeck.de/

mail/jabber: hanno@hboeck.de
GPG: BBB51E42

--=_zucker.schokokeks.org-27626-1447518843-0001-2
Content-Type: application/pgp-signature
Content-Transfer-Encoding: 7bit
Content-Description: OpenPGP digital signature

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v2

iQIcBAEBCgAGBQJWR2J+AAoJEKWIAHK7tR5CfgoP/i97FXTPhUl9A7p+jz/R9M+s
GaeKyi613g0MCVt9/6p6Jo11P0DaoKuARa3xUVeHWW0CqIeeICEXM8gFv93b3RVS
p1YHxTwWmG3KQW4VcWeuUrHD09rbEIHdPvMUug68WL14kNKaIqj9LrBQZZl60FXY
wxdr7aDCVBDMs8kl5a3HyR82MeAybOBIzWHp084/tkAZ5y/sAHDao/hj0rHppco8
IGaF2YHl/vsiC0TtrOXTIfaEQACkgh4S8j9hmreblcsG9648MZwxtXi6ZuCWQfWy
n2y/I0oBjuSXeGoCzAB7cLpMzc4sZQ0VwMKmdtRQGdSB4Eh73xfu/m92VHhy/I95
XO5OHMHgcP15VISGzK/V8n61BGT6gx44RoQU0zy/AwoUnqnxDa2j8Mx3xpPRvBBL
i9a8AKVrHiahHkJayeV88C7TpwK+sCHOAlHd2dDl2k2h+QnuJ+2cJAz74aUyrhYc
w32+/uHwg21eXjoMjvUAB5eShB2T4dflgRJ3+gdSI8X6EOqnRHYZtSNtqqMRxYOE
lRHsZXOKUHEMz3y6G02TWllCNCfYHfmvsl/8liO5CLwJjPaeiE106vv1x+MeI2Sc
m2c2EOoN4k2bxQb8DdKl7LN9nOvkht4P5HjueKpqS4/0nZ9G7XWiN2lNzo4/6yq5
3tpNg4zC/XQaS9rw9v+D
=GZaZ
-----END PGP SIGNATURE-----

--=_zucker.schokokeks.org-27626-1447518843-0001-2--
