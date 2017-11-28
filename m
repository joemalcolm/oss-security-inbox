X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["2182" "Tuesday" "28" "November" "2017" "22:43:59" "+0100" "Heiko Schlittermann" "hs@schlittermann.de" "<20171128214359.q4b7cmlxd4ayz7ct@jumper.schlittermann.de>" "59" "[oss-security] CVE-2017-16943 CVE-2017-16944 (Was:RCE in Exim reported)" nil nil nil "11" "2017112821:43:59" "[oss-security] CVE-2017-16943 CVE-2017-16944 (Was:RCE in Exim reported)" (number mark "U       hs@schlitter Nov 28   59/2182  " thread-indent "\"[oss-security] CVE-2017-16943 CVE-2017-16944 (Was:RCE in Exim reported)\"\n") "<20171125035912.GA20323@breadbox.private.spodhuis.org>" ("<20171125035912.GA20323@breadbox.private.spodhuis.org>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 3922 invoked by uid 550); 28 Nov 2017 22:00:23 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 21758 invoked from network); 28 Nov 2017 21:44:12 -0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=schlittermann.de; s=dd201504; h=In-Reply-To:Content-Type:MIME-Version:
	Message-ID:Subject:To:From:Date:Cc:Content-Description:Content-ID:
	Content-Transfer-Encoding:References::Resent-Cc:Resent-To;
	bh=MJ4bNTKbDGVi4FmBM409b/iXbsaUrE//tK3JwOT6euQ=; b=Rs6Rks85uPIAgvRVB0zOjYGhjO
	ThUzEmMGEycnv+8NAIEgdeorCiJaDGjLv87nJ9D6l/nOIHKsJ+htMClMtRkN/JrdkPeyXvqxw0UdY
	YMlyPAnChgaER9TYBvTNoLBMlplsaogei4iAj1IIBBenT/2ucX8676RBNLji8obR4f3I=;
Date: Tue, 28 Nov 2017 22:43:59 +0100
From: Heiko Schlittermann <hs@schlittermann.de>
To: oss-security@lists.openwall.com
Message-ID: <20171128214359.q4b7cmlxd4ayz7ct@jumper.schlittermann.de>
References: <20171125035912.GA20323@breadbox.private.spodhuis.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="wwnk7o5shp7xpcdc"
Content-Disposition: inline
In-Reply-To: <20171125035912.GA20323@breadbox.private.spodhuis.org>
Organization: schlittermann -- internet & unix support
X-Face: =y#&-VlCH8uT|8#-#JE_^c<:+qPbYxFD`}8`m)xjyA$93tpwm-vKsa(V,0?906(2VIVNQbU
 QzD%zhE+~-AA?\v-v.HY6]ebO4_$vY`l|||Q!EZT5*Xx/>Fj{8E_a.;;#<4S$>&T%n5()2Yt=R5FSC
 y:Na&@T{Rf`kPq^'ffPFA%`mP~>%-LU$d*]]{-%>j={&MsMND.">]H)&#AoSI~(U8Jk;v*;,Pf+l85
 X?H&`
X-Telegram: @HeikoSchlittermann
X-Phone: +49.172.7909055
X-GPG-Fingerprint: E5CA 331D 44AB 8E4C 806F  DBEE 2610 1B62 F693 76CE
X-GPG-Key-ID: F69376CE
User-Agent: NeoMutt/20170113 (1.7.2)
Subject: [oss-security] CVE-2017-16943 CVE-2017-16944 (Was:RCE in Exim reported)

--wwnk7o5shp7xpcdc
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Phil Pennock <oss-security-phil@spodhuis.org> (Sa 25 Nov 2017 04:59:12 CET):
> In Post-Thanksgiving mail-catchup, I see that the Exim Project was
> gifted with a couple of surprises in our public bugtracker on Thursday
> morning.  Complete with proof-of-concept small Python script.
>=20
> I've requested CVEs, don't have them yet.
>=20
> My mail to our announce list:
>   https://lists.exim.org/lurker/message/20171125.034842.d1d75cac.en.html
=E2=80=A6
> Public bugtracker links:
>=20
>   https://bugs.exim.org/show_bug.cgi?id=3D2199
>   https://bugs.exim.org/show_bug.cgi?id=3D2201

Both issues are fixed now.

    CVE-2017-16943  (RCE)       Exim Bug 2199
        master:             4e6ae6235c68de243b1c2419027472d7659aa2b4
        exim-4_89+fixes:    4090d62a4b25782129cc1643596dc2f6e8f63bde
    Fix done by Jeremy Harrys
=20=20=20=20=20=20=20=20

    CVE-2017-16944  (DoS)       Exim Bug 2201
        master:             178ecb70987f024f0e775d87c2f8b2cf587dd542
        exim-4_89+fixes:    4804c62909a62a3ac12ec4777ebd48c541028965
    Fix done by me.


    Best regards from Dresden/Germany
    Viele Gr=C3=BC=C3=9Fe aus Dresden
    Heiko Schlittermann
--=20
 SCHLITTERMANN.de ---------------------------- internet & unix support -
 Heiko Schlittermann, Dipl.-Ing. (TU) - {fon,fax}: +49.351.802998{1,3} -
 gnupg encrypted messages are welcome --------------- key ID: F69376CE -
 ! key id 7CBF764A and 972EAC9F are revoked since 2015-01 ------------ -

--wwnk7o5shp7xpcdc
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEE0L/WueylaUpvFJ3Or0zGdqa2wUIFAlod2J8ACgkQr0zGdqa2
wUL+7AgAo43gSDyDuufXJ/72MheguEe/RNuuo1zcoqkaVML3IKp1qOn+kz0X9Rsm
64dEalTB88Yzu2O2njUJE5qyN1wq+INZsa4oik7OcmxXvkaVwATONPWg6ah0eTwX
DLgOvEIOllJ9WRhHv4NdoKa+zAT4HZo6+SF5Ce4tyeT1p6sD+1bElbctn9g6qGLX
6rKFl5uv4uVE1D3KzzGd/mWZBl/vsZZaHIACoA2NUL86+FhGcVsoqtpJfC1vc6uU
X+6cah2nR6eXlgcG8PBZ99e4UTXzx3EOjKrTwiWq7zVIpPO+EVoN9jpohyxaN8Ju
iYghQxy8uHW/t+G3N5lNZN/wjQBKLA==
=SFdO
-----END PGP SIGNATURE-----

--wwnk7o5shp7xpcdc--
