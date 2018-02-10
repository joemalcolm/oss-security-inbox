X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1833" "Saturday" "10" "February" "2018" "11:25:49" "+0100" "Heiko Schlittermann" "hs@nodmarc.schlittermann.de" "<20180210102549.fpeskg2rxvxwjitd@jumper.schlittermann.de>" "51" "[oss-security] Re: CVE-2018-6789 Exim 4.90 and earlier: buffer overflow" "^Date:" nil nil "2" "2018021010:25:49" "[oss-security] Re: CVE-2018-6789 Exim 4.90 and earlier: buffer overflow" (number mark "        hs@nodmarc.s Feb 10   51/1833  " thread-indent "\"[oss-security] Re: CVE-2018-6789 Exim 4.90 and earlier: buffer overflow\"\n") "<20180207103943.wwijjdmnlzpp46lm@jumper.schlittermann.de>" ("<20180207103943.wwijjdmnlzpp46lm@jumper.schlittermann.de>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 11706 invoked by uid 550); 10 Feb 2018 12:16:20 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 12017 invoked from network); 10 Feb 2018 10:26:01 -0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=schlittermann.de; s=dd201504; h=In-Reply-To:Content-Type:MIME-Version:
	References:Message-ID:Subject:To:From:Date:Cc:Content-Description:Content-ID:
	Content-Transfer-Encoding:Resent-Cc:Resent-To;
	bh=kazcoZNcEcvFzNRwIPlAN5kwMwMqpzmat196JJnpLNc=; b=ASkTrxQAdEYSx57LPosEiOlpk/
	buE6HpVO2sOTjOe9QWqrkEDwH/AyOXJ0aG3mTde3HwaE3WpATl5PJR+UTBnS5l1rWYlqM3AIDMzEj
	C9LF6QIJ5xxS6R/L00kDiaLB1NMQig/GyMPncFeAIzwPzCcs+9lqkT1O3ujfq2XgClaM=;
Message-ID: <20180210102549.fpeskg2rxvxwjitd@jumper.schlittermann.de>
References: <20180207103943.wwijjdmnlzpp46lm@jumper.schlittermann.de>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="c2jbfubsqm2i4m3t"
Content-Disposition: inline
In-Reply-To: <20180207103943.wwijjdmnlzpp46lm@jumper.schlittermann.de>
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
Date: Sat, 10 Feb 2018 11:25:49 +0100
From: Heiko Schlittermann <hs@nodmarc.schlittermann.de>
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] Re: CVE-2018-6789 Exim 4.90 and earlier: buffer overflow
To: oss-security@lists.openwall.com

--c2jbfubsqm2i4m3t
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Heiko Schlittermann <hs@schlittermann.de> (Mi 07 Feb 2018 11:39:43 CET):
> CVE-2018-6789 Exim 4.90 and earlier
> =3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
=E2=80=A6.
> Next steps:
>=20
> * t0:     Distros will get access to our "security" non-public git repo
>           (based on the SSH keys known to us)
> * t0 +7d: Patch will be published on the official public git repo
=20
 t0 was 2018-02-08 17:00 UTC

As one distro failed to keep the embargo we need to cut the time
for the distros and we'll release the patch to the public today.

    2018-02-10 18:00 UTC

Sorry for the inconvenience, thank you for understanding and for using
Exim.

    Best regards from Dresden/Germany
    Viele Gr=C3=BC=C3=9Fe aus Dresden
    Heiko Schlittermann
--=20
 SCHLITTERMANN.de ---------------------------- internet & unix support -
 Heiko Schlittermann, Dipl.-Ing. (TU) - {fon,fax}: +49.351.802998{1,3} -
 gnupg encrypted messages are welcome --------------- key ID: F69376CE -
 ! key id 7CBF764A and 972EAC9F are revoked since 2015-01 ------------ -

--c2jbfubsqm2i4m3t
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEE0L/WueylaUpvFJ3Or0zGdqa2wUIFAlp+yKkACgkQr0zGdqa2
wUImTAgAzqbZbnw6aRwYDsa3HdTX5AqMKL6zDvop0pblvB+aeZMrHuXFeUIoZhYd
7Jq4IE0KjlUjbiEht3W5N3TogMAiowkjFcaA9ajviSkEAs/RMoCBBP+uv4etXMug
qun8aDqNMfLsCeFJRyJQPixMzclFu8rcdTmZ4rVKcMm/igaG0ogsgDH3xEd8RuwM
FG3c8OH+1yl131x+up4lGJghC1v6oUUj/G3gt2r2HbiIEg16lh2Cm4LtouEHR19G
9AJ8ZICYUIoAf9d4QCa+hsc9uxE/Dhz0E/kQsmOUa1kJyTkShND+CNdpS5hqCDwZ
b+eoHHw/lWH68F3O6V+81uhJK7F2WA==
=LOJy
-----END PGP SIGNATURE-----

--c2jbfubsqm2i4m3t--
