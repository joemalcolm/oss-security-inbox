Received: (qmail 18086 invoked by uid 550); 11 Dec 2025 14:56:48 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 18016 invoked from network); 11 Dec 2025 14:56:48 -0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=nodmarc.schlittermann.de; s=2020-06-19; h=In-Reply-To:Content-Type:
	MIME-Version:References:Message-ID:Subject:To:From:Date:Cc:
	Content-Description:Content-ID:Content-Transfer-Encoding:Resent-Cc:Resent-To;
	bh=YWBXzwi3gCRuahNwqO6vHBoWmm4Nopp8uF49yWp3kcA=; b=vDzSQLmSkkYo/9hVC9LEyh5xcC
	gxGxkwweHiH3dpNw6CLRfLwAF3gqn3LwyPWbux3wigT0LDINK0VIcatCYL3W0c7kEtJMbjUdVVCHT
	gd+6rvYY46etK/e0alsSd0mEOwvBRP3etct2p2ynZGlDts7RhG+R067WK91ttE+gdIAG6Vl7wYdp3
	OA2SCa2tgwALxN02x4XTzz1WAkhbJD2E+9n1g1cjDOHyc7Mfyz54bEDOWpsItsQmILPdCCIarAnZs
	S43xK0N3iFmrKSIh/5ld5Q2sQYBRwTatf77UVYK6iWCWdXAMW4dWaM53K++p3ceNTyx72vMfVjL75
	YmUYoxqw==;
Date: Thu, 11 Dec 2025 15:56:37 +0100
From: Heiko Schlittermann <hs@nodmarc.schlittermann.de>
To: oss-security <oss-security@lists.openwall.com>
Message-ID: <aTrbpVe2BkcRT6L9@jumper.schlittermann.de>
Mail-Followup-To: oss-security <oss-security@lists.openwall.com>
References: <aTlswbw7mu0DyFec@jumper.schlittermann.de>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="A4hHPi0YDmf05M38"
Content-Disposition: inline
In-Reply-To: <aTlswbw7mu0DyFec@jumper.schlittermann.de>
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
Subject: [oss-security] Update: EXIM-Security-2025-12-09.1: Exim 4.99: Remote heap corruption

--A4hHPi0YDmf05M38
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Update: Coordinated release date

Heiko Schlittermann <hs@nodmarc.schlittermann.de> (Mi 10 Dez 2025 13:51:13 =
CET):
=E2=80=A6
> ~2025-12-15: publish the fix via the distros repo (accessible for the dis=
tro packagers)
> ~2025-12-18: publish the fix via the default repo (accessible for the pub=
lic)
>=20
> Once the fixes passed internal testing, we'll update the schedule and send
> another notification about the coordinated release date(s) for distros and
> the public.

Coordinated Release Date: 2025-12-18 15:00 UTC.
Repo-URL: https://code.exim.org/exim/exim
Tag:      exim-4.99.1 (on branch exim-4.99+fixes)

To allow distros to prepare the packages: starting from 2025-12-15 15:00 UTC
you can git-pull the 4.99.1 release via ssh://git@code.exim.org/exim/exim-d=
istros
(The repo is accessible already, so you can test whether you have
access.)

    Best regards from Dresden/Germany
    Viele Gr=C3=BC=C3=9Fe aus Dresden
    Heiko Schlittermann
--=20
 SCHLITTERMANN.de ---------------------------- internet & unix support -
 Heiko Schlittermann, Dipl.-Ing. (TU) - {fon,fax}: +49.351.802998{1,3} -
 gnupg encrypted messages are welcome --------------- key ID: F69376CE -

--A4hHPi0YDmf05M38
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEE3ZjZI1nenjwmY/KRaX8O3WgJn28FAmk626QACgkQaX8O3WgJ
n29u0xAAsLygpNHAc4KdNVG33PkluoHajV3tmMqf3bgq5f4arQfqUSsBE2tg2t0L
h2DCVm5UrHqs2SVmxdFPF6bCjuhP6EaWfVPZO2EUc7nN32zs+WMVMpHT5Hibm6/s
TgccfT5P7h4eBJwXsOWL6r92aS/auAtRoizYBoh3jo1QPaV3AMMqlbSJli2CLNGt
M+cQDNLv4vzW9bzLjoLLjdDXucbA2EM7frGIhnfT7+FDQO6vxlJlBs/jRC4dK4Mi
NU5VN5zncSXsaJg0HbqkNjhSM7fyscTvhyVWW8EGnLmkEKPIF6TODpUlHod3nMwN
B7JvzXZDZuao8xTbZxdT3/1orbI3oUxVXAuqupexbOn8tvYQ3VYloIRYtnYWB77x
seRmtZrzi0udXtm7gdhJtrMGZV7SEkydNMGBxMyWUK74jS3X7XLUAFJhYccZclw3
JY0WCqdUMnJsKaaZOok/stj9HJnJXsSiQfpv1LzkaX259Pbw6Pq3HuFfomO+658T
w+R3tqHYHxn03rc0bz+YawVKXYgYg7KS30Mq3wIqyoU7TlE84gQE4j29w/sxbnlK
+nmIt3kP0tTVEjTuqVu0/cOe+HiG72lfHytqXkbvOxaAuPSBI2bX8nZHIEXFylF7
rhM2nB9sSXNaXHZJu+Q4IGx9UQXv+Zrs3XKWqvg5WkW+s8vqTfc=
=1/m8
-----END PGP SIGNATURE-----

--A4hHPi0YDmf05M38--
