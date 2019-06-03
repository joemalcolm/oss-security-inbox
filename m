X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["2424" "Monday" "3" "June" "2019" "22:19:23" "+0200" "Heiko Schlittermann" "hs@schlittermann.de" "<20190603201923.akdidsegyfzq3ykj@jumper.schlittermann.de>" "70" "[oss-security] CVE-2019-10149: Exim 4.87 to 4.91: possible remote exploit" nil nil nil "6" "2019060320:19:23" "[oss-security] CVE-2019-10149: Exim 4.87 to 4.91: possible remote exploit" (number mark "U       hs@schlitter Jun  3   70/2424  " thread-indent "\"[oss-security] CVE-2019-10149: Exim 4.87 to 4.91: possible remote exploit\"\n") nil nil nil nil nil nil nil nil nil "[oss-security] CVE-2019-10149: Exim 4.87 to 4.91: possible remote exploit" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 1719 invoked by uid 550); 4 Jun 2019 09:40:13 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 11720 invoked from network); 3 Jun 2019 20:19:35 -0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=schlittermann.de; s=dd201504; h=Content-Type:MIME-Version:Message-ID:
	Subject:To:From:Date:Cc:Content-Description:Content-ID:
	Content-Transfer-Encoding:In-Reply-To:References:Resent-Cc:Resent-To;
	bh=2lclSOjUQl2rNlQ4Oeyr8LFQNTl1OC1pC3FlG8xUvbU=; b=R5eTEkqD/uOcWHYMqFh0X5oibr
	0nffzmBSu8tVjsRysI6R5Ou+O+1SsyvrsUhtfUvOTWzHhPRJCDuKK2UuxdLUMqEDhkdPZHFJD+mtf
	/m3AKYgkX+wUe+LQ8hnBO1Trlqa3eQMDrJwmK83Nwo9Exx7oSNmudEAy6ryq5fjauVX0=;
Date: Mon, 3 Jun 2019 22:19:23 +0200
From: Heiko Schlittermann <hs@schlittermann.de>
To: oss-security@lists.openwall.com
Message-ID: <20190603201923.akdidsegyfzq3ykj@jumper.schlittermann.de>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="y6v6vtkvoi6qfk2h"
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
User-Agent: NeoMutt/20170113 (1.7.2)
Subject: [oss-security] CVE-2019-10149: Exim 4.87 to 4.91: possible remote exploit

--y6v6vtkvoi6qfk2h
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

CVE-2019-10149 Exim 4.87 to 4.91
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D

We received a report of a possible remote exploit.  Currently there is no
evidenice of an active use of this exploit.

A patch exists already, is being tested, and backported to all
versions we released since (and including) 4.87.

The severity depends on your configuration.  It depends on how close to
the standard configuration your Exim runtime configuration is. The
closer the better.

Exim 4.92 is not vulnerable.

Next steps:

* t0:    Distros will get access to our non-public security Git repo
         (access is granted based on the SSH keys that are known to us)

* t0+7d: Coordinated Release Date: Distros should push the patched
         version to their repos. The Exim maintainers will publish
         the fixed source to the official and public Git repo.

t0    is expected to be 2019-06-04, 10:00 UTC
t0+7d is expected to be 2019-06-04, 10:00 UTC


Timeline
--------

* 2019-05-27 Report from Qualys to exim-security list
* 2019-05-27 Patch provided by Jeremy Harris
* 2019-05-29 CVE-2019-10149 assigned from Qualys via RedHat
* 2019-06-03 This announcement

Updates will follow, here and on
http://www.exim.org/static/doc/security/CVE-2019-10149.txt

    Best regards from Dresden/Germany
    Viele Gr=C3=BC=C3=9Fe aus Dresden
    Heiko Schlittermann
--
 SCHLITTERMANN.de ---------------------------- internet & unix support -
 Heiko Schlittermann, Dipl.-Ing. (TU) - {fon,fax}: +49.351.802998{1,3} -
 gnupg encrypted messages are welcome --------------- key ID: F69376CE -
 ! key id 7CBF764A and 972EAC9F are revoked since 2015-01 ------------ -

--y6v6vtkvoi6qfk2h
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEE0L/WueylaUpvFJ3Or0zGdqa2wUIFAlz1gMoACgkQr0zGdqa2
wUL1kggA2GotUsi/TJQ4MF60Q5Dj4oYs9kNpKSCsOhhqAhI3Bq29sOGVUqT/3qSK
6GBTxT0pCrfnQc2TCq9pIH5gGcmOMxBQcQ1shV3qdg5699J25Yxo2PheSZr/pJRw
2PQTqCXO7pG7jWJp7FngKxt2/Fzy6dAjjBWR8iUnjcVmbQaURQs3jGBFBvdwEWFs
M/gt7hTcAosJ2XiSpUwsSMslaWOg1rNm0Lw8vH2qj0qLuSW2BrZVQ1f29xFKFpdb
qPignYqsVYmP5zd+joDo2pr1ujHdL721V/lLsyDsSwYovz8ixN1xJn/454A35Ss7
suwju/QuIzlJ6jQj21P596GOdUJPfA==
=fB8/
-----END PGP SIGNATURE-----

--y6v6vtkvoi6qfk2h--
