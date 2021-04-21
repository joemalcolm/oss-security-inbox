X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["2713" "Wednesday" "21" "April" "2021" "13:48:55" "+0200" "Heiko Schlittermann" "hs@nodmarc.schlittermann.de" nil "87" "[oss-security] Exim security update ahead" nil nil nil "4" nil nil (number mark "U       hs@nodmarc.s Apr 21   87/2713  " thread-indent "\"[oss-security] Exim security update ahead\"\n") nil nil nil nil nil nil nil nil nil "[oss-security] Exim security update ahead" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 25783 invoked by uid 550); 21 Apr 2021 11:49:09 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 25747 invoked from network); 21 Apr 2021 11:49:09 -0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=nodmarc.schlittermann.de; s=2020-06-19; h=Content-Type:MIME-Version:
	Message-ID:Subject:To:From:Date:Cc:Content-Description:Content-ID:
	Content-Transfer-Encoding:In-Reply-To:References:Resent-Cc:Resent-To;
	bh=Dk0V8reIyoOgycfq+SAJlnlS2ZAKix23SDJbHeKGiuo=; b=WSOztpgNUBmWr5jD08kZx0Tizl
	g5PMX5p0AV3KyvR1PfnpzqQ39VACdE+0/rUdoF+YR8ZGTAqojp7Rw7R1//ex0NhdZ8TiRV0BaC9dj
	H+RdQBb+lVOCFGiVgat5iwIYZSXfMOyknp1p24Ji+TNq5Or5mjgysyjFazcPNKcAVqsL38R+iVZT4
	jl78TAM6wXYsoteiagZBUrvmbhBIVtDxTVFVwencVGlVDgAcrx7LPHxGw+O7FSGdmKdeiOAOAm4s/
	0PMIsr8Xqsb64Lekmy5NTyET0+E2/j1nA8YvX3kJuyAgpZKvqg4sWFjt6Wiry16Ozh4kBHqZOOveI
	ACqiXc2Q==;
Date: Wed, 21 Apr 2021 13:48:55 +0200
From: Heiko Schlittermann <hs@nodmarc.schlittermann.de>
To: oss-security <oss-security@lists.openwall.com>
Message-ID: <20210421114855.GW3280@jumper.schlittermann.de>
Mail-Followup-To: oss-security <oss-security@lists.openwall.com>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="L0mHLbha4YKvhGtu"
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
Subject: [oss-security] Exim security update ahead

--L0mHLbha4YKvhGtu
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Dear Exim-Users and maintainers,

this is a *heads up* notice only. No action is required on your part
right now.

Abstract
--------

Several exploitable vulnerabilities in Exim were reported to us and are
fixed.

We have prepared a security release, tagged as "exim-4.94.1".

This release contains all changes on the exim-4.94+fixes branch plus
security fixes.

Schedule
--------

2021-04-27 13.30 UTC:   Grant access to the security repos
                        for distro maintainers

2021-05-04 13:30 UTC:   Publish the release on the public
                        repos/website/etc

Repositories
------------

The sources *will* be available on our security repo:

        tarballs: git@git.exim.org:exim-packages-security.git
        source:   git@git.exim.org:exim-security.git
                  tag: exim-4.94.1

Access to these security Git repos will be granted for the known set of
Exim maintainers and distro packagers first. Please reach out to us, if
you need further details or if you think, you should be part of this
set.

One week after granting access to the distro packagers the release will
be pushed to the well known public repos as usual.


Details
-------

The current Exim versions (and likely older versions too) suffer from
several exploitable vulnerabilities. These vulnerabilities were reported
by Qualys via security@exim.org back in October 2020.

Due to several internal reasons it took more time than usual for the Exim
development team to work on these reported issues in a timely manner.

We explicitly thank Qualys for reporting *and* for providing patches for
most of the reported vulnerabilities.

Thank you for using Exim.

    Best regards from Dresden/Germany
    Viele Gr=C3=BC=C3=9Fe aus Dresden
    Heiko Schlittermann
--
 SCHLITTERMANN.de ---------------------------- internet & unix support -
 Heiko Schlittermann, Dipl.-Ing. (TU) - {fon,fax}: +49.351.802998{1,3} -
 gnupg encrypted messages are welcome --------------- key ID: F69376CE -

--L0mHLbha4YKvhGtu
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEE0L/WueylaUpvFJ3Or0zGdqa2wUIFAmCAEScACgkQr0zGdqa2
wUJ7bQf+PLiZn+mvLCg9W1PgxFpOY8rxoOpBkPNRrXQq3KHCNYhA47/mDMiUb24Y
cd+voDKx4WTmhNAzFeLrbFFlyzWsDln/t/MT8/8JYFH9vZ9MZPgpiSiruy44NWzC
zIG63juOMcPRy1+fwqGWOSIlbt3Aie/jeGASHghtCPcswxYTw95DKNyc6ZTk3iNB
KymKyzyNUpEIhjTNPxE5mnTX7Pgol4iXuOwchb079Tn66895bQIRXMeInZ6sm9X7
54H4PA7mU2zm4ZR4DAkoqZlp6iNL5y5QeCVZCQ1tT3S52UQrwgtS5cmJr2hmzOVj
yI3+NYjQ7X8nzGrtJPY79EEDm7yJ+A==
=sv3a
-----END PGP SIGNATURE-----

--L0mHLbha4YKvhGtu--
