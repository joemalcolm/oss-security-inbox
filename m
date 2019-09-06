X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1467" "Friday" "6" "September" "2019" "13:14:06" "+0200" "Heiko Schlittermann" "hs@nodmarc.schlittermann.de" nil "40" nil "^Date:" nil nil "9" nil nil (number mark "        hs@nodmarc.s Sep  6   40/1467  " thread-indent "\"[oss-security] Re: CVE-2019-15846: Exim - local or remote attacker can execute programs with root privileges.\"\n") nil nil nil nil nil nil nil nil nil "[oss-security] Re: CVE-2019-15846: Exim - local or remote attacker can execute programs with root privileges." nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 27675 invoked by uid 550); 6 Sep 2019 11:14:20 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 27657 invoked from network); 6 Sep 2019 11:14:20 -0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=schlittermann.de; s=dd201504; h=In-Reply-To:Content-Type:MIME-Version:
	References:Message-ID:Subject:To:From:Date:Cc:Content-Description:Content-ID:
	Content-Transfer-Encoding:Resent-Cc:Resent-To;
	bh=DOgd4okLiNpWfm5uJBm95Hb0VCo51JiYHktiV7C1JnI=; b=qi51oGBu3nSJ6qw9bWHUR5ZUIY
	UYAKvS2R3P30YxJzFg7JqClHs5z1BMb+Jn+QuSt+DLJkLk00QfdwYcNF0PO/8vBC1jRAWiE4sbii7
	Ehs2OEMvg8eGztbPQuL3GW/+KvYGqDMZ+aiJCnlXPLWlApcejw4oE0Rn6IY0O2vpMwgo=;
Message-ID: <20190906111406.GB3837@jumper.schlittermann.de>
Mail-Followup-To: oss-security <oss-security@lists.openwall.com>,
	Exim Users <exim-users@exim.org>
References: <20190904092248.GQ3837@jumper.schlittermann.de>
 <20190906102039.GZ3837@jumper.schlittermann.de>
 <20190906104430.GA3837@jumper.schlittermann.de>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="D5tFrmRBv7YOLFOK"
Content-Disposition: inline
In-Reply-To: <20190906104430.GA3837@jumper.schlittermann.de>
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
Date: Fri, 6 Sep 2019 13:14:06 +0200
From: Heiko Schlittermann <hs@nodmarc.schlittermann.de>
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] Re: CVE-2019-15846: Exim - local or remote attacker can execute
 programs with root privileges.
To: oss-security <oss-security@lists.openwall.com>,
	Exim Users <exim-users@exim.org>

--D5tFrmRBv7YOLFOK
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

An Update to the mitigation for the current CVE:

Add - as part of the mail ACL (the ACL referenced by the main config
option "acl_smtp_mail"):

     deny    condition =3D ${if eq{\\}{${substr{-1}{1}{$tls_in_sni}}}}
     deny    condition =3D ${if eq{\\}{${substr{-1}{1}{$tls_in_peerdn}}}}

This should prevent the currently known attack vector.

    Best regards from Dresden/Germany
    Viele Gr=C3=BC=C3=9Fe aus Dresden
    Heiko Schlittermann
--
 SCHLITTERMANN.de ---------------------------- internet & unix support -
 Heiko Schlittermann, Dipl.-Ing. (TU) - {fon,fax}: +49.351.802998{1,3} -
 gnupg encrypted messages are welcome --------------- key ID: F69376CE -
 ! key id 7CBF764A and 972EAC9F are revoked since 2015-01 ------------ -

--D5tFrmRBv7YOLFOK
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEE0L/WueylaUpvFJ3Or0zGdqa2wUIFAl1yP30ACgkQr0zGdqa2
wUJ2yAf/YlIbpX/XhrRDh/u3bRVX8Snl8LGqgdKnrMAoO9MnQZn1jCUnKH/FZcHw
Zza9G5JHTDqKKWSkgS5uODnTTH7civBYLYwgmhdaVe3SE6pmpp7Vqnxiprs/s2z2
mjod9nLTpBUwmjTYaCDSPkLVqkGvspOLerCb3ZMYvCrwSlfQ6HIQEPczbtUgli5t
uK/dygA3g+8DzgR3J2ZsDazLIDYyVWIr4t8jMrWr1fCXlVFsEPFdCuF7FYHJDbqK
ROCUvyMHTLhKICOsqJjYtF7n2JsbKv9X0rDH9Qdvc9fI0Gq0UAUfXOt2pW2dsZEY
c1ZysM+yB3OAwQzbXTaufKTWKj62yQ==
=oUIJ
-----END PGP SIGNATURE-----

--D5tFrmRBv7YOLFOK--
