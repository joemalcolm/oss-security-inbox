Received: (qmail 18177 invoked by uid 550); 12 Jan 2023 21:26:55 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 13850 invoked from network); 12 Jan 2023 19:24:53 -0000
Date: Thu, 12 Jan 2023 13:24:38 -0600
From: John Helmert III <ajak@gentoo.org>
To: oss-security@lists.openwall.com
Message-ID: <Y8BednLm17osifo0@gentoo.org>
References: <CAO15rPk6Uh6ZqZ=c8yjz0=53DqXQKF=fSXqDo9dLdMAy7-YS3g@mail.gmail.com>
 <Y8A+/ys+5oIRzr9V@kroah.com>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="tz7tOt74yRvnpT3O"
Content-Disposition: inline
In-Reply-To: <Y8A+/ys+5oIRzr9V@kroah.com>
Subject: Re: [oss-security] CVE-2023-0122: Linux kernel: Pre-Auth Remote DoS
 in NVMe

--tz7tOt74yRvnpT3O
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Thu, Jan 12, 2023 at 06:10:23PM +0100, Greg KH wrote:
> On Thu, Jan 12, 2023 at 04:12:30PM +0200, Tal Lossos wrote:
> > Hi all,
> >=20
> > # Description
> > A NULL Pointer Dereference bug in nvmet_setup_auth
> > (drivers/nvme/target/auth.c) can be triggered remotely to cause a DoS.
> > Since the bug occurs in the authentication feature, it can be easily
> > triggered by an unauthorized client in the pre-auth stage.
> > Versions affected - v6.0-rc1 to v6.0-rc3 (fixed in v6.0-rc4).
>=20
> Meta-comment, why are CVE's being assigned for issues found, and then
> fixed, in development kernel releases?  Who assigned this CVE, MITRE or
> someone else?

This information used to be available for "reserved" CVEs in the JSON
data in [1], but now that that's retired I'm not sure this is made
public anywhere.

[1] https://github.com/CVEProject/cvelistV5

> thanks,
>=20
> greg k-h

--tz7tOt74yRvnpT3O
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYKAB0WIQQyG9yfCrmO0LPSdG2gXq2+aa/JtQUCY8BedgAKCRCgXq2+aa/J
tZJYAP9hICVV71P6OvRaDBjUmP0GYpbZUlqWVrSRF+eTlw23vgEA/zdXsiV5yXNY
2zOWrVUN+2KQJFoHoMKWyc+hUlzs/Q4=
=iBxz
-----END PGP SIGNATURE-----

--tz7tOt74yRvnpT3O--
