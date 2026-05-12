Received: (qmail 14103 invoked by uid 550); 12 May 2026 14:15:13 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 14070 invoked from network); 12 May 2026 14:15:12 -0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=nodmarc.schlittermann.de; s=2020-06-19; h=Content-Type:MIME-Version:
	Message-ID:Subject:To:From:Date:Cc:Content-Description:Content-ID:
	Content-Transfer-Encoding:In-Reply-To:References:Resent-Cc:Resent-To;
	bh=4QNora5p4u2JooDOJUKR1dSbu71Al+N2LbaiL1K9Oz8=; b=MBLMwCd7GGS3zY8PSuzYv7XiXJ
	eCAKmMr8xoi8jIUeSL+BDeo79MP/Y91aznEokm/i1qLJuetZ861BwRjwGG94pcY/1Mr4a1Y+IEA0I
	TJw9/r/Levf3dcW7EqnjQtBSrTOno73UGqm54rYxhao0fjtDHSoR1M0G7QOyWaNF984QCxgsoiK4G
	+B7hesI2vc9GoFi2Ose4hWkOMTcVdndJ0HAIjIZMapUqeZVp2alAmu6lYb6SMoY/NRxrWFvqCfnAT
	/mQzNg4UUZyCZhn7qRKdbG28NuVfJ47Hpf+31YBkHugiptLCr4WpgMknih/Zxh5CbDTWOk51iytjg
	qdh8a+Uw==;
Date: Tue, 12 May 2026 16:15:03 +0200
From: Heiko Schlittermann <hs@nodmarc.schlittermann.de>
To: oss-security <oss-security@lists.openwall.com>
Message-ID: <agM156T24FZJCljf@jumper.schlittermann.de>
Mail-Followup-To: oss-security <oss-security@lists.openwall.com>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="LUxgtjaY9tcRCc0H"
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
Subject: [oss-security] [EXIM-Security-2026-05-01.1] Security Release 4.99.3

--LUxgtjaY9tcRCc0H
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hello,

The Exim maintainers are releasing an important security update to address =
a critical vulnerability affecting certain Exim configurations.

Vulnerability Details

A remotely reachable Use-After-Free (UAF) vulnerability has been identified=
 in Exim's BDAT (binary data transmission) body parsing path when using the=
 GnuTLS backend. This vulnerability can lead to heap corruption and potenti=
al code execution.

Affected Versions and Configurations

This vulnerability affects Exim versions 4.97 through 4.99.x that:
- Are built with GnuTLS support
- Have STARTTLS and CHUNKING advertised

Recommended Action

We strongly recommend all affected users upgrade to Exim 4.99.3 or later im=
mediately.

Obtaining the Fix

Fixed versions are available:
- Repository: https://code.exim.org/exim-/exim (branch: exim-4.99+fixes, ta=
g: exim-4.99.3) (signed by me)
- Tarballs: https://downloads.exim.org/exim4/ (signed by me)
- Please see the Exim website for detailed upgrade instructions

Additional Information

- Distros already have coordinated access to patches
- Internal tracking ID: EXIM-Security-2026-05-01.1
- Full technical details will be available: https://exim.org/static/doc/sec=
urity/EXIM-Security-2026-05-01.1/

Thank you for your cooperation.
And special thanks to the reporter at xbow security.

    Best regards from Dresden/Germany
    Viele Gr=C3=BC=C3=9Fe aus Dresden
    Heiko Schlittermann
--=20
 SCHLITTERMANN.de ---------------------------- internet & unix support -
 Heiko Schlittermann, Dipl.-Ing. (TU)              fon +49.351.8029981 -
 gnupg encrypted messages are welcome --------------- key ID: F69376CE -

--LUxgtjaY9tcRCc0H
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEE3ZjZI1nenjwmY/KRaX8O3WgJn28FAmoDNeUACgkQaX8O3WgJ
n28TxBAAs40hBYF+GzNd0VpZM1ieud5roNfPxgU0l42VUEvYFqw663+D0UHi47sg
ewgAsvl6IBVPNn2mlzp7NFDvb/6eOErqUl+Od6gDWPE8un4voYZrrC9oYfOq5Z3G
uO9hsicTUFrbCoGoxSfW0MObr+MSHUdPJWmhuBrdptv4u06iDxxtRPhOgFikiQB2
y+LYtpEamy7dMFJz7eeuY3TokK+NsIfAGwjGZMUGW6Ec6NpNyXCilMnxuvZezKi0
6biCEbjBuKDjZbm/DSLVMgXmeb2kR1kXpHdbCMyIOgZK6nXk9uQTT/WgghVIt8x+
KzVJx9SGBOIRWqJ8XM/EqutlU2o7ffz93DjcwVGCsrriz+6vjj0fWv6bgOSwiN3u
Xw/+MRvlDtZq4MRUhtTPjkVe0hHZ6sFgIckMw12tNrER8xzMxpswGlQ77ceqZ1Cg
inw1G5rwMB2id777AETEuvAk4vJCXurR2n5FLoA2bR9BNEDPuTSWYU5LZjooZYgq
9jSW4kdijY3Q75L/q7rmUc27idK7m0ijd0+7ERaalTOxOGyX2xHkHRvxlUCrCTFY
Lhwjr++GfUYVwkdtmXQ9ydkq3isS27vTwjXeXPhPYEl4hAHgheGWMPmjwxjpkHoq
bS3s+GVakbnScZAiydS+XEvC7w1NQ/uQpygYnBWG4Y5D4A0xGss=
=cug3
-----END PGP SIGNATURE-----

--LUxgtjaY9tcRCc0H--
