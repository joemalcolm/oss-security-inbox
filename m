X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1772" "Tuesday" "4" "June" "2019" "12:15:19" "+0200" "Heiko Schlittermann" "hs@schlittermann.de" "<20190604101519.cpb7hppii3oa4epw@jumper.schlittermann.de>" "51" "[oss-security] Re: CVE-2019-10149: Exim 4.87 to 4.91: possible remote exploit" nil nil nil "6" "2019060410:15:19" "[oss-security] Re: CVE-2019-10149: Exim 4.87 to 4.91: possible remote exploit" (number mark "U       hs@schlitter Jun  4   51/1772  " thread-indent "\"[oss-security] Re: CVE-2019-10149: Exim 4.87 to 4.91: possible remote exploit\"\n") "<20190603201923.akdidsegyfzq3ykj@jumper.schlittermann.de>" ("<20190603201923.akdidsegyfzq3ykj@jumper.schlittermann.de>") nil nil nil nil nil nil nil "[oss-security] Re: CVE-2019-10149: Exim 4.87 to 4.91: possible remote exploit" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 1697 invoked by uid 550); 4 Jun 2019 10:36:42 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 5707 invoked from network); 4 Jun 2019 10:15:32 -0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=schlittermann.de; s=dd201504; h=In-Reply-To:Content-Type:MIME-Version:
	References:Message-ID:Subject:To:From:Date:Cc:Content-Description:Content-ID:
	Content-Transfer-Encoding:Resent-Cc:Resent-To;
	bh=dKr9n2nYoV8IPtonVConBX1NhRv4Ni7+iL1YQ51suYI=; b=JMcMLhrTCnxswshN2baXnZ8u1W
	qmDMqN8LEDa7WtF5+QLHiTpycJp6IT+gJ0u/YO70bhfgC3gCCA2G6LnK8XyFFtnvWdH23HL4qyMLU
	RKrn3+N+qpqN9SVDOn16tjipX8FV38uew3DdOTf16goriYBJfRfInP01LT6AstFbcxdQ=;
Date: Tue, 4 Jun 2019 12:15:19 +0200
From: Heiko Schlittermann <hs@schlittermann.de>
To: oss-security@lists.openwall.com
Message-ID: <20190604101519.cpb7hppii3oa4epw@jumper.schlittermann.de>
References: <20190603201923.akdidsegyfzq3ykj@jumper.schlittermann.de>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="ivafbrwrczhhuouy"
Content-Disposition: inline
In-Reply-To: <20190603201923.akdidsegyfzq3ykj@jumper.schlittermann.de>
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
Subject: [oss-security] Re: CVE-2019-10149: Exim 4.87 to 4.91: possible remote exploit

--ivafbrwrczhhuouy
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hi,

our non-public security Git repo is

    ssh://git@git.exim.org/exim.git

Access is granted to the known and trusted SSH keys we have.

The branch fix-CVE-2019-10149 contains the fix. It is one commit ahead
of the exim-4_91+fixes branch and we'll eventuelly merge it into the
+fixes branch.

The relevant commit is d740d2111f189760593a303124ff6b9b1f83453d and is
signed with my GPG key, the same key that signed this message.

If you need help backporting it to older releases, please do not
hesitate to contact us.

The planned CRD (coordinated release date) is 2019-06-11 10.00 UTC.
Please do not publish any package or source until this date.

    Best regards from Dresden/Germany
    Viele Gr=C3=BC=C3=9Fe aus Dresden
    Heiko Schlittermann
--
 SCHLITTERMANN.de ---------------------------- internet & unix support -
 Heiko Schlittermann, Dipl.-Ing. (TU) - {fon,fax}: +49.351.802998{1,3} -
 gnupg encrypted messages are welcome --------------- key ID: F69376CE -
 ! key id 7CBF764A and 972EAC9F are revoked since 2015-01 ------------ -

--ivafbrwrczhhuouy
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEE0L/WueylaUpvFJ3Or0zGdqa2wUIFAlz2RLcACgkQr0zGdqa2
wUJYKAf+OTTAC63kY0GkvwOBvy2ChdUbQBpnhliAxj5awN7QrVwFU9nY+P8tH6GY
9bd1z7cgmWPj3CsTXgU00fDKaav+IFBli/rPddPEzTD0NMfA2oWyuo0GPaalyMO6
sY0Emn2cruLId1KG1Rr7WgZPWVj4BFxvOQdy8n00rvYrvILSj1ZWPHErzrmvLJLf
+lMDNo+avtnDXwte05d9rMXD+0TQLsBqqkewrjI/Ht1GsZ3lP9mZ2teUnwNrHpBi
ZPePpfvBGZRmFJcB1/jVDR2uD+tWbeU9f7NZH7w6106OZwV0BuDOu9z39hozYyIt
LCuFQNC4UKz8KZvnNs+cMhaHlGp1tg==
=zXv1
-----END PGP SIGNATURE-----

--ivafbrwrczhhuouy--
