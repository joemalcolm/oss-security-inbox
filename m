Received: (qmail 13936 invoked by uid 550); 23 Dec 2022 17:01:57 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 9470 invoked from network); 23 Dec 2022 16:56:33 -0000
Date: Fri, 23 Dec 2022 10:56:18 -0600
From: John Helmert III <ajak@gentoo.org>
To: oss-security@lists.openwall.com
Message-ID: <Y6XdsmNOXvfti9kq@gentoo.org>
References: <CAKoP-y-rbU=xEowJGp6my0khWMSbE05+ncDiE3wtXTOWwvyScA@mail.gmail.com>
 <Y6TQ0HyCJOMkKSDn@netmeister.org>
 <Y6VTdO608VUE38Ke@kroah.com>
 <20221223081727.GB2404@suse.de>
 <Y6W1aSG2z5mBJDu8@sashalap>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="lMR1Nm1DrIkIk6LS"
Content-Disposition: inline
In-Reply-To: <Y6W1aSG2z5mBJDu8@sashalap>
Subject: Re: [oss-security] Details on this supposed Linux Kernel ksmbd RCE

--lMR1Nm1DrIkIk6LS
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Fri, Dec 23, 2022 at 09:04:25AM -0500, Sasha Levin wrote:
> On Fri, Dec 23, 2022 at 09:17:28AM +0100, Marcus Meissner wrote:
> >Not sure why they do not like you, but to be very clear anyone else can
> >requests CVEs for the kernel, (except the blacklisted drivers/staging/ a=
rea).
>=20
> For CVEs assigned (earlier this month) to issues in drivers/staging,
> what would be the process to remove the assignment or mark them as
> invalid?

Requests for changes to CVEs (like rejections) should go to the
assigning CNA. For MITRE, they want such requests to go through
cveform.mitre.org. For others, you can find contact points on [1].

[1] https://www.cve.org/PartnerInformation/ListofPartners

> --=20
> Thanks,
> Sasha

--lMR1Nm1DrIkIk6LS
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYKAB0WIQQyG9yfCrmO0LPSdG2gXq2+aa/JtQUCY6XdsgAKCRCgXq2+aa/J
tUHaAQDCi1PInlwmpcJq/L97JnoBIIaHI+ONsom8R+RACEed+AEA90JHmNuJwylf
xGUWclk72ErNUwdYIyfcEF4cUWc2tQA=
=zbYG
-----END PGP SIGNATURE-----

--lMR1Nm1DrIkIk6LS--
