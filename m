X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1943" "Thursday" "5" "May" "2016" "13:03:36" "+0200" "Hanno =?UTF-8?B?QsO2Y2s=?=" "hanno@hboeck.de" "<20160505130336.7557b73b@pc1>" "55" "Re: [oss-security] broken RSA keys" "^Date:" nil nil "5" "2016050511:03:36" "[oss-security] broken RSA keys" (number mark "        hanno@hboeck May  5   55/1943  " thread-indent "\"Re: [oss-security] broken RSA keys\"\n") "<20160505103405.GA25044@openwall.com>" ("<20160504124248.GA15148@openwall.com>" "<20160504172803.GA19393@openwall.com>" "<CAP9m6YeT=Vo1WQ4Jqn1QV-Cp6mBQ3EwWQ5p_=Rm4P3Na3aGcGw@mail.gmail.com>" "<20160505103405.GA25044@openwall.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 14103 invoked by uid 550); 5 May 2016 11:03:49 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 14083 invoked from network); 5 May 2016 11:03:49 -0000
Message-ID: <20160505130336.7557b73b@pc1>
In-Reply-To: <20160505103405.GA25044@openwall.com>
References: <20160504124248.GA15148@openwall.com>
	<20160504172803.GA19393@openwall.com>
	<CAP9m6YeT=Vo1WQ4Jqn1QV-Cp6mBQ3EwWQ5p_=Rm4P3Na3aGcGw@mail.gmail.com>
	<20160505103405.GA25044@openwall.com>
X-Mailer: Claws Mail 3.13.2 (GTK+ 2.24.30; x86_64-pc-linux-gnu)
Mime-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512; protocol="application/pgp-signature"; boundary="=_zucker.schokokeks.org-28496-1462446219-0001-2"
Date: Thu, 5 May 2016 13:03:36 +0200
From: Hanno =?UTF-8?B?QsO2Y2s=?= <hanno@hboeck.de>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] broken RSA keys
To: oss-security@lists.openwall.com

--=_zucker.schokokeks.org-28496-1462446219-0001-2
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

On Thu, 5 May 2016 13:34:05 +0300
Solar Designer <solar@openwall.com> wrote:

> On Wed, May 04, 2016 at 09:18:26PM -0400, Stanislav Datskovskiy wrote:
> > older versions of GPG
> > will regard the bottom 32 bits of a modulus as the 'fingerprint',
> > rather than performing a hash.=20=20
>=20
> Are you sure?=20

https://tools.ietf.org/html/rfc4880

"V3 keys are deprecated.  They contain three weaknesses.  First, it is
relatively easy to construct a V3 key that has the same Key ID as any
other key because the Key ID is simply the low 64 bits of the public
modulus."

I had forgotten about that, but it probably also explains the two
pre-2000 keys with small factors I found.

--=20
Hanno B=C3=B6ck
https://hboeck.de/

mail/jabber: hanno@hboeck.de
GPG: BBB51E42

--=_zucker.schokokeks.org-28496-1462446219-0001-2
Content-Type: application/pgp-signature
Content-Transfer-Encoding: 7bit
Content-Description: OpenPGP digital signature

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v2

iQIcBAEBCgAGBQJXKyiIAAoJEKWIAHK7tR5CVKoQAK1ALNJ2Jf9m5gkr6+ZLPJLU
UVVH5PeYGkOxQh1dG4s6BmXPOHUXjx1A0nFf7lD+rPz7Daign3JpzoMtcPjs0L0l
Tw/oGb4jTwdRJ13jETdlsHnqYRBLLYO25nSt6wUmA7lVouXSifWaZpNn0/vHCrZ8
2gxC9eEfKVtvBX60oTNbaZCPyOD4utQNB/QjQUUtPfjY6q9wioHA24bGPImdzFqG
PLMY3tS7RtB9TQhjW5QsGXzOzEGTmLzL6i7Mih8Ype/txk2DeZ4FvNWvr3fN5SC9
CBCS7P3xnuCxXS9tnpYsu1jJbSPndS1hnQf2mB35Z0VIzkEXTRdkOnfQ6rLmDMQd
73mA0stC393z9QITtDCJhWzzaZSlZ9DUb/ATItwlWxtb1JZNXTui2xFss/rJrTGJ
KcYjRXvBOXY6fo5jBGvXBLZngEFMzzq7l0Jp+l0DYFcwgxy66JugeWfcgwhH6TSI
tSicd0b1ZGVaUCGaQm8ISSrEz9XRkuhUHHGNEPy/g1THd/HzTWn53DfGVQVESOoX
EyH8zMbYdo7nLkBrajSPuh+FbwJUwEl+batEFow/3B3zDyuHbkmKIg0NrueewcZv
Sij+g98c1jNV1IM0fDE6jR6JJjhIJNJCZ/sBCR4boV6vPwJKmnRWvla94H2vCDLG
JhQjui9W9nP08HkvnZD3
=WMBW
-----END PGP SIGNATURE-----

--=_zucker.schokokeks.org-28496-1462446219-0001-2--
