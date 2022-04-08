Received: (qmail 19473 invoked by uid 550); 8 Apr 2022 18:12:25 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 29750 invoked from network); 8 Apr 2022 17:31:35 -0000
Date: Fri, 8 Apr 2022 12:31:18 -0500
From: John Helmert III <ajak@gentoo.org>
To: oss-security@lists.openwall.com
Message-ID: <YlBxN7JZ7mrNVJG6@gentoo.org>
References: <7ab10c96-aabc-5868-6ed9-2c3ec1e7c8ff@igalia.com>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="wcncsXeN0WXPmCXG"
Content-Disposition: inline
In-Reply-To: <7ab10c96-aabc-5868-6ed9-2c3ec1e7c8ff@igalia.com>
Subject: Re: [oss-security] WebKitGTK and WPE WebKit Security Advisory
 WSA-2022-0004

--wcncsXeN0WXPmCXG
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

The issue I described last time has come up again here [1]. 2.36.0 was
released on March 21, almost three weeks ago now, and its WSA was
released today. Why the long wait?

Three of these issues are fixed in 2.36.0 and 2.34.7, but I can't find
a release for 2.34.7 [2][3]. Is it released yet?

[1] https://www.openwall.com/lists/oss-security/2022/01/23/1
[2] https://webkitgtk.org/news.html
[3] https://webkitgtk.org/releases/

On Fri, Apr 08, 2022 at 02:31:29PM +0100, Carlos Alberto Lopez Perez wrote:
> ------------------------------------------------------------------------
> WebKitGTK and WPE WebKit Security Advisory                 WSA-2022-0004
> ------------------------------------------------------------------------
>=20
> Date reported           : April 08, 2022
> Advisory ID             : WSA-2022-0004
> WebKitGTK Advisory URL  : https://webkitgtk.org/security/WSA-2022-0004.ht=
ml
> WPE WebKit Advisory URL : https://wpewebkit.org/security/WSA-2022-0004.ht=
ml
> CVE identifiers         : CVE-2022-22624, CVE-2022-22628,
>                           CVE-2022-22629, CVE-2022-22637.
>=20
> Several vulnerabilities were discovered in WebKitGTK and WPE WebKit.
>=20
> CVE-2022-22624
>     Versions affected: WebKitGTK before 2.36.0 and WPE WebKit before 2.34=
.7
>     Credit to Kirin (@Pwnrin) of Tencent Security Xuanwu Lab.
>     Impact: Processing maliciously crafted web content may lead to
>     arbitrary code execution. Description: A use after free issue was
>     addressed with improved memory management.
>=20
> CVE-2022-22628
>     Versions affected: WebKitGTK before 2.36.0 and WPE WebKit before 2.34=
.7
>     Credit to Kirin (@Pwnrin) of Tencent Security Xuanwu Lab.
>     Impact: Processing maliciously crafted web content may lead to
>     arbitrary code execution. Description: A use after free issue was
>     addressed with improved memory management.
>=20
> CVE-2022-22629
>     Versions affected: WebKitGTK before 2.36.0 and WPE WebKit before 2.34=
.7
>     Credit to Jeonghoon Shin at Theori working with Trend Micro Zero Day
>     Initiative.
>     Impact: Processing maliciously crafted web content may lead to
>     arbitrary code execution. Description: A buffer overflow issue was
>     addressed with improved memory handling.
>=20
> CVE-2022-22637
>     Versions affected: WebKitGTK before 2.34.4 and WPE WebKit before 2.34=
.4
>     Credit to Tom McKee of Google.
>     Impact: A malicious website may cause unexpected cross-origin
>     behavior. Description: A logic issue was addressed with improved
>     state management.
>=20
>=20
> We recommend updating to the latest stable versions of WebKitGTK and WPE
> WebKit. It is the best way to ensure that you are running safe versions
> of WebKit. Please check our websites for information about the latest
> stable releases.
>=20
> Further information about WebKitGTK and WPE WebKit security advisories
> can be found at: https://webkitgtk.org/security.html or
> https://wpewebkit.org/security/.
>=20
> The WebKitGTK and WPE WebKit team,
> April 08, 2022

--wcncsXeN0WXPmCXG
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCAAdFiEElFuPenBj6NvNLoABXP0dAeB+IzgFAmJQcWMACgkQXP0dAeB+
IzhfGA/7B5pgpo9gukmoOld7q/eBOD4GcrdaBJMUI+xe7GqSJMw4YEf4BHd2rfbq
6/afZnlcvqB8S6DAoqLVDEtDWDI22ZUEU9rNp1WIIfnScj3tXTDV9M68TrBxNDpg
tCbPdLAT1hlrJroUeXddSXXBCZnmu6x61EG7wBQHcvN+cReSloPeV/cwES7Nhg2q
y0adCdH7vwouHzwUtHTiru0PszRpMOqN6P1udGCicCxE4Z+vF4OVN4+ngOqBlhrS
TwH8tfQCjV+jnlTy2Z4TJQqspLUGdCbL+MvQi9z4LYWUl8ez0AMWz6C/gIxWh/aU
8nnSN5E25zExK60tc7pUNaerOr4t1F/Oy4Ki9UosACnNvAGWVv07poizLa1kG8XJ
y/tbNBl/xv2lKPxUxU9ml9x4EHvCdgv7JT9d1o3ZseMWE1Wr0bpPFKqWAFOp9LNI
h2jb7akt44wi2jyK2XIULlwMXgaxMhExYK3evRMgzlX8aIII4lnxjO/OTQCwesAf
4uDTdXvAUVokkXKxoIVBOeKCyDCgN+5g0pPw7uBg7fNSkbFNrhawq4mRZgzHAVrZ
dPmULUUI+FlcY1/Rw8PY2IyQsJmIMMonmflzLWpBj2lBAJBz3VyitgtYreiiMZtG
MxTBuRBqGMbLzM2ZiKysZxf+q6TxlbpajDjNRVJq5pBxum+270Y=
=aPoj
-----END PGP SIGNATURE-----

--wcncsXeN0WXPmCXG--
