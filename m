Received: (qmail 3386 invoked by uid 550); 2 Oct 2023 12:06:03 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 3338 invoked from network); 2 Oct 2023 12:06:02 -0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=nodmarc.schlittermann.de; s=2020-06-19; h=In-Reply-To:Content-Type:
	MIME-Version:References:Message-ID:Subject:To:From:Date:Cc:
	Content-Description:Content-ID:Content-Transfer-Encoding:Resent-Cc:Resent-To;
	bh=VJ7/Y5vTs13ShrtFmsyrbZybZEsBLNIB2nXFYemgxRA=; b=aTmaX7L/9zRs0r4CswPT22HDIJ
	6cijfWis6l8LkygnvPtPzGL0q0nVW+f8v4nrH4VMfIiXVIE640iCmfei/5gPIQBOmfETTd+qaLmj4
	AGaLiCkVc1o9b7mBUCH6wZ+euEyNVXYFs6t79b6Vb/f6alYqEe7aBPxRXvlG8z3bTGIerNCp4iU+W
	W2+UtGatbdGjWaWz3/0HNXBMtOxS1mBtw2LXc6/4o0DRZh9LC3x7aLaLX9cRGHbkdHbadW27hMPNZ
	nNdk8r5TRvsV+bn3oE2toJyGctjEo9G8jHsVegE3Vrr1865Ta/ncuSukB6O67qu/bMp9lmpfgDvZD
	BGPOXvfA==;
Date: Mon, 2 Oct 2023 14:05:50 +0200
From: Heiko Schlittermann <hs@nodmarc.schlittermann.de>
To: oss-security@lists.openwall.com
Message-ID: <ZRqyHsEDQ2YQNy8A@jumper.schlittermann.de>
Mail-Followup-To: oss-security@lists.openwall.com
References: <7b2e3fb3afc05aa39864e62b0c87a631b746f5c7.camel@runout.at>
 <ZRb180+B34Wmg1IM@jumper.schlittermann.de>
 <ZRmjAky/SBs4aCIw@jumper.schlittermann.de>
 <ZRnTNhtSBmN7GFfL@jumper.schlittermann.de>
 <ZRqLs+ZoggKAcxBx@jumper.schlittermann.de>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="Adxhg3YYzB+XmCJu"
Content-Disposition: inline
In-Reply-To: <ZRqLs+ZoggKAcxBx@jumper.schlittermann.de>
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
Subject: Re: [oss-security] Exim4 MTA CVEs assigned from ZDI

--Adxhg3YYzB+XmCJu
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Dear Exim Users,

we released the available fixes for the issues mentioned in the recent
CVEs. We're very sorry for any inconvenience.

See this link for a summary: https://exim.org/static/doc/security/CVE-2023-=
zdi.txt

Distribution points:
--------------------
- git://git.exim.org
  branches:
  - spa-auth-fixes (based on the current master) [commit IDs: 7bb5bc2c6 051=
9dcfb5 e17b8b0f1 04107e98d]
  - exim-4.96+security (based on exim-4.96) [gpg signed]
  - exim-4.96.1+fixes (based on exim-4.96.1 with the fixes from exim-4.96+f=
ixes) [gpg signed]
  tags:
  - exim-4.96.1 [gpg signed]

- tarballs for exim-4.96.1: https://ftp.exim.org/pub/exim/exim4/ [gpg signe=
d]

GPG signatures are made by me (hs@schlittermann.de, or Jeremy Harris
jgh@wizmail.org).

