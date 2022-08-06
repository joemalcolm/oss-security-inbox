Received: (qmail 16009 invoked by uid 550); 7 Aug 2022 13:48:44 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 5552 invoked from network); 6 Aug 2022 20:59:29 -0000
Date: Sat, 6 Aug 2022 15:59:14 -0500
From: John Helmert III <ajak@gentoo.org>
To: oss-security@lists.openwall.com
Message-ID: <Yu7WIlgb9y4tGUDQ@gentoo.org>
References: <2dc37111-fd35-e10e-0162-1bdad2e80f5e@vulndisco.cc>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="1FPp6VJimqjHLXEq"
Content-Disposition: inline
In-Reply-To: <2dc37111-fd35-e10e-0162-1bdad2e80f5e@vulndisco.cc>
Subject: Re: [oss-security] Exim < 4.95 heap overflow

--1FPp6VJimqjHLXEq
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Sat, Aug 06, 2022 at 10:46:42PM +0300, Evgeny Legerov wrote:
> Hi,
>=20
>=20
> Here is another bug which has been silently fixed in Exim.
>=20
> It has not been recognized as a security issue, many distros still don't=
=20
> have this patch.

Why do you say it hasn't been recognized as a security issue? Distros
don't usually have a way of knowing about a vulnerability that needs
patching without a CVE. Have you requested a CVE?

> Original report + patch=A0 is here -=20
> https://github.com/Exim/exim/commit/d4bc023436e4cce7c23c5f8bb5199e178b4cc=
743

That commit does not seem like an original report.

> Analysis of the bug=A0 - https://github.com/ivd38/exim_overflow
>=20
> I don't post here because it is huge snippet of code.
>=20
>=20
> regards,
>=20
> -e
>=20
>=20
>=20

--1FPp6VJimqjHLXEq
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYKAB0WIQQyG9yfCrmO0LPSdG2gXq2+aa/JtQUCYu7WIAAKCRCgXq2+aa/J
tS3HAQDcpBqHtHWYfrz7rikO0R2q+PuWJwdfd9WD8b4v5/5glwD+I1dyLwhMmA/m
4+wG/ivYms/+GTiBEeAnReW4fgnGtwM=
=jKu4
-----END PGP SIGNATURE-----

--1FPp6VJimqjHLXEq--
