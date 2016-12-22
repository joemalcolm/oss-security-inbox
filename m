X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1791" "Thursday" "22" "December" "2016" "16:36:21" "+0100" "Heiko Schlittermann" "hs@schlittermann.de" "<20161222153621.GL5082@jumper.schlittermann.de>" "47" "Re: [oss-security] CVE-2016-9963 Exim private information leak" nil nil nil "12" "2016122215:36:21" "[oss-security] CVE-2016-9963 Exim private information leak" (number mark "U       hs@schlitter Dec 22   47/1791  " thread-indent "\"Re: [oss-security] CVE-2016-9963 Exim private information leak\"\n") "<20161222104035.GE5082@jumper.schlittermann.de>" ("<20161215233645.GJ29010@jumper.schlittermann.de>" "<8c7f77c36aa246b9ad31e46f6e733414@imshyb02.MITRE.ORG>" "<20161218175925.GE31981@jumper.schlittermann.de>" "<20161220225935.GH19629@jumper.schlittermann.de>" "<20161221205952.GA81339@wopr>" "<20161221232409.GN19629@jumper.schlittermann.de>" "<20161222005733.GB81339@wopr>" "<20161222104035.GE5082@jumper.schlittermann.de>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 28400 invoked by uid 550); 22 Dec 2016 15:59:56 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 11309 invoked from network); 22 Dec 2016 15:36:34 -0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=schlittermann.de; s=dd201504; h=In-Reply-To:Content-Type:MIME-Version:
	References:Message-ID:Subject:To:From:Date:Cc:Content-Description:Content-ID:
	Content-Transfer-Encoding:Resent-To;
	bh=58UU6YDqTVKf3w0H3DeYkFJ0ACCVKJgTGu3zQ5hHa7w=; b=g5UyDzCFvgI45vgpHlJ271vjVv
	bKDMxFAWCj/34L8o8eUwQ059/yuz3thhlvEzVtZ1RxWPE9kpMeqwtMg3abHOJDI+EX8U9WTvZcJrR
	AttZy2b7P0UPm28dRuZogdwgC0X07KSHJ6f9WBwzr5HJ9aT2YaczbDDxlV0ofO94dT78=;
Date: Thu, 22 Dec 2016 16:36:21 +0100
From: Heiko Schlittermann <hs@schlittermann.de>
To: oss-security@lists.openwall.com
Message-ID: <20161222153621.GL5082@jumper.schlittermann.de>
References: <20161215233645.GJ29010@jumper.schlittermann.de>
 <8c7f77c36aa246b9ad31e46f6e733414@imshyb02.MITRE.ORG>
 <20161218175925.GE31981@jumper.schlittermann.de>
 <20161220225935.GH19629@jumper.schlittermann.de>
 <20161221205952.GA81339@wopr>
 <20161221232409.GN19629@jumper.schlittermann.de>
 <20161222005733.GB81339@wopr>
 <20161222104035.GE5082@jumper.schlittermann.de>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="WuT04sMzYDXq8et0"
Content-Disposition: inline
In-Reply-To: <20161222104035.GE5082@jumper.schlittermann.de>
Organization: schlittermann -- internet & unix support
X-Phone: +49.172.7909055
X-GPG-Fingerprint: E5CA 331D 44AB 8E4C 806F  DBEE 2610 1B62 F693 76CE
X-GPG-Key-ID: F69376CE
User-Agent: Mutt/1.5.23 (2014-03-12)
Subject: Re: [oss-security] CVE-2016-9963 Exim private information leak

--WuT04sMzYDXq8et0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Heiko Schlittermann <hs@schlittermann.de> (Do 22 Dez 2016 11:40:35 CET):
> Kurt H Maier <khm@sciops.net> (Do 22 Dez 2016 01:57:33 CET):
> > On Thu, Dec 22, 2016 at 12:24:09AM +0100, Heiko Schlittermann wrote:
> > >=20
> > > In case the distros are ready already, we could release on 23rd, but I
> > > need feedbeck from the distros and ack from the other developers.
> > >=20
> > Please pursue this possibility.
>=20
> Ok, I asked the distro@vs=E2=80=A6 list to get clearance. If the major di=
stros
> supporting Exim give their ok, we're prepared to release sooner. Stay
> tuned.

Still one major distro is missing from the list of OKs. :-((

    Best regards from Dresden/Germany
    Viele Gr=C3=BC=C3=9Fe aus Dresden
    Heiko Schlittermann
--=20
 SCHLITTERMANN.de ---------------------------- internet & unix support -
 Heiko Schlittermann, Dipl.-Ing. (TU) - {fon,fax}: +49.351.802998{1,3} -
 gnupg encrypted messages are welcome --------------- key ID: F69376CE -
 ! key id 7CBF764A and 972EAC9F are revoked since 2015-01 ------------ -

--WuT04sMzYDXq8et0
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: Digital signature

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1

iQEcBAEBCgAGBQJYW/L1AAoJEGoXY4qgRQz1dbQH/1Eux9eMtXTKX9Xh/Nvi2HFU
+guzvxi3dHcX7iFNGVbti67Vs7+AKH4cWZY3ZZK5ZyIOszPavXOhbNFoOESoJI7q
XFQROF/FdpHpN6bhsIF/sMEbemXgrhtrnFqQKntpRi33gc+Ms/pjLTfsW4KhE3NR
Z9V3RqakAxDu4ni7MNlUERgDOtB3Pm7c9oNFV1J2aHIF7xu7++eXaQqfxUIQ/DzR
S+igU11fou/2AeeCne3uKaCqWWsmn6z0JUEd2eVVgJXG5A/LT5qp1CuokMSZpVjA
IL2fGhkVA2PNdObZig/h5KgXO6nosAp84xma/6dTyL02E+xqg8IchkA+lX4SxsY=
=Qv8L
-----END PGP SIGNATURE-----

--WuT04sMzYDXq8et0--