For cross-verification the SHAX sums follow:
SHA256 (exim-4.96.1.tar.bz2) =3D 26bbcd4f45483c7138912b4bd31022aee8abf8ac7c=
dff55839d7e2a9e4c60692
SHA256 (exim-4.96.1.tar.gz) =3D 6d06845e07c699e7dabbe1ca1edf23fe8b17083dc9f=
e0736f0b4a90351ac708e
SHA256 (exim-4.96.1.tar.xz) =3D 93ac0755c317e1fdbbea8ccb70a868876bdf3148692=
891c72ad0fe816767033d
SHA256 (exim-html-4.96.1.tar.bz2) =3D 42084c0fe3cc430eccd598beb5dff3c774292=
6a4a6c92d44d6836480757e1b72
SHA256 (exim-html-4.96.1.tar.gz) =3D 9c2d7de709def8e44b200db74b59777e6fdf28=
11718ff3f3ba75f1e006812e6a
SHA256 (exim-html-4.96.1.tar.xz) =3D 745d73e6d17fddbd0c92e55ab134ba691363ee=
583604038bc2fd551c70acbc6c
SHA256 (exim-pdf-4.96.1.tar.bz2) =3D 89b532da12560d4c3dbcada1c96d07ca0b7ae2=
1af61c3798eada715acf081ae7
SHA256 (exim-pdf-4.96.1.tar.gz) =3D b4b1d6f32ea04e44370b5de38e961c2d16580b0=
89839bb1e1416e95be05bfd0e
SHA256 (exim-pdf-4.96.1.tar.xz) =3D 510c793e6b4122fa2312eaa697d90d8be4b5f84=
80977c3babdb35d5c1e8cfe79
SHA256 (exim-postscript-4.96.1.tar.bz2) =3D 7369e423b4f5b6557483da7cbd29001=
0fdffa4ade3afa0262a47416841d47bc9
SHA256 (exim-postscript-4.96.1.tar.gz) =3D 3ec107687f6799f8798edecb10cc4ce4=
5cc74aec8ed2356a87754b12a1c43782
SHA256 (exim-postscript-4.96.1.tar.xz) =3D e6332d2a26cd68223d8e73180b95f63f=
92dc781090dccb22af2c8f1991592824
SHA512 (exim-4.96.1.tar.bz2) =3D 2475437b48a266b2e453808a01320fe4df499bb9e3=
e7d41b6283f369cfa72602a02baa9a1bcdc630987a35da9db47e09fa682dca31748f07f8bde=
8403d636a22
SHA512 (exim-4.96.1.tar.gz) =3D 3c2d387686e0b1b4d4e06718eebb5a53b6944dd818a=
bf3f7a7d3cd1898557dac302708f5f9e2a09223cf7cb8d34b0234c1763eab9b2182fd1d9593=
012add02d9
SHA512 (exim-4.96.1.tar.xz) =3D ef1a0e57c59cdf4e915b3ac5dcdbc69f565b14dd92b=
0527f6796b2c46a9ec34f991f9790fb4171c99417f7e482cdd62d77e780cc71fab227c8bed8=
76103f7fdd
SHA512 (exim-html-4.96.1.tar.bz2) =3D 56fe39f66e238100e0ca62f19f08703176471=
cfccdb9c95368fd219f043c96da9da512418e10224514461302e1f25af0254bf810081c8b6e=
dfe676196ffbb743
SHA512 (exim-html-4.96.1.tar.gz) =3D 36fea45df417e87ee7d5676ca5347d7e28cb5d=
b70d583cf7471108a9b6fbedfdaa34793063f577dccdd9e62a8617380cb89f5f4d1891a4d05=
105d78655b7e588
SHA512 (exim-html-4.96.1.tar.xz) =3D 5519bf2056c8b4018a2e3a2d9afca0e0b19789=
90d3789be421d097bcae000d2d38205cd61e67bd83c27036376613c6ba69c993b6567adf3b5=
7fdd642e9db1cc8
SHA512 (exim-pdf-4.96.1.tar.bz2) =3D aefc9b6fe83c6cd74d87e7c4c448957f7bf76e=
c9fb94ff1620512906e84ddfae4f9445247b228d2231c6faf71e35ae0a2bf0cdcfb453bc622=
95694e22c597d09
SHA512 (exim-pdf-4.96.1.tar.gz) =3D 3f7ab2a405ebe5c2b027039dc23864bced07f75=
7f4bda2e283b938e9786aa18c70f167990c38e85bb5cc55b433bb470ed7acb04d5a9a732eab=
5dffe28d07e1ee
SHA512 (exim-pdf-4.96.1.tar.xz) =3D d39ee2f9a05326809a6e8454a108d717838dacf=
a42c2cade72f5937b1b44d70e70152fa75f4b4e9548cd4198d54f8a8c1323e14d7d1f9a0a23=
c99a53db1001b0
SHA512 (exim-postscript-4.96.1.tar.bz2) =3D 83b4f3d686d62e18da90b25d5ed2ab2=
ca5ff709ea16887f35a0e45dcf0ba139c02f5171008ae26879dd598a0f9d25bdc5851066375=
006d0a004b6a36d0ee957e
SHA512 (exim-postscript-4.96.1.tar.gz) =3D dceb5f9350dbba42c4fcffb03248f7d3=
951d3cb8bba759b8e3d4e3cd69651ea5db0b8a692b93e2be2958ad01865efbf2dd29b5ace72=
058ceb2aabc17451b6834
SHA512 (exim-postscript-4.96.1.tar.xz) =3D 788fc9c48955ef6eb497f64bdcc75812=
acebe144fcb5a8b773f5a03ced66be4842f8b3e9572e0dc5d625e0de4274cefa13ae708bb8e=
df9ee883795271d77db82

    Best regards from Dresden/Germany
    Viele Gr=C3=BC=C3=9Fe aus Dresden
    Heiko Schlittermann
--
 SCHLITTERMANN.de ---------------------------- internet & unix support -
 Heiko Schlittermann, Dipl.-Ing. (TU) - {fon,fax}: +49.351.802998{1,3} -
 gnupg encrypted messages are welcome --------------- key ID: F69376CE -

--Adxhg3YYzB+XmCJu
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEE0L/WueylaUpvFJ3Or0zGdqa2wUIFAmUash0ACgkQr0zGdqa2
wUIiTgf/YHbgNV5CqOifLoRTAFfRRxCo8me1EiaTdHAySfpGHmYDO2546eDXxE7O
lAIlc4lORzRaLwbdd52aXE5xqKM79/5PatQM62ORsSAZhs4Z7NKOfE9D6j6+6byR
dg9Lxzfqqb844vCDku9Zx2oQKoJ6vWcfOmsYvAms58OPMs2rcq6c0XAaqs5Fg31B
uTWsAm4uxn8clgbzzMyhty66uI11qPrzzKGRBm9uOm8kWFEMb18jWVMPRnjvPL7Z
BiOagbCmUcwignWDhNufhLNalmspYdgK5Kee751hFwGJzORQvTKgpUz3HvxuEaIG
ZmAaEWhG7XZJYcTCOF26MUxBFjimcg==
=4p6K
-----END PGP SIGNATURE-----

--Adxhg3YYzB+XmCJu--
