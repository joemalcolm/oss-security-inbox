X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1622" "Sunday" "26" "November" "2017" "23:16:23" "+0100" "Heiko Schlittermann" "hs@schlittermann.de" "<20171126221623.szugrgtkizvdez3a@jumper.schlittermann.de>" "48" "Re: [oss-security] RCE in Exim reported" nil nil nil "11" "2017112622:16:23" "[oss-security] RCE in Exim reported" (number mark "U       hs@schlitter Nov 26   48/1622  " thread-indent "\"Re: [oss-security] RCE in Exim reported\"\n") "<20171126203749.GA6487@jasmine.lan>" ("<20171125035912.GA20323@breadbox.private.spodhuis.org>" "<20171125235030.GA24195@breadbox.private.spodhuis.org>" "<20171126203749.GA6487@jasmine.lan>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 15952 invoked by uid 550); 26 Nov 2017 22:19:55 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 15424 invoked from network); 26 Nov 2017 22:16:34 -0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=schlittermann.de; s=dd201504; h=In-Reply-To:Content-Type:MIME-Version:
	Message-ID:Subject:To:From:Date:Cc:Content-Description:Content-ID:
	Content-Transfer-Encoding:References::Resent-Cc:Resent-To;
	bh=34cIZ8VvseI5nOBK0BT1bHRjORaasDj/I6dEqqqc7ig=; b=dEFSvC8j0xTAumJSn/QE1znbsh
	rQsOI3NiUgYjsI+JL8Dh1W9FN4LfG/vldd4Td6iFEkZaE9gEmynLsRiHR577ndTFUEnWT04xQeDmO
	Ukjh8cJkiqD82Ma+TZ0Gn/250NB8uYEfC7UVEb5EJGQmWEdc5NGSmVaDbQX37T5Bqids=;
Date: Sun, 26 Nov 2017 23:16:23 +0100
From: Heiko Schlittermann <hs@schlittermann.de>
To: oss-security@lists.openwall.com
Message-ID: <20171126221623.szugrgtkizvdez3a@jumper.schlittermann.de>
References: <20171125035912.GA20323@breadbox.private.spodhuis.org>
 <20171125235030.GA24195@breadbox.private.spodhuis.org>
 <20171126203749.GA6487@jasmine.lan>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="3a77otfs5aubpq2o"
Content-Disposition: inline
In-Reply-To: <20171126203749.GA6487@jasmine.lan>
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
Subject: Re: [oss-security] RCE in Exim reported

--3a77otfs5aubpq2o
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Leo Famulari <leo@famulari.name> (So 26 Nov 2017 21:37:49 CET):
> >=20
> >   https://git.exim.org/exim.git/shortlog/refs/heads/exim-4_89+fixes
>=20
> FYI, clicking on the commits from this page just gives the error
> message:
>=20
> 400 - Invalid hash parameter
>=20
> But the commit in question can be viewed here:
>=20
> https://git.exim.org/exim.git/commit/4090d62a4b25782129cc1643596dc2f6e8f6=
3bde

This entrypoint works:

  https://git.exim.org/exim.git/shortlog/refs/heads/exim-4_89%2bfixes

    Best regards from Dresden/Germany
    Viele Gr=C3=BC=C3=9Fe aus Dresden
    Heiko Schlittermann
--=20
 SCHLITTERMANN.de ---------------------------- internet & unix support -
 Heiko Schlittermann, Dipl.-Ing. (TU) - {fon,fax}: +49.351.802998{1,3} -
 gnupg encrypted messages are welcome --------------- key ID: F69376CE -
 ! key id 7CBF764A and 972EAC9F are revoked since 2015-01 ------------ -

--3a77otfs5aubpq2o
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEE0L/WueylaUpvFJ3Or0zGdqa2wUIFAlobPSoACgkQr0zGdqa2
wUJv7gf+JaljQYjOwhhLbMOmm6WjJpujO5tAQf0RlDoC0aDJJ+6KzhlP9MBjZNby
sc951KZbfEGCOL6OrnfjeDksY/22x+Rjfr6b8KrFYC3gV0gf/BJ8aazmHYiwrJWA
VFINNAXPaxEObsNaKou8GTrduA215Po2lveJN6U8rQfioi29eK6i47S0Cg1hfhQN
3x0/nhXwv7toDvLgXFjFhQRi3P1/9y7q0mvH46F7XRIPSlvHZ5UxtC8xLutpFkBF
tQf0VTDzmSPaaonJGyV2VfT+tpCJu+bM5BEK0WxyCOqIj+dWhLgsrxJ1IhbELaVR
jqxGIyqTNke5uXArfHQecFrp+mkKXg==
=6G8E
-----END PGP SIGNATURE-----

--3a77otfs5aubpq2o--
