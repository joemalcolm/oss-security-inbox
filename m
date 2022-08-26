Received: (qmail 9415 invoked by uid 550); 26 Aug 2022 18:56:16 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 31785 invoked from network); 26 Aug 2022 16:01:38 -0000
Date: Fri, 26 Aug 2022 11:01:23 -0500
From: John Helmert III <ajak@gentoo.org>
To: jorton@apache.org
Cc: oss-security@lists.openwall.com
Message-ID: <YwjuUy0a6FFdHPVB@gentoo.org>
References: <d1b6acf9-0f59-1954-ccad-2243ca03d138@apache.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="1frRbXSkLFH3j/SD"
Content-Disposition: inline
In-Reply-To: <d1b6acf9-0f59-1954-ccad-2243ca03d138@apache.org>
Subject: Re: [oss-security] CVE-2022-22728: libapreq2: libapreq2 multipart
 form parse memory corruption

--1frRbXSkLFH3j/SD
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Thu, Aug 25, 2022 at 02:09:16PM +0000, Joe Orton wrote:
> Severity: important
>=20
> Description:
>=20
> A flaw in libapreq2 versions 2.16 and earlier could cause a buffer overfl=
ow while processing multipart form uploads.  A remote attacker could send a=
 request causing a process crash which could lead to a denial of service at=
tack.
>=20

Is there a fixed version or patch or upstream issue?=

--1frRbXSkLFH3j/SD
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYKAB0WIQQyG9yfCrmO0LPSdG2gXq2+aa/JtQUCYwjuUgAKCRCgXq2+aa/J
tf+AAP9qj28IDzWvJhvCLjcc4AQbOCs7E2sqRDlH2d3P8A+svQD+JagxIAZST7NY
s+I6kYummiDCmIVJCrdzjA/J4ZIOtwg=
=iCf0
-----END PGP SIGNATURE-----

--1frRbXSkLFH3j/SD--
