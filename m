Received: (qmail 9531 invoked by uid 550); 21 Feb 2025 21:36:01 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 9507 invoked from network); 21 Feb 2025 21:36:00 -0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=nodmarc.schlittermann.de; s=2020-06-19; h=Content-Type:MIME-Version:
	Message-ID:Subject:To:From:Date:Cc:Content-Description:Content-ID:
	Content-Transfer-Encoding:In-Reply-To:References:Resent-Cc:Resent-To;
	bh=H4LMH+bSsKVDZOASRw0vVnH7VgY9zWrdBu2qz9Hpdo0=; b=tZdRIvYl4cclEGy7B6yMKJIoI2
	KpoZaY1O8AxAo6uvUjwv6wdWtC/8xTU91o9VRbnaEBs4U0+8joQy4wGVrw0RowMjRn6ezd0WO/74a
	dsOb+zJ89ajTdiWv4oJEayli3+lxXal2imIu5Y8/EsKQ+UCdwjg1GxEBNK66Mza9E39S0482ebvxI
	6OmX2x7u4xGlHQ1/BKG4/jIe1MVmoe9WAWP1vIntt2qj+yozah1IG2podz0teRzQUPAl5DpKiu4yv
	BuorxMX28uAFHyLKmHD3zSkmDjYG3zfPZG6RBOq6OaswXdOk906jUN3XsOnNr0QDAuzkhPGV/45Ik
	p/F0IbnA==;
Date: Fri, 21 Feb 2025 22:35:45 +0100
From: Heiko Schlittermann <hs@nodmarc.schlittermann.de>
To: oss-security <oss-security@lists.openwall.com>
Message-ID: <Z7jxsQoV9FdncT-v@jumper.schlittermann.de>
Mail-Followup-To: oss-security <oss-security@lists.openwall.com>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="Sy7TxbjS0rU0nBX0"
Content-Disposition: inline
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
Subject: [oss-security] CVE-2025-26794: Exim: SQL injection

--Sy7TxbjS0rU0nBX0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hello,

today, 12:00 UTC we published an Exim security release: exim-4.98.1
For further details please see https://exim.org/static/doc/security/CVE-202=
5-26794.txt

    Best regards from Dresden/Germany
    Viele Gr=C3=BC=C3=9Fe aus Dresden
    Heiko Schlittermann
--=20
 SCHLITTERMANN.de ---------------------------- internet & unix support -
 Heiko Schlittermann, Dipl.-Ing. (TU) - {fon,fax}: +49.351.802998{1,3} -
 gnupg encrypted messages are welcome --------------- key ID: F69376CE -

--Sy7TxbjS0rU0nBX0
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEE3ZjZI1nenjwmY/KRaX8O3WgJn28FAme48Y0ACgkQaX8O3WgJ
n29EpxAAg8fdObHaIE0FquJLe4VW2GqVb3z9d3MKcm8qbiYtHSTmjTSuMBhnab93
gjrI+IPMKbUnq40H50zB5MvZhtPBesYZzlgO4xJvnTuOn3hAMNjaR2lL527+/KoH
r7iInWqLhMt1R5LmvWlJIP7kSCrAZ9M8/rhxI+wLHyXTbPOWOyfL/LjFhyennHI8
sALWMx4G8qMY2scbSK+tIksfxvcRMnDBo4kCtqz2VPEKZLA8RwSO8UcczvHU4Tix
6dcppWn0auzxMOhOC8xP/PqDcweXw4IZuv/hszoBRZTmghzQhgbKGl7vHUG7h+tt
qql17uGWn58++VCRBmmlWUW2cpDism9yTjb+KFCOpEaMjsGsy9VSP4zPGdmaMGmI
Io+QE+S+acavigE3aMqim9t/X7hpYo6JW7FT61rxq9q0IGemFdZvspoF7Xo/AQsT
h4uFHPpg7AsPtzXzFuZvHxjVR8YrLY/ZpCV1FoOUwqERkkF2Tx9vd9ZPr9laX+lM
FQUHxy/usY6HN3Kjdrt/JZ7EIBCmmP4U3/hc6vTI8IlHTqspujDQtWJ8UHtqz7ai
LXCZ1ADtGRhzOI+GrC+0kzGyHKI2m/bIT0P6FiVnZkgq/uQ1BAAqOC9gdFKBPXJ0
84Wh24l/PRZUqqhckJAO5s/SzvQuEXIVA+KYVTuCo3TasVRTTN0=
=R3b6
-----END PGP SIGNATURE-----

--Sy7TxbjS0rU0nBX0--
