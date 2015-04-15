X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1519" "Wednesday" "15" "April" "2015" "20:56:41" "+0200" "Hanno =?UTF-8?B?QsO2Y2s=?=" "hanno@hboeck.de" "<20150415205641.652c8667@pc1.fritz.box>" "49" "Re: [oss-security] Problems in automatic crash analysis frameworks" nil nil nil "4" "2015041518:56:41" "[oss-security] Problems in automatic crash analysis frameworks" (number mark "        hanno@hboeck Apr 15   49/1519  " thread-indent "\"Re: [oss-security] Problems in automatic crash analysis frameworks\"\n") "<CAJ_zFkJw7hNxGp0PNmQbH0suVwfkgzbCsvs2Sv1OdxD+UBiraw@mail.gmail.com>" ("<CAJ_zFkJw7hNxGp0PNmQbH0suVwfkgzbCsvs2Sv1OdxD+UBiraw@mail.gmail.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 28031 invoked by uid 550); 15 Apr 2015 18:56:34 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 28009 invoked from network); 15 Apr 2015 18:56:33 -0000
Message-ID: <20150415205641.652c8667@pc1.fritz.box>
In-Reply-To: <CAJ_zFkJw7hNxGp0PNmQbH0suVwfkgzbCsvs2Sv1OdxD+UBiraw@mail.gmail.com>
References: <CAJ_zFkJw7hNxGp0PNmQbH0suVwfkgzbCsvs2Sv1OdxD+UBiraw@mail.gmail.com>
X-Mailer: Claws Mail 3.11.1 (GTK+ 2.24.27; x86_64-pc-linux-gnu)
Mime-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512; protocol="application/pgp-signature"; boundary="=_zucker.schokokeks.org-18877-1429124181-0001-2"
Date: Wed, 15 Apr 2015 20:56:41 +0200
From: Hanno =?UTF-8?B?QsO2Y2s=?= <hanno@hboeck.de>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] Problems in automatic crash analysis frameworks
To: oss-security@lists.openwall.com

--=_zucker.schokokeks.org-18877-1429124181-0001-2
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

On Tue, 14 Apr 2015 06:30:41 -0700
Tavis Ormandy <taviso@google.com> wrote:

> WORKAROUND
>=20
> I highly recommend setting `sysctl -w kern.core_pattern=3Dcore`.

Typo, this must be=20
sysctl -w kernel.core_pattern=3Dcore

(kernel instead of kern)

right?

--=20
Hanno B=C3=B6ck
http://hboeck.de/

mail/jabber: hanno@hboeck.de
GPG: BBB51E42

--=_zucker.schokokeks.org-18877-1429124181-0001-2
Content-Type: application/pgp-signature
Content-Transfer-Encoding: 7bit
Content-Description: OpenPGP digital signature

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v2

iQIcBAEBCgAGBQJVLrRpAAoJEKWIAHK7tR5C1N0P/RoLW91XKGTue6jxUehsWguy
jCw71BzKxlyo4zx3ExaW7RRscz7cLut9JfAJuZYd1VaYk2W/zzbfSIF3tz3RC8ou
prkUcU/faoAiJ7HYJJ+GZyioXn6qDrhxhZF+L76SCmOYlcadamA+lrEAiKx1I87l
wye5+4eiD1+2QryPjZbLkQ1xpQv6FXskRgbU62+Swbi3FxI36JDbqi6MNO7aySHU
3s9RHl+X3GBZg8vtXwTNjmgvMos3CxiWEwpPmRN4xQMvFdLFhogTqylPOrx393V1
mUUjCCeWHTLsUaoorGQ4AIzEnu6BjXi/qaPbOui0L8Z2/rgQazkph90g5YWISG1O
ozngFsP+Jyx+18J5GcNgFxjrVFzxf3W6lHecwR+xmr1/hY4BxjM+rkn3pxeoshdr
6/YJK98088+5ZfQhAp2hsFotZCUoRMJWn5PE1B5+8yZ+eqDHCTKXrNb+9swfcuqE
31GqNdV4ZyCa21XnWC+uPJ5k2xISidVtMHv2ZHwWl22ukcPiezcQ1tTsaZn9058j
jHXq709is5Xx6oc03+ak9AQtXlhZKrl7yvbWSlsRFyiGipYGBB45cYLbG7xxA+qM
8TCSH8550w1nLC4gLL8Kol66/Z5Pzt7FNtBuG/ujrnMUr2iDgXsPmMR/t5ziVbw7
oDzA7TMyrtj65hsquin2
=kn/A
-----END PGP SIGNATURE-----

--=_zucker.schokokeks.org-18877-1429124181-0001-2--
