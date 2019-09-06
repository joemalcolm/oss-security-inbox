X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["2019" "Friday" "6" "September" "2019" "08:00:28" "+0200" "Heiko Schlittermann" "hs@nodmarc.schlittermann.de" nil "54" nil "^Date:" nil nil "9" nil nil (number mark "        hs@nodmarc.s Sep  6   54/2019  " thread-indent "\"[oss-security] Re: CVE-2019-15846: Exim - local or remote attacker can execute programs with root privileges.\"\n") nil nil nil nil nil nil nil nil nil "[oss-security] Re: CVE-2019-15846: Exim - local or remote attacker can execute programs with root privileges." nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 19554 invoked by uid 550); 6 Sep 2019 06:00:41 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 19528 invoked from network); 6 Sep 2019 06:00:40 -0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=schlittermann.de; s=dd201504; h=Content-Type:MIME-Version:Message-ID:
	Subject:To:From:Date:Cc:Content-Description:Content-ID:
	Content-Transfer-Encoding:In-Reply-To:References:Resent-Cc:Resent-To;
	bh=JqHQln3mIaKAbBXgTOdqRwcjJ8xMtS7lctG7vQaSG1I=; b=ZlRPXFmPcTNqf7gpbHlbTX9S9v
	HZvYfS6Vj3EEnj8gY0uNX0Kzahq2MjtJ6ApmSNvTYFS+s8YOk0ERWV1HoI+aScCLHzTQTMRVJCIY7
	KA7f+wKXIb4A7de+GBpe0pqpZQZbdL/FYSnLWSoAn4blkVx1pSINSb1Puu2k06DtBQRc=;
Message-ID: <20190906060028.GY3837@jumper.schlittermann.de>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="kZU6r8y0YpRwyDfh"
Content-Disposition: inline
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
User-Agent: Mutt/1.10.1 (2018-07-13)
Date: Fri, 6 Sep 2019 08:00:28 +0200
From: Heiko Schlittermann <hs@nodmarc.schlittermann.de>
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] Re: CVE-2019-15846: Exim - local or remote attacker can execute
 programs with root privileges.
To: oss-security <oss-security@lists.openwall.com>

--kZU6r8y0YpRwyDfh
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

[ This is a re-post w/o dmarc protection of the sender (me). ]

*** Note: EMBARGO is still in effect!       ***
*** Distros must not publish any detail yet ***

In case you are entitled to access the security repo:
*and* use the 4.92.2+fixes branch:

The branch got two new commits, fixing a small tool. This tool is not
designed to process untrusted data, so there is no security issue, but
it was buggy. It is unlikely to be critical.

You may consider including the fix in the packages to be
released at CRD (today, 10.00 UTC) or schedule it for a later
maintainance release of the Exim packages.

commit cdc7f9a9667ecf31d803fc8d1a31b466284360bd
Author: Heiko Schlittermann (HS12-RIPE) <hs@schlittermann.de>
Date:   Fri Sep 6 06:57:11 2019 +0200

commit 66935633816a88460f5222f40dc29d1a4e877978
Author: Heiko Schlittermann (HS12-RIPE) <hs@schlittermann.de>
Date:   Thu Sep 5 14:56:22 2019 +0200

    Best regards from Dresden/Germany
    Viele Gr=C3=BC=C3=9Fe aus Dresden
    Heiko Schlittermann
--
 SCHLITTERMANN.de ---------------------------- internet & unix support -
 Heiko Schlittermann, Dipl.-Ing. (TU) - {fon,fax}: +49.351.802998{1,3} -
 gnupg encrypted messages are welcome --------------- key ID: F69376CE -
 ! key id 7CBF764A and 972EAC9F are revoked since 2015-01 ------------ -

--kZU6r8y0YpRwyDfh
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEE0L/WueylaUpvFJ3Or0zGdqa2wUIFAl1x9fsACgkQr0zGdqa2
wULG7gf9HGOJdrpi6dMkDRqgJACxm7en/3Qbev7ZYhtSBl31NJye5S2hOldtcwgA
RxE8zOsm1jiQCXnB2STvY/55yXis4Mv2e7Vj8/wiiwXz23sT+jXXVGmF98AkTpSr
JvDWVCQnqJOSk5lvjnOpZhpBgpknnQ5sgitX8khrFyf6+UeVW0SCCI1hoNwhVcnj
fq+JwSr5DL3XGGfQWLI3boAA+tGEceBmL6iJ5ZPi314l4IgfJP4CoP9+IacFmr26
Nh6ozVaRUm29QD6xTaElMuhAXBEp7uRxywymfMyOQQpt3HxwWa/pBqaFYnLLbwmU
Hv/P3hJypVspABsiqTV6E9ZYq5tK2Q==
=he5h
-----END PGP SIGNATURE-----

--kZU6r8y0YpRwyDfh--
