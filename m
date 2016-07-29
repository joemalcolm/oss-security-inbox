X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1470" "Friday" "29" "July" "2016" "12:25:30" "-0400" "Hanno =?UTF-8?B?QsO2Y2s=?=" "hanno@hboeck.de" "<20160729122530.3574dcaf@pc1>" "41" "Re: [oss-security] CVE request: multiple issues fixed in GNU libidn 1.33" nil nil nil "7" "2016072916:25:30" "[oss-security] CVE request: multiple issues fixed in GNU libidn 1.33" (number mark "U       hanno@hboeck Jul 29   41/1470  " thread-indent "\"Re: [oss-security] CVE request: multiple issues fixed in GNU libidn 1.33\"\n") "<2fcfb94f-179b-eae1-817a-e940d793b2e9@suse.com>" ("<2fcfb94f-179b-eae1-817a-e940d793b2e9@suse.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 27992 invoked by uid 550); 29 Jul 2016 16:25:46 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 27970 invoked from network); 29 Jul 2016 16:25:45 -0000
Date: Fri, 29 Jul 2016 12:25:30 -0400
From: Hanno =?UTF-8?B?QsO2Y2s=?= <hanno@hboeck.de>
To: oss-security@lists.openwall.com
Message-ID: <20160729122530.3574dcaf@pc1>
In-Reply-To: <2fcfb94f-179b-eae1-817a-e940d793b2e9@suse.com>
References: <2fcfb94f-179b-eae1-817a-e940d793b2e9@suse.com>
X-Mailer: Claws Mail 3.13.2 (GTK+ 2.24.30; x86_64-pc-linux-gnu)
Mime-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512; protocol="application/pgp-signature"; boundary="=_zucker.schokokeks.org-12944-1469809534-0001-2"
Subject: Re: [oss-security] CVE request: multiple issues fixed in GNU libidn
 1.33

--=_zucker.schokokeks.org-12944-1469809534-0001-2
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Thanks for raising this.

libidn is also bundled in glibc, I have reported those a while ago:
https://sourceware.org/bugzilla/show_bug.cgi?id=3D19728
https://sourceware.org/bugzilla/show_bug.cgi?id=3D19729

--=20
Hanno B=C3=B6ck
https://hboeck.de/

mail/jabber: hanno@hboeck.de
GPG: BBB51E42

--=_zucker.schokokeks.org-12944-1469809534-0001-2
Content-Type: application/pgp-signature
Content-Transfer-Encoding: 7bit
Content-Description: OpenPGP digital signature

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v2

iQIcBAEBCgAGBQJXm4N6AAoJEKWIAHK7tR5CpZ4P/33A++se/GXVbuyelSDSSCX5
4owK0nyeKtw0oxO4scnVOyPdQ7RyY1n+DyZW74txwrajniUhTqXlP1noxm0l9A1P
+RONH7/ybRZBqoHaADvAirO24jYkHNbDbeD93rnfkxmU022aqNBjVBLpUPuotJWp
cXEEI8cQzA6d1mTvkZbURfAVx8bkLK3HYLuOgPs1VxDmKPxSzuPQ5SfPDQZEIpXt
v9N99Z4X4nxzf/muxwTI8EwC37hO+AbAtpxaKVV93wbNmUv1wJhyyksQGNjAnihW
jak93zq2JwTye+IuXXkAxxZg4t4NgkXrLpZD04xRMgtoxTbDiYvsrV+3tjc0Jkqe
YwZvsb4jKQyCJvg27OjHt2ENnP7gvwhztvFYxwtVhL7Tl6WecGbUhXSSodU1yhrK
4PkAybiuqFcR7plN/GfBzALt1FFM6AOz1AE5nu7HbRiXHIb4QwnljVN79k2e9Ox2
flAHhUbjvB7GPm9GrFj/6N59liti4Dy0mkD0PFNfWOg3+9VfNjWDa+VXuv74dtHo
AzhqmnHVomlg+nhIjSFWeoFmumJgnvQLiNeMiu3hUzlS72gPPgyFV1UUAsAWQbYy
xpWHMe1q8XvrlaEVjHygHb4qh0dqJ+tSikLbVKKewS0MtfWhWdKmorIsBdetwf79
QJmXTNPMAN6kLzUGl/eb
=HoiE
-----END PGP SIGNATURE-----

--=_zucker.schokokeks.org-12944-1469809534-0001-2--
