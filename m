X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1859" "Friday" "16" "December" "2016" "00:36:45" "+0100" "Heiko Schlittermann" "hs@schlittermann.de" "<20161215233645.GJ29010@jumper.schlittermann.de>" "53" "[oss-security] CVE Request - Exim 4.69-4.87 - disclosure of private information" nil nil nil "12" "2016121523:36:45" "[oss-security] CVE Request - Exim 4.69-4.87 - disclosure of private information" (number mark "U       hs@schlitter Dec 16   53/1859  " thread-indent "\"[oss-security] CVE Request - Exim 4.69-4.87 - disclosure of private information\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 11890 invoked by uid 550); 16 Dec 2016 01:12:39 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 23978 invoked from network); 15 Dec 2016 23:36:58 -0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=schlittermann.de; s=dd201504; h=Content-Type:MIME-Version:Message-ID:
	Subject:To:From:Date:Cc:Content-Description:Content-ID:
	Content-Transfer-Encoding:In-Reply-To:References:Resent-Cc:Resent-To;
	bh=zVcbDkqYJDv1/o2A+ti4U7d4o6mndXPSMob+nhpx9b4=; b=NIYARShKXFtyCHKLurYpKltETZ
	APyI5zrS0/mFLx7tiLxamlmDW/toPI4rqDS5R1+iv8k0kjGroSUwelmnEe48tKo24CQN6Z1euyqMG
	Gbrp1vBRr++JH6MaIeyDir9/swM+pZXPsrnj+3hHOmgTt43fDGJ66FzI6VmsEXEw8i3E=;
Date: Fri, 16 Dec 2016 00:36:45 +0100
From: Heiko Schlittermann <hs@schlittermann.de>
To: oss-security <oss-security@lists.openwall.com>
Message-ID: <20161215233645.GJ29010@jumper.schlittermann.de>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="IJ3xY7yfhADm8R0x"
Content-Disposition: inline
Organization: schlittermann -- internet & unix support
X-Phone: +49.172.7909055
X-GPG-Fingerprint: E5CA 331D 44AB 8E4C 806F  DBEE 2610 1B62 F693 76CE
X-GPG-Key-ID: F69376CE
User-Agent: Mutt/1.5.23 (2014-03-12)
Subject: [oss-security] CVE Request - Exim 4.69-4.87 - disclosure of private information

--IJ3xY7yfhADm8R0x
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hello,

please assign a CVE ID

Product:    Exim
Versions:   4.69 -> 4.87
Impact:     Possible leak of private information to a remote attacker
Reference:  https://bugs.exim.org/show_bug.cgi?id=3D1996 (placeholder curre=
ntly)
Requester:  Heiko Schlittermann <hs@schlittermann.de> (Exim Developer)
Credits:    Bjoern Jacke <bjoern@j3e.de>

If several conditions are met, Exim leaks private information to
a remote attacker.

A patch exists and is under testing already.
Backports to older versions are under development.

As soon as the tests are passed we'll send an announcement
to the "Operating system distribution security contacts list" and
ask for packaging fixed versions.

    Best regards from Dresden/Germany
    Viele Gr=C3=BC=C3=9Fe aus Dresden
    Heiko Schlittermann              - Exim developer
--=20
 SCHLITTERMANN.de ---------------------------- internet & unix support -
 Heiko Schlittermann, Dipl.-Ing. (TU) - {fon,fax}: +49.351.802998{1,3} -
 gnupg encrypted messages are welcome --------------- key ID: F69376CE -
 ! key id 7CBF764A and 972EAC9F are revoked since 2015-01 ------------ -

--IJ3xY7yfhADm8R0x
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: Digital signature

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1

iQEcBAEBCgAGBQJYUykMAAoJEGoXY4qgRQz1csYH/1gq+3/sZzDThQHF9fvu8mrl
1OzlRfy1pgOV2yjscEOt60ElPD/2K7xHRQGEa8gjt35Ck80VgzMMQX2qnGJ1mxv3
7rnsQVwLnHfeTgyV+9QJmwTpn/leKJrSts5Xb0fe/NUeiB1lxg+FJ+Ym4c+v0r5s
T0FpzhvMmnNbL0akGCY9WQoPahyMcmgZ/RMDPCOlLCHM0JCEE/vwwQLcCQkJ3+TH
bCI4vtzUDHfzogS1AKGCcXysnj22dH0IUDAa7z1EUQv6Gyg6He3uHgLnX3mpV9JS
SqD+GLBtso/FZNN7hVhsjA/IyPdXeBFOrp2SUhwuQDDrwDs357qtVgybGqRzlco=
=nvHI
-----END PGP SIGNATURE-----

--IJ3xY7yfhADm8R0x--
