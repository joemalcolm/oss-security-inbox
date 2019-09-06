X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1531" "Friday" "6" "September" "2019" "12:44:30" "+0200" "Heiko Schlittermann" "hs@schlittermann.de" nil "46" nil "^Date:" nil nil "9" nil nil (number mark "        hs@schlitter Sep  6   46/1531  " thread-indent "\"[oss-security] Re: CVE-2019-15846: Exim - local or remote attacker can execute programs with root privileges.\"\n") nil nil nil nil nil nil nil nil nil "[oss-security] Re: CVE-2019-15846: Exim - local or remote attacker can execute programs with root privileges." nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 3798 invoked by uid 550); 6 Sep 2019 18:40:55 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 26106 invoked from network); 6 Sep 2019 10:44:43 -0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=schlittermann.de; s=dd201504; h=In-Reply-To:Content-Type:MIME-Version:
	References:Message-ID:Subject:To:From:Date:Cc:Content-Description:Content-ID:
	Content-Transfer-Encoding:Resent-Cc:Resent-To;
	bh=WgjzbHA6dJthGXojwqb3kJ9l1diF6b1vLYfRQDhCZFo=; b=mk4VsoaH5ulf/Z5AaOPaVgG6R4
	AUxHt3Y+MgXzkV11Iedmot5tXYzXX02SyTqpsVstGctNZTZixAom+h/vGYioyiHYZ1mvJYIEGCrVE
	paIAOLH9zoN18+c1jLXxd3dF+ETpvEaWFEQ1XeOmatzHNTQa7WiJUiV/I4JeDlE4jXYw=;
Message-ID: <20190906104430.GA3837@jumper.schlittermann.de>
Mail-Followup-To: oss-security <oss-security@lists.openwall.com>,
	Exim Users <exim-users@exim.org>,
	Exim Announce <exim-announce@exim.org>
References: <20190904092248.GQ3837@jumper.schlittermann.de>
 <20190906102039.GZ3837@jumper.schlittermann.de>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="qZLIv6EoKi7YuaSc"
Content-Disposition: inline
In-Reply-To: <20190906102039.GZ3837@jumper.schlittermann.de>
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
Date: Fri, 6 Sep 2019 12:44:30 +0200
From: Heiko Schlittermann <hs@schlittermann.de>
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] Re: CVE-2019-15846: Exim - local or remote attacker can execute
 programs with root privileges.
To: oss-security <oss-security@lists.openwall.com>,
	Exim Users <exim-users@exim.org>,
	Exim Announce <exim-announce@exim.org>

--qZLIv6EoKi7YuaSc
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Heiko Schlittermann <hs@dmarc.schlittermann.de> (Fr 06 Sep 2019 12:20:39 CE=
ST):
> Mitigation
> =3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
>
> Do not offer TLS for incomming connections (tls_advertise_hosts).
> This mitigation is *not* recommended!

This should block the most popular attack vector:

In your MAIL ACL:

    deny    condition =3D ${if eq{\\}{${substr{-1}{1}{$tls_in_sni}}}}
            message =3D sorry


    Best regards from Dresden/Germany
    Viele Gr=C3=BC=C3=9Fe aus Dresden
    Heiko Schlittermann
--
 SCHLITTERMANN.de ---------------------------- internet & unix support -
 Heiko Schlittermann, Dipl.-Ing. (TU) - {fon,fax}: +49.351.802998{1,3} -
 gnupg encrypted messages are welcome --------------- key ID: F69376CE -
 ! key id 7CBF764A and 972EAC9F are revoked since 2015-01 ------------ -

--qZLIv6EoKi7YuaSc
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEE0L/WueylaUpvFJ3Or0zGdqa2wUIFAl1yOI4ACgkQr0zGdqa2
wULT9AgAi4Tik4cZ0O+yz6oHNpKh5/a82Xk2sIlZp73riuaxcazDwHWKuyAmSJC4
UH0OPSHJRD/P+8A3bZOVyqyrWmDQ0KUVRecKLdzTa3S6ugw1Xe26voNDjjMg4u0g
b9b8kNopaa+xF7jysckqi8924KzfK63Po029lI/4n4ppV3RyYd2hkrj0TzOCL+Xl
P7ELvJIAio0+HyWAjiMhcHHptwHuKwnx+VoJ6x0pVaZiGvhDnjdjNxURu7Ss4KbJ
oiLWyhcruvuWzp0etHeyJVTP8yqbyBUNczucV/k37IyCSmD+/6TKRlQn36mJapeB
5fDTbLCJHvO0KILIgTqRJcIUI7ALnw==
=3BA0
-----END PGP SIGNATURE-----

--qZLIv6EoKi7YuaSc--
