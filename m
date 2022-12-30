Received: (qmail 9553 invoked by uid 550); 30 Dec 2022 22:46:21 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 5395 invoked from network); 30 Dec 2022 21:54:04 -0000
Date: Fri, 30 Dec 2022 15:53:48 -0600
From: John Helmert III <ajak@gentoo.org>
To: security@apache.org
Cc: jorton@apache.org, carnil@debian.org, oss-security@lists.openwall.com
Message-ID: <Y69d7JASugX99avX@gentoo.org>
References: <d1b6acf9-0f59-1954-ccad-2243ca03d138@apache.org>
 <YwjuUy0a6FFdHPVB@gentoo.org>
 <Y61i4ojYhvXXx7Ap@eldamar.lan>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="DP/brOPyMZdODoAC"
Content-Disposition: inline
In-Reply-To: <Y61i4ojYhvXXx7Ap@eldamar.lan>
Subject: Re: [oss-security] CVE-2022-22728: libapreq2: libapreq2 multipart
 form parse memory corruption

--DP/brOPyMZdODoAC
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Thu, Dec 29, 2022 at 10:50:26AM +0100, Salvatore Bonaccorso wrote:
> Hi,
>=20
> On Fri, Aug 26, 2022 at 11:01:23AM -0500, John Helmert III wrote:
> > On Thu, Aug 25, 2022 at 02:09:16PM +0000, Joe Orton wrote:
> > > Severity: important
> > >=20
> > > Description:
> > >=20
> > > A flaw in libapreq2 versions 2.16 and earlier could cause a buffer
> > > overflow while processing multipart form uploads.  A remote
> > > attacker could send a request causing a process crash which could
> > > lead to a denial of service attack.
> > >=20
> >=20
> > Is there a fixed version or patch or upstream issue?
>=20
> Any pointers or information to this?
>=20
> Regards,
> Salvatore

Maybe it will help to loop in Apache's CNA contact address?

--DP/brOPyMZdODoAC
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYKAB0WIQQyG9yfCrmO0LPSdG2gXq2+aa/JtQUCY69d6wAKCRCgXq2+aa/J
tTEiAQDv+D7zugt2NgXP8ltGpKyo2LZe5z7yqG77Um2RhpuijgEA9UMbMrW8ANbF
BqPeuwf9NEdcaD3Xth7ERCYiB/VxsQI=
=VGhV
-----END PGP SIGNATURE-----

--DP/brOPyMZdODoAC--
