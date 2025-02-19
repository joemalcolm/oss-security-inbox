Received: (qmail 17563 invoked by uid 550); 19 Feb 2025 22:07:12 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 17542 invoked from network); 19 Feb 2025 22:07:12 -0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=nodmarc.schlittermann.de; s=2020-06-19; h=Content-Type:MIME-Version:
	Message-ID:Subject:To:From:Date:Cc:Content-Description:Content-ID:
	Content-Transfer-Encoding:In-Reply-To:References:Resent-Cc:Resent-To;
	bh=/6qN/CtBXQYKMYfZJgFFPyfviZlBvGx4uRPqJ2l9UyE=; b=fv2gjirEjzMYS5vpML58Gqamf/
	r5QQUnhtCrpGKNhz6RnaEZpb0t6oSeLHWFcSfqRAltO6ShmmaSoq53hIX36gMRYbroYzFltGk8UAm
	JqfsDgcwUV0tVv49CO+p4WihUYDHZlHAnzj/HS1kh8EeXSFr6+dcx2+KX9xondNRfiNOjZ74TvKwX
	9WJmnxFKGeoVDrIikA+eiApRS23nGkJTx7v8hZZaavR3iSa51Mnq820UiFwoQd/tk6pWuc0yWRAtO
	tW6/SGbNh1dsun8URvSYgf6dSB1WzcNGiI/lVeUzq2bfaEXQW088xR74zRPuBh5HPR2kBp3X5M1wu
	nIkZ5MAg==;
Date: Wed, 19 Feb 2025 23:07:02 +0100
From: Heiko Schlittermann <hs@nodmarc.schlittermann.de>
To: oss-security <oss-security@lists.openwall.com>
Message-ID: <Z7ZWBkGnmycxYzGV@jumper.schlittermann.de>
Mail-Followup-To: oss-security <oss-security@lists.openwall.com>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="soSXjorzpaii0rxE"
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
Subject: [oss-security] Exim: CVE-2025-26794: upcoming security release

--soSXjorzpaii0rxE
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

CVE-2025-26794

Dear Exim users,

we got a vulnerability report and are going to release a security
release on Friday, Feb 21th, 2025, at 12:00 UTC (coordinated
release date).

Distribution packagers are informed already.

The reported vulnerability is limited to the current Exim version 4.98.
Older versions are not affected.

Please understand that we don't share any further details yet.

The new version 4.98.1 *will* be available

via Git (branch exim-4.98+fixes, tag exim-4.98.1):
  https://code.exim.org/exim/exim.git (master repo)
  https://code.exim.org/exim/exim/releases/tag/exim-4.98.1

  https://github.com/exim/exim.git    (mirrored repo)
  https://github.com/Exim/exim/releases/tag/exim-4.98.1

as tarball:
  https://downloads.exim.org/exim4/

Commits and tarballs are signed by me, with the same key that I'm using
to sign this message.

(In case you're building directly from our master branch: there are no
patches to the master branch yet.)

Thank you for using Exim.

    Best regards from Dresden/Germany
    Viele Gr=C3=BC=C3=9Fe aus Dresden
    Heiko Schlittermann
--=20
 SCHLITTERMANN.de ---------------------------- internet & unix support -
 Heiko Schlittermann, Dipl.-Ing. (TU) - {fon,fax}: +49.351.802998{1,3} -
 gnupg encrypted messages are welcome --------------- key ID: F69376CE -

--soSXjorzpaii0rxE
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEE3ZjZI1nenjwmY/KRaX8O3WgJn28FAme2VgIACgkQaX8O3WgJ
n2+Uxg//Xqe4MTmrHe6iyXE8zs0X3Fl0h/9AFDo4lzJTaZWkcYo7Ooo6LEndA3WM
hMWRHRoRLvFpzw4FTkADCfr/5MCG/xTa9IwTmMXJCo2O4GQwleseSfqIF9kkuxwF
oNkfcqPuoH60wbBpGl94D3ntAMygRLq6ooT1jKPnjxalDrfZtlwo0rLyNPqwH4vX
maiD2ECyNHU7wn2vOvzYsGrKn3V/59FZTTjALlMC8lbiCBEW5PjaO+pAIYMj/tUF
1gErw2GYAkgkqYtDSp4wCeFcauW201Hw4JgkUcprJwkB0Vvcsrt9hFDuvwBx5+Vc
kF+2oZQeyKk7wTmGvzt7bh4rfEKBZs9JcPEvrUiNS7RQdTPbHm7Gb+42fWQx5/b8
RKfGzRPBvxALvQ1aDe9Z08TQgEdt8caPINx+cvdETEOlxTK+mpcfstZ07tkqeqHQ
YlPepjxXImWlNgnMx7QowzjEeX26uEtrcLknTgghcjPyUUseF2O76+LnXHqP9pwq
CrQo0sx9AadckGyI1/brX1WXrfEf+fLiAF8SHA2XDCI7WFI18tJb5HehG+wTTJKa
ev2fBjRyH6zqddesaARS4iB9pBw0ICXbuZdTo2Zg8TCuBPdx6yrC/b39p7eoMnOC
ZD85JVRN0H/92/qx/egg/WH32YvREv0+bCX4ngQpEq+SL9RzIWI=
=ZpUD
-----END PGP SIGNATURE-----

--soSXjorzpaii0rxE--
