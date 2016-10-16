X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["2163" "Monday" "17" "October" "2016" "01:02:45" "+0200" "Hanno =?UTF-8?B?QsO2Y2s=?=" "hanno@hboeck.de" "<20161017010245.267aae32@pc1>" "64" "Re: [oss-security] Re: Fuzzing jasper" "^Cc:" nil nil "10" "2016101623:02:45" "[oss-security] Re: Fuzzing jasper" (number mark "        hanno@hboeck Oct 17   64/2163  " thread-indent "\"Re: [oss-security] Re: Fuzzing jasper\"\n") "<CAHapaJ1yTNVH+umS9U3SeW0jK73WY0H06_k0eJmJ3pnEVO9D+Q@mail.gmail.com>" ("<1528713.C8CqGc87r5@arcadia>" "<20161016030229.F231642E027@smtpvbsrv1.mitre.org>" "<CAHapaJ1yTNVH+umS9U3SeW0jK73WY0H06_k0eJmJ3pnEVO9D+Q@mail.gmail.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 5924 invoked by uid 550); 16 Oct 2016 23:02:59 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 5901 invoked from network); 16 Oct 2016 23:02:59 -0000
Message-ID: <20161017010245.267aae32@pc1>
In-Reply-To: <CAHapaJ1yTNVH+umS9U3SeW0jK73WY0H06_k0eJmJ3pnEVO9D+Q@mail.gmail.com>
References: <1528713.C8CqGc87r5@arcadia>
	<20161016030229.F231642E027@smtpvbsrv1.mitre.org>
	<CAHapaJ1yTNVH+umS9U3SeW0jK73WY0H06_k0eJmJ3pnEVO9D+Q@mail.gmail.com>
X-Mailer: Claws Mail 3.14.0 (GTK+ 2.24.31; x86_64-pc-linux-gnu)
Mime-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256; protocol="application/pgp-signature"; boundary="=_zucker.schokokeks.org-15125-1476658967-0001-2"
Cc: oss-security@lists.openwall.com, ago@gentoo.org,
  cve-assign@mitre.org
Date: Mon, 17 Oct 2016 01:02:45 +0200
From: Hanno =?UTF-8?B?QsO2Y2s=?= <hanno@hboeck.de>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] Re: Fuzzing jasper
To: Graham Christensen <graham@grahamc.com>

--=_zucker.schokokeks.org-15125-1476658967-0001-2
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Hi,

On Sun, 16 Oct 2016 10:23:43 +0000
Graham Christensen <graham@grahamc.com> wrote:

> For what it is worth, Jasper has recently issued a release fixing many
> CVEs, and would likely appreciate these fussing results as bug
> reports on their github project: https://github.com/mdadams/jasper/

I tested the code again with afl (after the fixes for the stuff
Agostino reported) and it immediately found multiple issues:

https://github.com/mdadams/jasper/issues/28
Heap overflow in jpc_dec_cp_setfromcox()

https://github.com/mdadams/jasper/issues/29
Heap overflow in jpc_getuint16()

https://github.com/mdadams/jasper/issues/30
segfault / null pointer access in jpc_pi_destroy

https://github.com/mdadams/jasper/issues/31
double free on jpeg parsing

https://github.com/mdadams/jasper/issues/32
assert in jpc_dec_tiledecode()


This will need some work till it's fuzzing resistant.

--=20
Hanno B=C3=B6ck
https://hboeck.de/

mail/jabber: hanno@hboeck.de
GPG: FE73757FA60E4E21B937579FA5880072BBB51E42

--=_zucker.schokokeks.org-15125-1476658967-0001-2
Content-Type: application/pgp-signature
Content-Transfer-Encoding: 7bit
Content-Description: OpenPGP digital signature

-----BEGIN PGP SIGNATURE-----

iQIcBAEBCAAGBQJYBAcVAAoJEKWIAHK7tR5CrG4QAJmNbYneWTK6dazWqTglFRqD
DGTl34KIyNIxiwtDyamXoy0uR3TJj3H2R1S4Q9tNsa19cEVn4ro1vFFFURF9SXxB
Y52wF8jfh8SEvD49RPKmR3iOgvuheahMBQlBfajjPC7z+3rQYb0JeFNWL2V3rbkQ
95EXugD2qj1o+eTBFwc5no0WlpB6aKlANPdsVjFNCViykFZZ/LnTeI8JPZuWbY+l
4uYgKjc7oaPtYLbzNuoTxuDCkCshGyO29AGy09+UGjUSre7jtsw2BnjCW4n7+6/B
/D8K79KW4T6rM6HMKM+yWm3NMi5O/Umo31tNsjXhvc1WShs0JP3yDiFa+d9zKJw7
gI7c5QmuXJYkMf+yNHIeTXOyjAS4+8v6E984fsi9aM4i7uYdqmiY0q9ITCjHf48K
KoUAZtfWEPjZRx3VbasEpgC+iYS1HYox0HgaCxp4YYAAwErTXf3XEDlj8iw3PgFJ
9HrvTGAacLY9sacQoashT1J+aJPY3aAubnqjZx4FUBRBaCGaXsXtfpwM8a5dn1th
zc2jcQm33EMXULxXNxPen4mEDsIl+b55sbFTdhUuPgaYJPSwb3Sz8sKY3ctqKRym
MpRzyItSXjcFY8vPLEwZaxmAqi+6T2sAXm2mPiAKOFWQKZyssCAhSs9+6u0/qa62
p1SB38+iZrMCfwF6ueJq
=WApC
-----END PGP SIGNATURE-----

--=_zucker.schokokeks.org-15125-1476658967-0001-2--
