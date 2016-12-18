X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["2021" "Sunday" "18" "December" "2016" "18:59:25" "+0100" "Heiko Schlittermann" "hs@schlittermann.de" "<20161218175925.GE31981@jumper.schlittermann.de>" "58" "[oss-security] CVE-2016-9963 Exim private information leak" nil nil nil "12" "2016121817:59:25" "[oss-security] CVE-2016-9963 Exim private information leak" (number mark "U       hs@schlitter Dec 18   58/2021  " thread-indent "\"[oss-security] CVE-2016-9963 Exim private information leak\"\n") "<8c7f77c36aa246b9ad31e46f6e733414@imshyb02.MITRE.ORG>" ("<20161215233645.GJ29010@jumper.schlittermann.de>" "<8c7f77c36aa246b9ad31e46f6e733414@imshyb02.MITRE.ORG>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 28301 invoked by uid 550); 18 Dec 2016 20:28:45 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 26434 invoked from network); 18 Dec 2016 17:59:38 -0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=schlittermann.de; s=dd201504; h=In-Reply-To:Content-Type:MIME-Version:
	References:Message-ID:Subject:To:From:Date:Cc:Content-Description:Content-ID:
	Content-Transfer-Encoding:Resent-To;
	bh=rWLS4rNDhmcI0n1bYskfMjg7yX3EKRJoEZrJXDvFKcI=; b=Hwlf/fAqzkTYqjpxlBqiCbf/1R
	+Js50HM0hxorstxi6gRH/CM+Mlc90LkXDRMOABWqL/FkRm+sxmD8OPdQBLvyPGtdrzkJRm6kXmauU
	0KBiY5VsEnQIErKizVnpL6kgXVx2kYc/RYDr8iKWmtdjXFwy9lP4aJL7YSu3FyVrJEKQ=;
Date: Sun, 18 Dec 2016 18:59:25 +0100
From: Heiko Schlittermann <hs@schlittermann.de>
To: oss-security@lists.openwall.com
Message-ID: <20161218175925.GE31981@jumper.schlittermann.de>
References: <20161215233645.GJ29010@jumper.schlittermann.de>
 <8c7f77c36aa246b9ad31e46f6e733414@imshyb02.MITRE.ORG>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="sXc4Kmr5FA7axrvy"
Content-Disposition: inline
In-Reply-To: <8c7f77c36aa246b9ad31e46f6e733414@imshyb02.MITRE.ORG>
Organization: schlittermann -- internet & unix support
X-Phone: +49.172.7909055
X-GPG-Fingerprint: E5CA 331D 44AB 8E4C 806F  DBEE 2610 1B62 F693 76CE
X-GPG-Key-ID: F69376CE
User-Agent: Mutt/1.5.23 (2014-03-12)
Subject: [oss-security] CVE-2016-9963 Exim private information leak

--sXc4Kmr5FA7axrvy
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hello,

cve-assign@mitre.org <cve-assign@mitre.org> (Fr 16 Dez 2016 06:33:41 CET):
>=20
> Use CVE-2016-9963.

Today we released Exim 4.87.1 (security fix for 4.87)
              and Exim 4.88   (new release)
into a protected repository.

This, and the details of the CVE-2016-9963, where announced to
distro@vs.openwall.org and to a limited set of known maintainers,
contributors and friends of the Exim project.

On Dec, 25th we will make the details and the above mentioned releases
available to the public.

If you feel that we missed you, please contact me via GPG signed mail,
send me your public SSH key and explain, why we should grant to access
already now.

Thank you for your understanding.

PS: My GPG key expires in January, an updated version should be available
through the keyservers and on
https://schlittermann.de/keys/gpg/hs@schlittermann.de/F69376CE.asc

    Best regards from Dresden/Germany
    Viele Gr=C3=BC=C3=9Fe aus Dresden
    Heiko Schlittermann
--=20
 SCHLITTERMANN.de ---------------------------- internet & unix support -
 Heiko Schlittermann, Dipl.-Ing. (TU) - {fon,fax}: +49.351.802998{1,3} -
 gnupg encrypted messages are welcome --------------- key ID: F69376CE -
 ! key id 7CBF764A and 972EAC9F are revoked since 2015-01 ------------ -

--sXc4Kmr5FA7axrvy
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: Digital signature

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1

iQEcBAEBCgAGBQJYVs55AAoJEGoXY4qgRQz1R+sH/iLmzaFqo3vDW117CnA0GPKJ
VxQFxzfyn2sXvzOgwuTJ98p3pJNjFnpT0AmDEKo6Wmniz+5V9MQgfctKs4sjyChx
QSf4Athtga2vDxIRuyp2yGMOToX7ZcxVZ1PxKsRr5FR3bKHjPa4iEqf9gh6YEnG2
/3PcthQdN7s+iX8/YSAxmgN/J8yg+ECHa+r3zgfq/jbQG+GwYO9zbWtfkrLL25Jv
mt3gnl5I/kzxfsvc+h4rGcW6S7oiamPUQoFMWjmW+GEBaEI14h0n2L7Z/5ihkdeC
YHzL6yXtZ4GDq2cM7gQuKzOyeY1D9fYOtM1NLA4oZpLjEFleMBGIGG7QUOtWMIg=
=GFiW
-----END PGP SIGNATURE-----

--sXc4Kmr5FA7axrvy--
