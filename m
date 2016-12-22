X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1632" "Thursday" "22" "December" "2016" "11:40:35" "+0100" "Heiko Schlittermann" "hs@schlittermann.de" "<20161222104035.GE5082@jumper.schlittermann.de>" "44" "Re: [oss-security] CVE-2016-9963 Exim private information leak" nil nil nil "12" "2016122210:40:35" "[oss-security] CVE-2016-9963 Exim private information leak" (number mark "U       hs@schlitter Dec 22   44/1632  " thread-indent "\"Re: [oss-security] CVE-2016-9963 Exim private information leak\"\n") "<20161222005733.GB81339@wopr>" ("<20161215233645.GJ29010@jumper.schlittermann.de>" "<8c7f77c36aa246b9ad31e46f6e733414@imshyb02.MITRE.ORG>" "<20161218175925.GE31981@jumper.schlittermann.de>" "<20161220225935.GH19629@jumper.schlittermann.de>" "<20161221205952.GA81339@wopr>" "<20161221232409.GN19629@jumper.schlittermann.de>" "<20161222005733.GB81339@wopr>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 5859 invoked by uid 550); 22 Dec 2016 10:51:56 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 30470 invoked from network); 22 Dec 2016 10:40:50 -0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=schlittermann.de; s=dd201504; h=In-Reply-To:Content-Type:MIME-Version:
	References:Message-ID:Subject:To:From:Date:Cc:Content-Description:Content-ID:
	Content-Transfer-Encoding:Resent-To;
	bh=73HvU4RJ+QZGfE8BgpXzPm/6RMye5Xhd46lro2wozK4=; b=Gi4fjBXakDRrRHJM8UIbHqGVqu
	NQyBBQ9DZ8laLdHQY9WJSl5pR9xE6XECldCOIQSy8c4auvqL7SXtLKWXbMSP4zNEdad3ddV08bIKc
	7B+BEQbeMu+i9VO9EoZ2J9ItUIfafYrRKuoVR7Y0mbR6bRjcDl3+7/ZgDzeM4LFOcYn0=;
Date: Thu, 22 Dec 2016 11:40:35 +0100
From: Heiko Schlittermann <hs@schlittermann.de>
To: oss-security@lists.openwall.com
Message-ID: <20161222104035.GE5082@jumper.schlittermann.de>
References: <20161215233645.GJ29010@jumper.schlittermann.de>
 <8c7f77c36aa246b9ad31e46f6e733414@imshyb02.MITRE.ORG>
 <20161218175925.GE31981@jumper.schlittermann.de>
 <20161220225935.GH19629@jumper.schlittermann.de>
 <20161221205952.GA81339@wopr>
 <20161221232409.GN19629@jumper.schlittermann.de>
 <20161222005733.GB81339@wopr>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="vmttodhTwj0NAgWp"
Content-Disposition: inline
In-Reply-To: <20161222005733.GB81339@wopr>
Organization: schlittermann -- internet & unix support
X-Phone: +49.172.7909055
X-GPG-Fingerprint: E5CA 331D 44AB 8E4C 806F  DBEE 2610 1B62 F693 76CE
X-GPG-Key-ID: F69376CE
User-Agent: Mutt/1.5.23 (2014-03-12)
Subject: Re: [oss-security] CVE-2016-9963 Exim private information leak

--vmttodhTwj0NAgWp
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Kurt H Maier <khm@sciops.net> (Do 22 Dez 2016 01:57:33 CET):
> On Thu, Dec 22, 2016 at 12:24:09AM +0100, Heiko Schlittermann wrote:
> >=20
> > In case the distros are ready already, we could release on 23rd, but I
> > need feedbeck from the distros and ack from the other developers.
> >=20
> Please pursue this possibility.

Ok, I asked the distro@vs=E2=80=A6 list to get clearance. If the major dist=
ros
supporting Exim give their ok, we're prepared to release sooner. Stay
tuned.

    Best regards from Dresden/Germany
    Viele Gr=C3=BC=C3=9Fe aus Dresden
    Heiko Schlittermann
--=20
 SCHLITTERMANN.de ---------------------------- internet & unix support -
 Heiko Schlittermann, Dipl.-Ing. (TU) - {fon,fax}: +49.351.802998{1,3} -
 gnupg encrypted messages are welcome --------------- key ID: F69376CE -
 ! key id 7CBF764A and 972EAC9F are revoked since 2015-01 ------------ -

--vmttodhTwj0NAgWp
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: Digital signature

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1

iQEcBAEBCgAGBQJYW62iAAoJEGoXY4qgRQz1KtAH/RXDtAV/DLUTnShr9NWCPT33
IViU1s91u/JgZ4NQ5uxz0DWfZc5Xso0AoxYkKgcg+xYxLkJpC/oih0zVVF03J6l0
IF3/FzRv9EYlOrkRQARkJYrjuKGbVz12QrS1XYb4d5FVZco9mssrbH3mgbWYXeev
12zVsxDIubngplZK/7mjAT7Zs2w+eDSq9gX/JcT5v9lwL+nCtHB6lnSbDKlcPD49
RiaIkDWBWcnQtrLrWvpXCsyGmlnOryRTWuADTZhioFJfWoeLebdQDVxDFf0KbYSz
MS/6LtAx5wSgChvdv5AoNAiBX76hZ1fAumik0Ubf0s1LFCQFQ2gDkWWGoFYce3o=
=LJrk
-----END PGP SIGNATURE-----

--vmttodhTwj0NAgWp--
