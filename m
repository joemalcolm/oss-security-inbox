Received: (qmail 13631 invoked by uid 550); 15 Oct 2023 16:14:35 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 13601 invoked from network); 15 Oct 2023 16:14:35 -0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=nodmarc.schlittermann.de; s=2020-06-19; h=In-Reply-To:Content-Type:
	MIME-Version:References:Message-ID:Subject:To:From:Date:Cc:
	Content-Description:Content-ID:Content-Transfer-Encoding:Resent-Cc:Resent-To;
	bh=gnRFPb3CAtxTf6HUWyRe+GbP6Ts9DktzRHJE0dSLQ2I=; b=gO8wI/2qHbQJ+vFt2xF04ZtWnB
	WB1cpq2eIFdErBBaNVYEMa/QnieUPyOTOKn7Z2mjZUTNCXWdjZXc0Ndaj9+h03F0G+jUrbSLzSgkh
	prK2MaMpv4ODuV3b5WZwdxbfEvzChqmrlSw47cYJluQKO25CeMwDRoqAVqP7gRqP/QwnFolXsblLu
	qa2ZsAamWHJ3SAu0yrd0jD6QiAFFF6u7lkeW+jxgi2xI3GGptRWnrhtUnttWe9l35K3aZKvU8SAOP
	Lti0o9Arl0NgR84S563FMqr4xI6uB2Vzi/QDmoy0FGhLuSfns07rLEl1xzMnffr/z6BVf9jgjKxLR
	Ehn97w8A==;
Date: Sun, 15 Oct 2023 18:14:22 +0200
From: Heiko Schlittermann <hs@nodmarc.schlittermann.de>
To: oss-security@lists.openwall.com
Message-ID: <ZSwP3jgBH4u2pkBV@jumper.schlittermann.de>
Mail-Followup-To: oss-security@lists.openwall.com
References: <7b2e3fb3afc05aa39864e62b0c87a631b746f5c7.camel@runout.at>
 <ZRb180+B34Wmg1IM@jumper.schlittermann.de>
 <ZRmjAky/SBs4aCIw@jumper.schlittermann.de>
 <ZRnTNhtSBmN7GFfL@jumper.schlittermann.de>
 <ZRqLs+ZoggKAcxBx@jumper.schlittermann.de>
 <ZRqyHsEDQ2YQNy8A@jumper.schlittermann.de>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="SP/9ffrwp7jPdMa4"
