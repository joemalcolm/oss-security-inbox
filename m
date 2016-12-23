X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["2124" "Friday" "23" "December" "2016" "11:59:06" "+0100" "Heiko Schlittermann" "hs@schlittermann.de" "<20161223105906.GO5082@jumper.schlittermann.de>" "61" "[oss-security] CVE-2016-9963 (Was: CVE Request - Exim 4.69-4.87 - disclosure of private information)" nil nil nil "12" "2016122310:59:06" "[oss-security] CVE-2016-9963 (Was: CVE Request - Exim 4.69-4.87 - disclosure of private information)" (number mark "U       hs@schlitter Dec 23   61/2124  " thread-indent "\"[oss-security] CVE-2016-9963 (Was: CVE Request - Exim 4.69-4.87 - disclosure of private information)\"\n") "<20161215233645.GJ29010@jumper.schlittermann.de>" ("<20161215233645.GJ29010@jumper.schlittermann.de>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 32552 invoked by uid 550); 23 Dec 2016 11:05:31 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 26606 invoked from network); 23 Dec 2016 10:59:19 -0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=schlittermann.de; s=dd201504; h=In-Reply-To:Content-Type:MIME-Version:
	References:Message-ID:Subject:To:From:Date:Cc:Content-Description:Content-ID:
	Content-Transfer-Encoding:Resent-To;
	bh=B499UuFLsLfHTBReb7zqAwD4mpblnFoY4HCJYQ7eTUI=; b=qXGFbgKOnqOq2MAW8h8ksviWM1
	Ed9ldpTU8jj4F6ekeFqu/EO1U9Yfes2pX3bMHRZwAJa6R8McC1oLeg0kWrGpp8J54Z3wR2pdCfNwl
	csQy/fnXJMwpmiSOLUhIArhvrj3wVsmFtL2eQAXBIigpbNFQp9HkPkz941EpV2YI4oOM=;
Date: Fri, 23 Dec 2016 11:59:06 +0100
From: Heiko Schlittermann <hs@schlittermann.de>
To: oss-security <oss-security@lists.openwall.com>
Message-ID: <20161223105906.GO5082@jumper.schlittermann.de>
References: <20161215233645.GJ29010@jumper.schlittermann.de>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="lLR1BQqf7txDtYcF"
Content-Disposition: inline
In-Reply-To: <20161215233645.GJ29010@jumper.schlittermann.de>
Organization: schlittermann -- internet & unix support
X-Phone: +49.172.7909055
X-GPG-Fingerprint: E5CA 331D 44AB 8E4C 806F  DBEE 2610 1B62 F693 76CE
X-GPG-Key-ID: F69376CE
User-Agent: Mutt/1.5.23 (2014-03-12)
Subject: [oss-security] CVE-2016-9963 (Was: CVE Request - Exim 4.69-4.87 - disclosure of
 private information)

--lLR1BQqf7txDtYcF
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hello,

Heiko Schlittermann <hs@schlittermann.de> (Fr 16 Dez 2016 00:36:45 CET):
=E2=80=A6
> Product:    Exim
> Versions:   4.69 -> 4.87
> Impact:     Possible leak of private information to a remote attacker
> Reference:  https://bugs.exim.org/show_bug.cgi?id=3D1996 (placeholder cur=
rently)
> Requester:  Heiko Schlittermann <hs@schlittermann.de> (Exim Developer)
> Credits:    Bjoern Jacke <bjoern@j3e.de>
>=20
> If several conditions are met, Exim leaks private information to
> a remote attacker.
=E2=80=A6

As at least one major distro isn't ready yet, we'll keep our initial schedu=
le
and release the fixed versions on Dec, 25th, 10:00 UTC.

You'll find the versions in the usual places

    git://git.exim.org/exim.git         Tags exim-4_88, exim-4_87_1
    ftp://ftp.exim.org/pub/exim/exim4/          4.88
    ftp://ftp.exim.org/pub/exim/exim4/old/      4.87.1

If you have older versions running, you should to at least 4.87.1.

We're sorry for the release date.

    Best regards from Dresden/Germany
    Viele Gr=C3=BC=C3=9Fe aus Dresden
    Heiko Schlittermann
--=20
 SCHLITTERMANN.de ---------------------------- internet & unix support -
 Heiko Schlittermann, Dipl.-Ing. (TU) - {fon,fax}: +49.351.802998{1,3} -
 gnupg encrypted messages are welcome --------------- key ID: F69376CE -
 ! key id 7CBF764A and 972EAC9F are revoked since 2015-01 ------------ -

--lLR1BQqf7txDtYcF
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: Digital signature

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1

iQEcBAEBCgAGBQJYXQN5AAoJEGoXY4qgRQz1W2cH/3fOMgUjfWULIqWJ69vPdsg0
jNEZSwltLvq4tKZTJYKn+dJYjzX6xMxYK5Hlbl8TQ1CAejoJBdI6Z4CTvsfNhI4u
KKAAX4PnMLr2tx+cYNd6/1p4wMOWFPtmocjDBVqJ33IkOvK6VD0lrIqqaPY2dW6F
T0KmlLJT6HAYGMUYbNsE8Sjllx3JXV343dCPJWrP5ULcBGf2oOg5t6ygHAKa38JL
Ysa8irVS+7SFC9QIGxQEDdf6OSmK/e09fpNKMVQ5JR5U4HMqftJcF7pS9MGjQCYF
hBQ2E34FiwtcKL0u3mcfoVTN+Jct+H+e08uMiL4SKeI7kM7jV7Yo5Lr9jrygggs=
=HjMX
-----END PGP SIGNATURE-----

--lLR1BQqf7txDtYcF--
