Received: (qmail 28299 invoked by uid 550); 8 Apr 2022 18:55:11 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 19862 invoked from network); 8 Apr 2022 18:42:13 -0000
Date: Fri, 8 Apr 2022 13:41:59 -0500
From: John Helmert III <ajak@gentoo.org>
To: oss-security@lists.openwall.com
Message-ID: <YlCB9+pPmFeG27t9@gentoo.org>
References: <7ab10c96-aabc-5868-6ed9-2c3ec1e7c8ff@igalia.com>
 <YlBxN7JZ7mrNVJG6@gentoo.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="9wBTa7T/ld7C2Dc1"
Content-Disposition: inline
In-Reply-To: <YlBxN7JZ7mrNVJG6@gentoo.org>
Subject: Re: [oss-security] WebKitGTK and WPE WebKit Security Advisory
 WSA-2022-0004

--9wBTa7T/ld7C2Dc1
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Fri, Apr 08, 2022 at 12:31:18PM -0500, John Helmert III wrote:
> The issue I described last time has come up again here [1]. 2.36.0 was
> released on March 21, almost three weeks ago now, and its WSA was
> released today. Why the long wait?
>=20
> Three of these issues are fixed in 2.36.0 and 2.34.7, but I can't find
> a release for 2.34.7 [2][3]. Is it released yet?

I'm sorry, I misread the descriptions. That version refers to WPE
WebKit rather than WebKitGTK.

> [1] https://www.openwall.com/lists/oss-security/2022/01/23/1
> [2] https://webkitgtk.org/news.html
> [3] https://webkitgtk.org/releases/
>=20
> On Fri, Apr 08, 2022 at 02:31:29PM +0100, Carlos Alberto Lopez Perez wrot=
e:
> > ------------------------------------------------------------------------
> > WebKitGTK and WPE WebKit Security Advisory                 WSA-2022-0004
> > ------------------------------------------------------------------------
> >=20
> > Date reported           : April 08, 2022
> > Advisory ID             : WSA-2022-0004
> > WebKitGTK Advisory URL  : https://webkitgtk.org/security/WSA-2022-0004.=
html
> > WPE WebKit Advisory URL : https://wpewebkit.org/security/WSA-2022-0004.=
html
> > CVE identifiers         : CVE-2022-22624, CVE-2022-22628,
> >                           CVE-2022-22629, CVE-2022-22637.
> >=20
> > Several vulnerabilities were discovered in WebKitGTK and WPE WebKit.
> >=20
> > CVE-2022-22624
> >     Versions affected: WebKitGTK before 2.36.0 and WPE WebKit before 2.=
34.7
> >     Credit to Kirin (@Pwnrin) of Tencent Security Xuanwu Lab.
> >     Impact: Processing maliciously crafted web content may lead to
> >     arbitrary code execution. Description: A use after free issue was
> >     addressed with improved memory management.
> >=20
> > CVE-2022-22628
> >     Versions affected: WebKitGTK before 2.36.0 and WPE WebKit before 2.=
34.7
> >     Credit to Kirin (@Pwnrin) of Tencent Security Xuanwu Lab.
> >     Impact: Processing maliciously crafted web content may lead to
> >     arbitrary code execution. Description: A use after free issue was
> >     addressed with improved memory management.
> >=20
> > CVE-2022-22629
> >     Versions affected: WebKitGTK before 2.36.0 and WPE WebKit before 2.=
34.7
> >     Credit to Jeonghoon Shin at Theori working with Trend Micro Zero Day
> >     Initiative.
> >     Impact: Processing maliciously crafted web content may lead to
> >     arbitrary code execution. Description: A buffer overflow issue was
> >     addressed with improved memory handling.
> >=20
> > CVE-2022-22637
> >     Versions affected: WebKitGTK before 2.34.4 and WPE WebKit before 2.=
34.4
> >     Credit to Tom McKee of Google.
> >     Impact: A malicious website may cause unexpected cross-origin
> >     behavior. Description: A logic issue was addressed with improved
> >     state management.
> >=20
> >=20
> > We recommend updating to the latest stable versions of WebKitGTK and WPE
> > WebKit. It is the best way to ensure that you are running safe versions
> > of WebKit. Please check our websites for information about the latest
> > stable releases.
> >=20
> > Further information about WebKitGTK and WPE WebKit security advisories
> > can be found at: https://webkitgtk.org/security.html or
> > https://wpewebkit.org/security/.
> >=20
> > The WebKitGTK and WPE WebKit team,
> > April 08, 2022



--9wBTa7T/ld7C2Dc1
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCAAdFiEElFuPenBj6NvNLoABXP0dAeB+IzgFAmJQgfQACgkQXP0dAeB+
Izgw6BAAkBWFFgCM1/E2abx++Qma6Yhqc+QDqLsCNeeuE1cV9WdBa80aj897UjYl
XjX5jPfGMehv8HlSqqUH9J7G+MK3LyEkQzGSkH6p1fvG+ZXpNJKURzNSrvR2+7RL
vPo6IbF0J4cIvjcXfzIhEKMRMB+FtFeqBQpPOVD0XhlpCo7OgecIuR1gNh9AkTHG
Q2HJJrX4EsRj7iSDWDnlOR5N/ZNwJWrdR+OFFq9KkTvk6NgTKOViUjp6RdvA6fuw
cgqzsHb30S9IDc40cWV3k0Ok0LONEJU7EabLJ/wyGGE926R9gQjFgjRvoY05CX1r
pWmHZXvKGr6YFhxJaE2T6tuNbqoha4HPMVYP/jNn276RooyM62NTG1DkliapSCfU
Rj0cdz9eWUpOiOfN7kx0G3ZvVLNYU+hHQnHXtmNe+k584XOQcVHJqvDgys4iAk+6
oM5lEryrPncIIdsJ/L3CKD7Z/Euws3OKQZbyvrdBgSTtOECN0Oso/I//mEf0BbeV
zsJJ9iExUUFXcfS0QHk2sFhAQ0oynuZ6/fTLwrlJeH6Oa2MGBy+Clr6QHqfB90Vp
YKLcOSDmC7JIXcLBglzrx87KKTaRQKYip83SIn3T7kvDbY9FynoN60KPBvg1jGIs
B/e9PczQ5w4yu8ax6I/Xkzja7e8BCVg5zmgWXa97TdteCUSIqVI=
=AzeV
-----END PGP SIGNATURE-----

--9wBTa7T/ld7C2Dc1--
