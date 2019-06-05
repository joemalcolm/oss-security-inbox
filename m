X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["2596" "Wednesday" "5" "June" "2019" "17:19:44" "+0200" "Heiko Schlittermann" "hs@nodmarc.schlittermann.de" nil "73" nil "^Date:" nil nil "6" nil nil (number mark "        hs@nodmarc.s Jun  5   73/2596  " thread-indent "\"Re: [oss-security] CVE-2019-10149: Exim 4.87 to 4.91: possible remote exploit\"\n") nil nil nil nil nil nil nil nil nil "Re: [oss-security] CVE-2019-10149: Exim 4.87 to 4.91: possible remote exploit" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 7921 invoked by uid 550); 5 Jun 2019 15:19:57 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 7879 invoked from network); 5 Jun 2019 15:19:56 -0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=schlittermann.de; s=dd201504; h=In-Reply-To:Content-Type:MIME-Version:
	References:Message-ID:Subject:To:From:Date:Cc:Content-Description:Content-ID:
	Content-Transfer-Encoding:Resent-Cc:Resent-To;
	bh=er1IVFmUuOfUU5FjuEMQxJ8lIJ09XDDRlpuJHBYsqjw=; b=AEsSWCayMaIhxtfya68cyP/gDo
	8lDZQv+NOa89U39eHGB8tDHLDod86jPasT2I754aRODUXF0mOv+wrywQYmCEyTTpH7TWT9uxJ1S2J
	TU4NpAytg5s0JKOWvsAYPrLqDvRuFzZcRjnsFeFO9YGg2jcQZGU2HfnmuuQEb2sn5xS8=;
Message-ID: <20190605151944.5z5b35kydy2yenvm@jumper.schlittermann.de>
References: <20190603201923.akdidsegyfzq3ykj@jumper.schlittermann.de>
 <20190604132534.GA16994@openwall.com>
 <B64FBE57-16FA-41C7-8F02-8FDB96DD99B2@nodmarc.schlittermann.de>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="c7ecyieqewrdqs72"
Content-Disposition: inline
In-Reply-To: <B64FBE57-16FA-41C7-8F02-8FDB96DD99B2@nodmarc.schlittermann.de>
Organization: schlittermann -- internet & unix support
X-Face: =y#&-VlCH8uT|8#-#JE_^c<:+qPbYxFD`}8`m)xjyA$93tpwm-vKsa(V,0?906(2VIVNQbU
 QzD%zhE+~-AA?\v-v.HY6]ebO4_$vY`l|||Q!EZT5*Xx/>Fj{8E_a.;;#<4S$>&T%n5()2Yt=R5FSC
 y:Na&@T{Rf`kPq^'ffPFA%`mP~>%-LU$d*]]{-%>j={&MsMND.">]H)&#AoSI~(U8Jk;v*;,Pf+l85
 X?H&`
X-Telegram: @HeikoSchlittermann
X-Threema: T5RPWMSS
X-Phone: +49.172.7909055
X-GPG-Fingerprint: E5CA 331D 44AB 8E4C 806F  DBEE 2610 1B62 F693 76CE
X-GPG-Key-ID: F69376CE
User-Agent: NeoMutt/20170113 (1.7.2)
Date: Wed, 5 Jun 2019 17:19:44 +0200
From: Heiko Schlittermann <hs@nodmarc.schlittermann.de>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] CVE-2019-10149: Exim 4.87 to 4.91: possible
 remote exploit
To: oss-security@lists.openwall.com

--c7ecyieqewrdqs72
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

The fix for CVE-2019-10149 is public now.

    https://git.exim.org/exim.git
    Branch exim-4_91+fixes.

Thank you to
    - Qualys for reporting it.
    - Jeremy for fixing it.
    - you for using Exim.

Sorry for confusion about the public release. We were forced to react,
as details leaked.

The patch should apply cleanly to all affected versions (4.87->4.91). We
do not do a security release, as the official Exim version is at 4.92
already and older releases are considered to be outdated and not
supported by the developers anymore.

Please do not hesitate to contact us if you need help backporting the
fix.

Details of the commit:

    |commit d740d2111f189760593a303124ff6b9b1f83453d
    |gpg: Signature made Di 04 Jun 2019 11:27:33 CEST
    |gpg:                using RSA key D0BFD6B9ECA5694A6F149DCEAF4CC676A6B6=
C142
    |gpg:                issuer "hs@schlittermann.de"
    |gpg: Good signature from "Heiko Schlittermann (Dresden) <hs@schlitterm=
ann.de>" [full]
    |gpg:                 aka "Heiko Schlittermann (HS12-RIPE) <hs@schlitte=
rmann.de>" [full]
    |gpg:                 aka "[jpeg image of size 4759]" [full]
    |gpg:                 aka "Heiko Schlittermann (Exim MTA Maintainer) <h=
eiko@exim.org>" [full]
    |gpg:                 aka "Heiko Schlittermann (HS12-RIPE) <hs@nodmarc.=
schlittermann.de>" [undefined]
    |Author: Jeremy Harris <jgh146exb@wizmail.org>
    |Date:   Mon May 27 21:57:31 2019 +0100
    |
    |   Fix CVE-2019-10149


    Best regards from Dresden/Germany
    Viele Gr=C3=BC=C3=9Fe aus Dresden
    Heiko Schlittermann
--
 SCHLITTERMANN.de ---------------------------- internet & unix support -
 Heiko Schlittermann, Dipl.-Ing. (TU) - {fon,fax}: +49.351.802998{1,3} -
 gnupg encrypted messages are welcome --------------- key ID: F69376CE -
 ! key id 7CBF764A and 972EAC9F are revoked since 2015-01 ------------ -

--c7ecyieqewrdqs72
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEE0L/WueylaUpvFJ3Or0zGdqa2wUIFAlz33ZAACgkQr0zGdqa2
wUIxjQf+PCE3NvNrUk3QP3n7cpEIf8H3W6WjzUe6ohCI4gYeLZ/Jvb1F2dZl0Bt7
xeBIECerG8WOuaJc//mZYeO+HQzW+DbBys0bZT1LLLcGwJE/ngUco1seX9tZaLz5
mzwP7EpcP1Tfyp/gf0tHtdZssKJtP3wxBI4NKD9CAFmoPJ4HHR33cer4mo9s/ppR
TBDN/T90Mw/PoKkgycIMefjYYQ91nRXhtBq93zVPjK2sN7OQQDL/dXk9EK+Xic/q
tcV8uY9d+81vAV1943OKDHmkjRPDOe4vTrIsrr1v7U3WLjy7TBcovH3W1cEhoNOn
OiYFX4DiVXrTkDyFxUc4KGhWc+wesQ==
=km33
-----END PGP SIGNATURE-----

--c7ecyieqewrdqs72--
