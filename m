X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["2262" "Thursday" "8" "February" "2018" "17:57:00" "+0100" "Heiko Schlittermann" "hs@schlittermann.de" "<20180208165700.i7j2n7avv6bebqo2@jumper.schlittermann.de>" "66" "[oss-security] Re: CVE-2018-6789 Exim 4.90 and earlier: buffer overflow" "^Date:" nil nil "2" "2018020816:57:00" "[oss-security] Re: CVE-2018-6789 Exim 4.90 and earlier: buffer overflow" (number mark "        hs@schlitter Feb  8   66/2262  " thread-indent "\"[oss-security] Re: CVE-2018-6789 Exim 4.90 and earlier: buffer overflow\"\n") "<20180207103943.wwijjdmnlzpp46lm@jumper.schlittermann.de>" ("<20180207103943.wwijjdmnlzpp46lm@jumper.schlittermann.de>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 21994 invoked by uid 550); 8 Feb 2018 17:03:49 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 13581 invoked from network); 8 Feb 2018 16:57:13 -0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=schlittermann.de; s=dd201504; h=In-Reply-To:Content-Type:MIME-Version:
	References:Message-ID:Subject:To:From:Date:Cc:Content-Description:Content-ID:
	Content-Transfer-Encoding:Resent-Cc:Resent-To;
	bh=zcQTDbG6Xp4vV0VtMWeMWBd984QYWs/SuHfvFR6ClJI=; b=Ga82i0LUJHEfFj4NyECiNEtA8h
	fG1MnNGuABBEo9duYuAjkVbVMXtVc6xO0xwY2nJON03vC9wf1FHereO+R9vndap8aKBvk3W6O8Zik
	BFBF50MSCalG6RA8ATcGnecctdZ0xwugreUHSDhyWrOWjI/ymI4NHQHVLGtc3wjKdpZI=;
Message-ID: <20180208165700.i7j2n7avv6bebqo2@jumper.schlittermann.de>
References: <20180207103943.wwijjdmnlzpp46lm@jumper.schlittermann.de>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="rcpsruxerdun24pt"
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
Date: Thu, 8 Feb 2018 17:57:00 +0100
From: Heiko Schlittermann <hs@schlittermann.de>
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] Re: CVE-2018-6789 Exim 4.90 and earlier: buffer overflow
To: oss-security@lists.openwall.com

--rcpsruxerdun24pt
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Heiko Schlittermann <hs@schlittermann.de> (Mi 07 Feb 2018 11:39:43 CET):
> CVE-2018-6789 Exim 4.90 and earlier
> =3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
>=20
> There is a buffer overflow in an utility function, if some pre-conditions
> are met.  Using a handcrafted message, remote code execution seems to be
> possible.
>=20
> Next steps:
>=20
> * t0:     Distros will get access to our "security" non-public git repo
>           (based on the SSH keys known to us)
> * t0 +7d: Patch will be published on the official public git repo
>=20
> t0 will be around 2018-02-08.

t0 is now. Distro maintainers please use the following repo URLs:

The full git repo:

    ssh://git@exim.org/exim.git=20=20=20=20=20
    tag: exim-4_90_1

The tarballs git repo:

    ssh://git@exim.org/exim-packages.git
    tag: exim-4_90_1

The tags are signed with my key=C2=B9, as are the tarballs and my own
commits.

=C2=B9) If you get a warning about my key being expired, please refresh it
from the keyservers or from
https://ssl.schlittermann.de/keys/gpg/hs@schlittermann.de/F69376CE.asc

    Best regards from Dresden/Germany
    Viele Gr=C3=BC=C3=9Fe aus Dresden
    Heiko Schlittermann
--=20
 SCHLITTERMANN.de ---------------------------- internet & unix support -
 Heiko Schlittermann, Dipl.-Ing. (TU) - {fon,fax}: +49.351.802998{1,3} -
 gnupg encrypted messages are welcome --------------- key ID: F69376CE -
 ! key id 7CBF764A and 972EAC9F are revoked since 2015-01 ------------ -

--rcpsruxerdun24pt
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEE0L/WueylaUpvFJ3Or0zGdqa2wUIFAlp8gVsACgkQr0zGdqa2
wUI+pAf/eSU7MtOqnqXaz9eBjaRIwX5fJD+SB19zJJBf8QmrrXa1ZpypfqKEPTv7
bFCqkFmhuX3NsFPHNVzALCwrcl1GtC9aKJm+7LGggBiGHs1td656/dxF2rP7klPH
pCojtzm6LA1LKQvR12qWYedb4Y1zClg6CWg7p2V9SrF9gHlZTTsIaC2TbJ3X9wVN
znL/NHM6WW0XHfgn7g/NhtYid4zHt2GuqXI1FvBEoYlmlgiZS7EnOi6lkf83eyq1
TU5Hn0XuMcOagPs5VOYTEWSY3RGXQcAXv1leyTu4h/DWr5grIIQ+Z43WcvM7Z9TD
uWE/+2zvBWw2+F9HmKeVPI440c1k7Q==
=0aOA
-----END PGP SIGNATURE-----

--rcpsruxerdun24pt--