Content-Disposition: inline
In-Reply-To: <ZRqyHsEDQ2YQNy8A@jumper.schlittermann.de>
Organization: schlittermann -- internet & unix support
X-Face: =y#&-VlCH8uT|8#-#JE_^c<:+qPbYxFD`}8`m)xjyA$93tpwm-vKsa(V,0?906(2VIVNQbU
 QzD%zhE+~-AA?\v-v.HY6]ebO4_$vY`l|||Q!EZT5*Xx/>Fj{8E_a.;;#<4S$>&T%n5()2Yt=R5FSC
 y:Na&@T{Rf`kPq^'ffPFA%`mP~>%-LU$d*]]{-%>j={&MsMND.">]H)&#AoSI~(U8Jk;v*;,Pf+l85
 X?H&`
X-Telegram: @HeikoSchlittermann
X-Threema: T5RPWMSS
X-Signal: +49.172.7909055
X-Phone: +49.172.7909055
X-SMS: +49.172.7909055
X-GPG-Fingerprint: E5CA 331D 44AB 8E4C 806F  DBEE 2610 1B62 F693 76CE
X-GPG-Key-ID: F69376CE
Subject: [oss-security] New Exim security release 4.96.2 (was: Exim4 MTA CVEs assigned from
 ZDI)

--SP/9ffrwp7jPdMa4
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Dear Exim Users,

today we released 2 more fixes for the issues mentioned in the recent
CVEs.

The current latest official release is now: exim-4.96.2

- We fixed issues with the proxy protocol.
- We fixed issues in the `dnsdb` lookup subsystem.
- The remaining issue with `libspf2`, raised as CVE against Exim, can't
  be addressed by us, as it seems to happen inside the library's code.
  Library fixes are available.

@Users: Please update your installations.
@Distros: We don't provide a grace period for you now, as we consider
the issues quite public already and thus we do not want to put the fixes
under embargo for additional days.

See this link for a summary: https://exim.org/static/doc/security/CVE-2023-=
zdi.txt

Distribution points:
--------------------
- git://git.exim.org
  tags:
  - exim-4.96.2 [gpg signed]
  branches:
  - exim-4.96+security (based on exim-4.96) [gpg signed]
  - exim-4.96.2+fixes (based on exim-4.96.2 with the fixes from exim-4.96+f=
ixes) [gpg signed]

- tarballs for exim-4.96.2: https://ftp.exim.org/pub/exim/exim4/ [gpg signe=
d]

GPG signatures are made by me (hs@schlittermann.de, or Jeremy Harris
jgh@wizmail.org).

For cross-verification the SHAX sums follow:
SHA256 (exim-4.96.2.tar.bz2) =3D a7b9c247a8dcdf72b37ef4a6db0a744f6d34f65b40=
ef376265ddeb35610bb432
SHA256 (exim-4.96.2.tar.gz) =3D a0e5fb9510d4e07704d1f7ca8b432ae069d3c522b31=
ce7ef5f7b4998ae777a53
SHA256 (exim-4.96.2.tar.xz) =3D 038e327e8d1e93d005bac9bb06fd22aec44d5028930=
d6dbe8817ad44bbfc1de6
SHA256 (exim-html-4.96.2.tar.bz2) =3D cbe648c98986be31e3f89c9546b4cf28e7844=
3c7a2af3acf6a67fa2aaa990ae6
SHA256 (exim-html-4.96.2.tar.gz) =3D 34ea64215a6587b65493833b8bb710ff3aec59=
e3ea0c260902f4bbbda74d26b9
SHA256 (exim-html-4.96.2.tar.xz) =3D b7bc81cc30b4815f2dcb552c381e039eb5f9c9=
7a357d1cb1dfa6f9814a933023
SHA256 (exim-pdf-4.96.2.tar.bz2) =3D d0dba21931958a9bbc31d08633db4b15424ef8=
b9dd601364ded240cda9ecf6f9
SHA256 (exim-pdf-4.96.2.tar.gz) =3D 9229b71e1bb123ed802d4c046896728f717a6e5=
aa24091fb71760dc603932de0
SHA256 (exim-pdf-4.96.2.tar.xz) =3D ff97856b90aa9653d5e46d2e93aa994009c4c71=
80ee1fbc9f95ea44b0e9adcaa
SHA256 (exim-postscript-4.96.2.tar.bz2) =3D 23f8ae976a13cdae8eb041af589255a=
730881035b63158d112e14a268c9b0c31
SHA256 (exim-postscript-4.96.2.tar.gz) =3D 9fa21bee7f9ecd8052301b1061f9a3b2=
e7d7b4452a5fe5826835f1f8566721e0
SHA256 (exim-postscript-4.96.2.tar.xz) =3D c35d4888d2cccc1e32561376d81f0592=
cf2309ed2ca23aae4d171169ee57522b
SHA512 (exim-4.96.2.tar.bz2) =3D 97041a51dae3f0840bc4b225bc63dbbe47924abcf4=
00edd751545b687b608bedc8ebabf5ee6ae60d03ee93c74697cd58710fa48940d4df0cd96c0=
683b1f29da0
SHA512 (exim-4.96.2.tar.gz) =3D 4ff50a595936030e0ed070307f1e45bdc7316a1adce=
9a29554f60490e292b14332945d7b5b3c7bd0e2293873973eda6dd9b9f5b5cdfcf6c020c4ac=
1a07caa999
SHA512 (exim-4.96.2.tar.xz) =3D dc9f6a114e64ac826489edff88d50a24195b6471442=
8e691c10a7bfb119b3ebb6455bf80cbb34dfd0a4e2e44cbde72effb009357a8e0a6065e512f=
e32092e3ed
SHA512 (exim-html-4.96.2.tar.bz2) =3D 2a70b8ab5d690dfa70bbd780200eb6e37e59e=
14ee00a39958f4ba4c498da8957692483e404bd3303272141bce2342e579f2ef41a40b94316=
7792dfdb7f0818fa
SHA512 (exim-html-4.96.2.tar.gz) =3D 9265a4f7e9a5adc635f5e16be49af57eb50dfc=
911f8dc73e511d438cdc02d2ba9ab95ef2b2eb7b786b04ac301a905bab6b3ae9acf692f9e35=
a577d70938852bc
SHA512 (exim-html-4.96.2.tar.xz) =3D 081b146a8d570edba9ffb41f927aead7237ca9=
228766a824328d11c06fd9765f554a2e1bad81d910a52d111dc8781a003bb8e3c404bffe883=
9c19bb6a3c9f95a
SHA512 (exim-pdf-4.96.2.tar.bz2) =3D c9a997f206a9b9d0ca60da355a87de2e234e59=
e2442d915fd3823d1e50fbb69af9f91503a8eafead37c110d217fdf4b4a5c6c314c3f02b891=
5c082d6cdb7130b
SHA512 (exim-pdf-4.96.2.tar.gz) =3D f4c4e59ffbe4b6a353144bee97fd1890826739f=
ba5aad5978eb5d4555534977c78dd3cfc6b3ad87880308a0faffc36df0ffb4f8a97583b8974=
7f33500f89335d
SHA512 (exim-pdf-4.96.2.tar.xz) =3D c35eea4ab5510bba50d22813b28c9d2f5e4e2fe=
d76993693b997f2090024dde674d58dffe044cb64642bf57b83fcae3bfc3dbcae43288fae11=
692ee49374df74
SHA512 (exim-postscript-4.96.2.tar.bz2) =3D 40f191190f8e5d459dd777f8a46f1e2=
47f65e9b2d416ff951197756f2272178b8e533c26141f4190e41a4d91c6696a084a2f0136cf=
34b1a0fb2f904f978f942f
SHA512 (exim-postscript-4.96.2.tar.gz) =3D 88df4712df5447ed3d5e2fd9b752e4d8=
0ec5a03a3c1dbe2ca7ea88ce90dbed8e07d9116ce0d58219de4f99c3b025f1a42b9780bc03b=
8b548acc8e5f0c83de21c
SHA512 (exim-postscript-4.96.2.tar.xz) =3D 64182092b7e9bd59270ce88131cd3853=
def5ccfb3cb3a5384c4d88761b16795ca209a22200f28b21e4d9ecc0b3767ca4284279c75d4=
9f9829fcc4f51cba9bc1f

    Best regards from Dresden/Germany
    Viele Gr=C3=BC=C3=9Fe aus Dresden
    Heiko Schlittermann
--
 SCHLITTERMANN.de ---------------------------- internet & unix support -
 Heiko Schlittermann, Dipl.-Ing. (TU) - {fon,fax}: +49.351.802998{1,3} -
 gnupg encrypted messages are welcome --------------- key ID: F69376CE -

--SP/9ffrwp7jPdMa4
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEE0L/WueylaUpvFJ3Or0zGdqa2wUIFAmUsD94ACgkQr0zGdqa2
wUL5eAgAsamvUSDwY/6WnFan87FXNDuYlotmsskQxSVMDgo4RP0WboCqLOuUhPGD
6ZJtl22/K2gBzdRk00G8i3tZGWtoUdyKzTuRC8Ta7lhB/63YN6qeUJjmxbyLfrG8
h9NejAOl5moybCQHLg1W6PUkVmZd1EEG15hZcYrzemUwIIpfpfGR4fPgfH2+Cd6g
nrEpKZHMGPrlyw1o4rq6c5vCwoB6gt184kJAeO3B1RMW+MkWFi3yJfh/uRDrtomS
IO5ynWyxh+zbdzDhN28QuymKxLiIWPXvcQPr6zh8T6H2pVQY0ON4K1eEUAMELG7S
eg4sTZss1BRziiOFx+iRt5U21eeVuA==
=zpmH
-----END PGP SIGNATURE-----

--SP/9ffrwp7jPdMa4--
