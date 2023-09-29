Received: (qmail 28602 invoked by uid 550); 29 Sep 2023 16:06:24 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 28563 invoked from network); 29 Sep 2023 16:06:23 -0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=nodmarc.schlittermann.de; s=2020-06-19; h=In-Reply-To:Content-Type:
	MIME-Version:References:Message-ID:Subject:To:From:Date:Cc:
	Content-Description:Content-ID:Content-Transfer-Encoding:Resent-Cc:Resent-To;
	bh=vDP71cqJzgO1v+jNL5CBacrv2TzT7obQGMr5cQy9Pps=; b=uCVn27+TGhtAh6p53TS79J+Qcd
	BOIvXs3EklplRe3DyV1GCa5Pxua2kXQPRSVBsYu81oZqkuwQWCajR9BXt9f6gixovTyDDmNv0caip
	vlTKGj1k41bCMB9RccqdT8lv22rbeV7VNKj/vAhXtb5MSWgpMAnmvo8PIucm2nRvn8VgfWZ/Zde31
	Rtu3d5HHD1Wx552JhDwyMKl/djwCJGgCY7i0H1Z5wD4e59XDfKzhwUVODKEAp04M8Hx6P7XN3B4tX
	UF7GD+xEnnoKXRJ+fOdvFagqLXmDdbC/nGKwGaqimN7r/1DwBw0VxlXDFFJHOvnaDQYk2YeYaDEpt
	UdNKlg/Q==;
Date: Fri, 29 Sep 2023 18:06:11 +0200
From: Heiko Schlittermann <hs@nodmarc.schlittermann.de>
To: oss-security@lists.openwall.com
Message-ID: <ZRb180+B34Wmg1IM@jumper.schlittermann.de>
Mail-Followup-To: oss-security@lists.openwall.com
References: <7b2e3fb3afc05aa39864e62b0c87a631b746f5c7.camel@runout.at>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="K+tSVd7wpZDpMxf8"
Content-Disposition: inline
In-Reply-To: <7b2e3fb3afc05aa39864e62b0c87a631b746f5c7.camel@runout.at>
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
Subject: [oss-security] Exim4 MTA CVEs assigned from ZDI

--K+tSVd7wpZDpMxf8
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hello Exim users,

the ZDI assigned multiple CVEs to the Exim-MTA and published them
recently:

CVE            Link                                                      Ex=
im-Bug
--------------+---------------------------------------------------------+--=
---
CVE-2023-42114 https://www.zerodayinitiative.com/advisories/ZDI-23-1468/  3=
001 fixed
CVE-2023-42115 https://www.zerodayinitiative.com/advisories/ZDI-23-1469/  2=
999 fixed
CVE-2023-42116 https://www.zerodayinitiative.com/advisories/ZDI-23-1470/  3=
000 fixed
CVE-2023-42117 https://www.zerodayinitiative.com/advisories/ZDI-23-1471/
CVE-2023-42118 https://www.zerodayinitiative.com/advisories/ZDI-23-1472/
CVE-2023-42119 https://www.zerodayinitiative.com/advisories/ZDI-23-1473/=20


The ZDI contacted us in June 2022. We asked about details but didn't get
answers we were able to work with.

Next contact with ZDI was in May 2023. Right after this contact we
created project bug tracker for 3 of the 6 issues. 2 high scored of them
are fixed (OOB access). A minor scored (info leak) is fixed too.

Fixes are available in a protected repository and are ready to be
applied by the distribution maintainers.

The remaining issues are debatable or miss information we need to fix
them.

We're more than happy to provide fixes for all issues as soon as we
receive detailed information.

    Best regards from Dresden/Germany
    Viele Gr=C3=BC=C3=9Fe aus Dresden
    Heiko Schlittermann
--
 SCHLITTERMANN.de ---------------------------- internet & unix support -
 Heiko Schlittermann, Dipl.-Ing. (TU) - {fon,fax}: +49.351.802998{1,3} -
 gnupg encrypted messages are welcome --------------- key ID: F69376CE -

--K+tSVd7wpZDpMxf8
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEE0L/WueylaUpvFJ3Or0zGdqa2wUIFAmUW9fIACgkQr0zGdqa2
wUJ/3AgAyYHri33LK6VfV7EKBZ8yrvR1zN6YuuRfHzy/koGWDlOmzVK3PGJAE51m
WB8Xq9Mz/DG23+2ufYxHrPXUD4RIevvayFPnPIJ2q8Q9qiN2a9o1pNpaLwDOmQr+
/pdnrdx0T4OKgWMZ0sMOHouZE746kk8n0jXAvXMFFW3jQC4mwNEYGLhZ/q1LJ31M
7CSEHEQzosShiilz8WYTANhLa1vBZqKky5Awv9E3nsLmna11p3PWzDor7zK0Y811
JU79ftyvQRPIj7ZPvZdSgUmU+3JEbSF95UkmELuoLT6AC1oBYplYFPffWexmCsKF
M6/NFh2yqN1Oa2ZYZ2UjIUC0/Fu60g==
=IdDW
-----END PGP SIGNATURE-----

--K+tSVd7wpZDpMxf8--
