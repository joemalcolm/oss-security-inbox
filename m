Received: (qmail 3749 invoked by uid 550); 29 May 2023 17:23:26 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 25619 invoked from network); 29 May 2023 17:15:48 -0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=debian.org;
	s=smtpauto.stravinsky; h=X-Debian-User:Content-Type:MIME-Version:References:
	In-Reply-To:Message-ID:Date:Subject:To:From:Reply-To:Cc:
	Content-Transfer-Encoding:Content-ID:Content-Description;
	bh=Ph02dqke/IbFnscLy6Fb7DnpqlZqbCa6tdn+gzDxB/w=; b=HYZhFHQtXrsZCN9MBD8PgRoXx1
	UO6weodaA9M0e0rvzbZCBVXCqJWro1WijakUR0AtO+hNp9+o1TgzCwzIrDBiOC8gBmTAQsFMxLkZ6
	HGF4TH7FoH5XjhURE49EqLRPvZfTZ2SvDUQKyX0w8eX7mLtWaOhTqP9kcj6HTd6ihTRh4+ypPnrR1
	EDwGKRrcTRp7U3igSg1C4sl0Q95SSEbSn7ytfM1CETmKMfLKs6QUIc52hRClymmNrQNziVs+Hxzdt
	dztGAlm9+13yd4a3d5uVuSN4m4ZxJPNJbXbnt9Tsw2jGNY0IxdWg36EBBLShhy8G5s3UMru+GZLdJ
	lE0g7v+w==;
From: Bastien =?ISO-8859-1?Q?Roucari=E8s?= <rouca@debian.org>
To: oss-security <oss-security@lists.openwall.com>
Date: Mon, 29 May 2023 17:15:31 +0000
Message-ID: <5992983.lOV4Wx5bFT@portable-bastien>
In-Reply-To: <2308609.bdg04gU6LQ@portable-bastien>
References: <2308609.bdg04gU6LQ@portable-bastien>
MIME-Version: 1.0
Content-Type: multipart/signed; boundary="nextPart4887715.31r3eYUQgx";
 micalg="pgp-sha512"; protocol="application/pgp-signature"
X-Debian-User: rouca
Subject: [oss-security] Re: Stack overflow in imagemagick coders/tiff.c

--nextPart4887715.31r3eYUQgx
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset="UTF-8"; protected-headers="v1"
From: Bastien =?ISO-8859-1?Q?Roucari=E8s?= <rouca@debian.org>
To: oss-security <oss-security@lists.openwall.com>
Subject: Re: Stack overflow in imagemagick coders/tiff.c
Date: Mon, 29 May 2023 17:15:13 +0000
Message-ID: <5992983.lOV4Wx5bFT@portable-bastien>
In-Reply-To: <2308609.bdg04gU6LQ@portable-bastien>
References: <2308609.bdg04gU6LQ@portable-bastien>
MIME-Version: 1.0

Le lundi 29 mai 2023, 08:11:18 UTC Bastien Roucari=C3=A8s a =C3=A9crit :
Hi following this bug I will also ask a few other CVE for imagemagick tiff =
coder (BTW cc me I am not subscribed)

> Hi,

CVE#0
>=20
> Reading changelog and code of imagemagick, I want to report a stack overf=
low with crafted tiff file in imagemagick
>=20
> Fixed (after 6.9.12-26) by:
> https://github.com/ImageMagick/ImageMagick6/commit/85a370c79afeb45a97842b=
0959366af5236e9023
>=20
> Original reporter was Muhammad Aldo Firmansyah
>=20
> Thanks=20
>=20
> Bastien (rouca)

CVE #1

commit 7dbefda1c14e32d7bc4d3762a3a54f3ddaa85dd1
Author: Dirk Lemstra <dirk@lemstra.org>
Date:   Sat Feb 19 07:46:46 2022 +0100

    Raise exception when image could not be read but no exception was raise=
d.
=20=20=20=20
    Bail out in case of corrupted image
=20=20=20=20
    https://github.com/ImageMagick/ImageMagick6/commit/3e15c68efcb1e6383c93=
e7dfe38ba6c37e614d1b
    (cherry picked from commit 3e15c68efcb1e6383c93e7dfe38ba6c37e614d1b)


CVE#2

commit 08f1e56a006d939dc85ddfab29e85579a65f4943
Author: Cristy <urban-warrior@imagemagick.org>
Date:   Fri Feb 11 10:46:49 2022 -0500

    Fix unintialised value
=20=20=20=20
    bug: https://github.com/ImageMagick/ImageMagick/issues/4830
    origin:  https://github.com/ImageMagick/ImageMagick6/commit/409d4220592=
7c98cbb852ca96e109716f38f04ab

CVE#3

commit fb2beb87936fc0155431f655a937e869a86edf16
Author: Cristy <urban-warrior@imagemagick.org>
Date:   Thu Mar 17 15:02:49 2022 -0400

    Fix buffer overrun in TIFF coder
=20=20=20=20
    bug: https://bugs.chromium.org/p/oss-fuzz/issues/detail?id=3D42549
    origin: https://github.com/ImageMagick/ImageMagick6/commit/de6ada9a068b=
01494bfb848024ed46942da9d238

commit 4e1a165888a6aa7230dbdd7c87f59aadd5dbedec
Author: Cristy <mikayla-grace@urban-warrior.org>
Date:   Fri Dec 17 14:05:04 2021 -0500

    Fix buffer overrun in TIFF coder
=20=20=20=20
    origin: https://github.com/ImageMagick/ImageMagick6/commit/add9cb14e14e=
ef02806715d97abcf5d04a3e55dd

