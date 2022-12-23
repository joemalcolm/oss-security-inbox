Received: (qmail 24184 invoked by uid 550); 23 Dec 2022 16:53:40 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 11586 invoked from network); 23 Dec 2022 16:50:47 -0000
Date: Fri, 23 Dec 2022 10:50:32 -0600
From: John Helmert III <ajak@gentoo.org>
To: oss-security@lists.openwall.com
Message-ID: <Y6XcWDBY2uBellV3@gentoo.org>
References: <CAKoP-y-rbU=xEowJGp6my0khWMSbE05+ncDiE3wtXTOWwvyScA@mail.gmail.com>
 <Y6TQ0HyCJOMkKSDn@netmeister.org>
 <Y6VTdO608VUE38Ke@kroah.com>
 <20221223081727.GB2404@suse.de>
 <Y6W1aSG2z5mBJDu8@sashalap>
 <Y6W5IcAzIUb5rD1F@kroah.com>
 <20221223161906.GC4524@suse.de>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="tqlXou0ZnN1KdUXo"
Content-Disposition: inline
In-Reply-To: <20221223161906.GC4524@suse.de>
Subject: Re: [oss-security] Details on this supposed Linux Kernel ksmbd RCE

--tqlXou0ZnN1KdUXo
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Fri, Dec 23, 2022 at 05:19:06PM +0100, Marcus Meissner wrote:
> On Fri, Dec 23, 2022 at 03:20:17PM +0100, Greg KH wrote:
> > On Fri, Dec 23, 2022 at 09:04:25AM -0500, Sasha Levin wrote:
> > > On Fri, Dec 23, 2022 at 09:17:28AM +0100, Marcus Meissner wrote:
> > > > Not sure why they do not like you, but to be very clear anyone else=
 can
> > > > requests CVEs for the kernel, (except the blacklisted drivers/stagi=
ng/ area).
> > >=20
> > > For CVEs assigned (earlier this month) to issues in drivers/staging,
> > > what would be the process to remove the assignment or mark them as
> > > invalid?
> >=20
> > And who is doing this "blacklisting" of staging drivers from CVEs?  Why
> > are they special when many distros do enable and rely on them?
>=20
> This is just information I received when I tried to allocate a CVE for a
> staging driver.
>=20
> It has been over a year ago, so perhaps the this changed meanwhile again.

SUSE is a CNA. Wouldn't you be able to oassign a CVE via the SUSE CNA
without going through MITRE?

> > In my talks with MITRE, they have said they don't want to make public
> > statments about the CVE issues and Linux, which is sad, but they never
> > mentioned anything about "we will ignore this portion of the kernel
> > source tree".  Is that in a public statement anywhere that I can point
> > to when people ask the kernel security team for CVEs?
>=20
> No, it was in a private email, I will search for it, but I cannot
> promise I will find it again.
>=20
> Ciao, Marcus

Relatedly, I find it very frustrating how little visibility there is
into the world's interactions with cveform.mitre.org. Your form inputs
aren't even sent back to you in the automated response, which makes it
quite hard to keep track of the state of changes you've asked for.

--tqlXou0ZnN1KdUXo
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYKAB0WIQQyG9yfCrmO0LPSdG2gXq2+aa/JtQUCY6XcVgAKCRCgXq2+aa/J
tY5LAP9O31ziqr2BkoPnx0GaONiTGT1xfrjKS9V/IRizwRf8QgD/a1nozxMSR9Vs
MilNhFz1vFhWd6xyDrJzLpE44O5IjwA=
=Ljax
-----END PGP SIGNATURE-----

--tqlXou0ZnN1KdUXo--
