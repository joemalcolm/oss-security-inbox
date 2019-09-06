X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["2885" "Friday" "6" "September" "2019" "12:20:39" "+0200" "Heiko Schlittermann" "hs@nodmarc.schlittermann.de" nil "83" nil "^Date:" nil nil "9" nil nil (number mark "        hs@nodmarc.s Sep  6   83/2885  " thread-indent "\"[oss-security] Re: CVE-2019-15846: Exim - local or remote attacker can execute programs with root privileges.\"\n") nil nil nil nil nil nil nil nil nil "[oss-security] Re: CVE-2019-15846: Exim - local or remote attacker can execute programs with root privileges." nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 13825 invoked by uid 550); 6 Sep 2019 18:41:57 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 25922 invoked from network); 6 Sep 2019 11:59:40 -0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=schlittermann.de; s=dd201504; h=In-Reply-To:Content-Type:MIME-Version:
	References:Message-ID:Subject:To:From:Date:Resent-To:Cc:Content-Description:
	Content-ID:Content-Transfer-Encoding:Resent-Cc;
	bh=6/oi5s5uLrdfFJCM8uYHAZxPOnzYiCWgco16hsP1Kfs=; b=sVe2T56VTU7YhOJrv9xPvY5iVT
	ajyuEScJwP3jh61rcOQuij2jwmWAzIY+2SGeYxHxXQqp6eLWUcLljv7FL0Uf5sKZoqLdUzpnWPfcf
	GxG9+R2NQ2DJr/XUf96Ybw0fGU/JKkB8jQPOm/sooL/npzhXMVHrz7I7JFerOPRmIOmI=;
Message-ID: <20190906102039.GZ3837@jumper.schlittermann.de>
Mail-Followup-To: oss-security <oss-security@lists.openwall.com>,
        Exim Users <exim-users@exim.org>,
        Exim Announce <exim-announce@exim.org>
References: <20190904092248.GQ3837@jumper.schlittermann.de>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
        protocol="application/pgp-signature"; boundary="im83/wVv0jiGQj4J"
Content-Disposition: inline
In-Reply-To: <20190904092248.GQ3837@jumper.schlittermann.de>
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
Date: Fri, 6 Sep 2019 12:20:39 +0200
From: Heiko Schlittermann <hs@nodmarc.schlittermann.de>
Reply-To: oss-security@lists.openwall.com
Resent-From: Heiko Schlittermann <hs@schlittermann.de>
Resent-Date: Fri, 6 Sep 2019 13:59:27 +0200
Resent-Message-ID: <20190906115927.GE3837@jumper.schlittermann.de>
Resent-To: oss-security@lists.openwall.com
Subject: [oss-security] Re: CVE-2019-15846: Exim - local or remote attacker can execute
 programs with root privileges.
To: oss-security <oss-security@lists.openwall.com>,
        Exim Users <exim-users@exim.org>,
        Exim Announce <exim-announce@exim.org>

--im83/wVv0jiGQj4J
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

CVE ID:     CVE-2019-15846
Credits:    Zerons <sironhide0null@gmail.com>, Qualys
Version(s): all versions up to and including 4.92.1
Issue:      The SMTP Delivery process in all=C2=B9 versions up to and
            including Exim 4.92.1 has a Buffer Overflow.  In the default
            runtime configuration, this is exploitable with crafted Server
            Name Indication (SNI) data during a TLS negotiation. In other
            configurations, it is exploitable with a crafted client TLS cer=
tificate.
Details:    doc/doc-txt/cve-2019-15846 in the downloaded source tree

Coordinated Release Date (CRD) for Exim 4.92.2:
            2019-09-06 10:00 UTC

Contact:    security@exim.org

We released Exim 4.92.2. This is a security update based on 4.92.1.

Mitigation
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D

Do not offer TLS for incomming connections (tls_advertise_hosts).
This mitigation is *not* recommended!

Downloads
=3D=3D=3D=3D=3D=3D=3D=3D=3D

Starting at CRD the downloads will be available from the following
sources:

Release tarballs (exim-4.92.2):

    https://ftp.exim.org/pub/exim/exim4/

The package files are signed with my GPG key.

The full Git repo:

    https://git.exim.org/exim.git
    https://github.com/Exim/exim    [mirror of the above]
    - tag    exim-4.92.2
    - branch exim-4.92.2+fixes

The tagged commit is the officially released version. The tag is signed
with my GPG key.  The +fixes branch isn't officially maintained, but
contains useful patches *and* the security fix. The relevant commit is
signed with my GPG key. The old exim-4.92.1+fixes branch is being functiona=
lly
replaced by the new exim-4.92.2+fixes branch.

=C2=B9) We've indication, that only versions starting with 4.80 up to and
including 4.92.1 are affected.

    Best regards from Dresden/Germany
    Viele Gr=C3=BC=C3=9Fe aus Dresden
    Heiko Schlittermann
--
 SCHLITTERMANN.de ---------------------------- internet & unix support -
 Heiko Schlittermann, Dipl.-Ing. (TU) - {fon,fax}: +49.351.802998{1,3} -
 gnupg encrypted messages are welcome --------------- key ID: F69376CE -
 ! key id 7CBF764A and 972EAC9F are revoked since 2015-01 ------------ -

--im83/wVv0jiGQj4J
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEE0L/WueylaUpvFJ3Or0zGdqa2wUIFAl1yMvYACgkQr0zGdqa2
wUJkugf/RPtUQQMm9rkWnns0lu74rhT4h+pBW8BfpwY2IFT6HQeyqFkZmfAJ1E9L
e9y8e6Xa3ovd08vhC9gcguiUXj/QJbtK4LXYR9SDHkvtRHHYJCYkLvsHubNAtmIT
d0j65NUfL6U9y0Z33Nnq5L7RIKpSe/8aYX8jHx4IS4p/qqoqy9VJNKhTzB/rugrG
gKigutxsIwEuXYJbP1Zhcxsmw9jbApI7e2LHYg4bl88XjAfNHRJolZ+ANGSpAGyI
geB1MTW0Q2T4Xxun5X5WvcRvg1JUNmWLpejAC6+Vqh0qk6z/ZXtZ8I3DGUHUbyLK
E2ylNRnEBBQfCjabLucjCfw0WRxLzg==
=5ddF
-----END PGP SIGNATURE-----

--im83/wVv0jiGQj4J--