commit 1b899a81bfdfec4cbe1ec7458825c50f00144fdb
Author: Cristy <mikayla-grace@urban-warrior.org>
Date:   Sun Mar 14 07:44:52 2021 -0400

    Fix buffer overrun in TIFF coder
=20=20=20=20
    origin: https://github.com/ImageMagick/ImageMagick6/commit/2204eb57ae00=
b005b39165a47b8984eac01600a5

CVE#4

commit 01669597f665868cf1e4ccf27ab6fcd52aadaa43
Author: Cristy <mikayla-grace@urban-warrior.org>
Date:   Sat Nov 6 09:01:26 2021 -0400

    early exit on exception
=20=20=20=20
    In case of malformed tiff image bail early
=20=20=20=20
    origin: https://github.com/ImageMagick/ImageMagick6/commit/b272acab9144=
4f2115099fe51ee6c91bb4db5d50
    (cherry picked from commit b272acab91444f2115099fe51ee6c91bb4db5d50)


CVE#5
commit 506cdfbc6d246301be4b12ccdfc6d493c643deca
Author: Cristy <mikayla-grace@urban-warrior.org>
Date:   Sat Sep 4 07:45:17 2021 -0400

    initialize buffer before calling TIFFGetField()
=20=20=20=20
    bug-oss-fuzz: https://oss-fuzz.com/testcase-detail/6502669439598592
    bug: https://github.com/ImageMagick/ImageMagick6/issues/246
    origin: https://github.com/ImageMagick/ImageMagick6/commit/995de330310d=
d35531165d9471fe4d31e0fa79ae

commit f4ac98518241b8074735314f27b7eb47ee823e57
Author: Cristy <mikayla-grace@urban-warrior.org>
Date:   Fri Sep 3 19:45:32 2021 -0400

    Fix a non initialized value passed to TIFFGetField()
=20=20=20=20
    bug-oss-fuzz: https://oss-fuzz.com/testcase-detail/6502669439598592
    bug: https://github.com/ImageMagick/ImageMagick6/issues/246
    origin: https://github.com/ImageMagick/ImageMagick6/commit/995de330310d=
d35531165d9471fe4d31e0fa79ae

CVE#6

commit 0c1a7d649cfc31ec53f0f5c20c0e793df2512ac5
Author: Cristy <mikayla-grace@urban-warrior.org>
Date:   Mon Jul 26 13:38:45 2021 -0400

    heap-based buffer overflow in TIFF coder (alert from Hunter Mitchell)
=20=20=20=20
    bug: https://github.com/ImageMagick/ImageMagick6/issues/245
    origin: https://github.com/ImageMagick/ImageMagick6/commit/f90a091c7dd1=
2cc53b0999bf49d1c80651534eea

commit b0c59a56625aaa3a9c13bfe4f88e287c38e062c9
Author: Cristy <mikayla-grace@urban-warrior.org>
Date:   Mon Jul 26 13:26:21 2021 -0400

    heap-based buffer overflow in TIFF coder (alert from Hunter Mitchell)
=20=20=20=20
    origin:  https://github.com/ImageMagick/ImageMagick6/commit/35b88c9166b=
c1b3ce8893f52217bae00d8e2c532
    bug: https://github.com/ImageMagick/ImageMagick6/issues/245

commit b7882f2795db4e4e8f578cbe712dc4b81a47113f
Author: Cristy <mikayla-grace@urban-warrior.org>
Date:   Mon Jul 26 13:08:57 2021 -0400

    heap-based buffer overflow in TIFF coder (alert from Hunter Mitchell)
=20=20=20=20
    origin:  https://github.com/ImageMagick/ImageMagick6/commit/e1fbcdf3aad=
96d51db65c1601117396eac665a6d
    bug: https://github.com/ImageMagick/ImageMagick6/issues/245


--nextPart4887715.31r3eYUQgx
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: This is a digitally signed message part.
Content-Transfer-Encoding: 7Bit

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEEXQGHuUCiRbrXsPVqADoaLapBCF8FAmR03aEACgkQADoaLapB
CF+hdRAAsh87yhB7IU4aF9LL8q1mzeOosghjgsxeqYLYPzZkyBchuJOp9w/5EQdW
ealyoH1fZ2I6tLoSRmTg5knDRWJoPajTjgr6YpdL2nJ+1sWGZWdixKYp+e5iSVjh
lH12gT/CV0q7m/aPWLtsChKtyOkLcpxueYfVOm5BD9+1Yz3T8rzAsv2hNWoPwv2v
QklFK4B4E7ziclQZJlVn4U10aNXheJptuaNg0MucWGqbzhwWPBL60J4z3BmWiHAO
7njOoOZHjVOL9ez+NVfCxr2BzTDe/+zkyN6N7HrzFBTr1gOXW9+TUKjJT0I/L7s1
4/GSAC5awAF+HUpJmRthpOb1OArcZrYqkJo1BwN0uaofau5tq7Nd96pte8++i3i8
4ys52juY10uCw1RJOKNPBs6GzUl1pUEwVRXTHcGOh4aFQb6u1l3NRec0HxfIwfQi
04oUUho1ywhzzGJh3HaZffQ/lSo3uL/9+ArwNyCFnL062eGa453UhdfRf4RW77OR
Sg+FcgXLXa5VuaDR+NAY6+lNOcsSkTqSyI8sAI2A/GdFtX5cI3qC5WX0S0bmRHoZ
2q3wQdFR8+aNOHlnO8d5+Nps+sWyx35VpMdrMvt0XiYcLrqhFtnVSTaghHunNmiM
vefZ/BzvEPsR69LCANqwMiwqsBpC1VrptOe7poCjpjeudVG6MAw=
=2Loe
-----END PGP SIGNATURE-----

--nextPart4887715.31r3eYUQgx--

