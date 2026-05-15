Received: (qmail 32743 invoked by uid 550); 15 May 2026 19:30:04 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 32394 invoked from network); 15 May 2026 18:35:28 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=riseup.net; s=squak;
	t=1778870118; bh=EBGBwozGSR2EY5vleysmLO1eMgbslEOAq1mMuv6bSdY=;
	h=Date:From:To:Subject:References:In-Reply-To:From;
	b=XKFgtFCXBCA8ZnPPt+drsG5V3hwqlfoG241rUyR5VccVPq+wwN7sLzlX2TL2B+FF/
	 YMogd1WT2BF2yNnOiijpWV+N55uHPECLh0963VeY8uPCggNj3IgCafx7+Ztt0YaA6Q
	 Fn/7EpV3qxyhTWg0lvqk5srThooNPFGsluvJdl+o=
X-Riseup-User-ID: F6E4C9888EFE92F50434242CD7B33AEBCD78D76C5A1D0BB888429416D78F5CAA
Date: Fri, 15 May 2026 15:35:14 -0300
From: Santiago Ruano =?iso-8859-1?Q?Rinc=F3n?= <santiagorr@riseup.net>
To: oss-security@lists.openwall.com
Message-ID: <agdnYiFVMinGLHg3@voleno>
References: <afDLFWVMK-r70PB0@yuggoth.org>
 <521d0295-6a93-4a28-be55-332d663ec457@gmail.com>
 <afI-PPAr7EP8SEsu@1wt.eu>
 <4386b3433ad85d4bb93e1ca2a07088d2b83bb23e.camel@debian.org>
 <2026051536-gatherer-excluding-f6ff@gregkh>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="gFMU3JMfuZJ57WXV"
Content-Disposition: inline
In-Reply-To: <2026051536-gatherer-excluding-f6ff@gregkh>
Subject: Re: [oss-security] Coordinated Disclosure in the LLM Age

--gFMU3JMfuZJ57WXV
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

El 15/05/26 a las 11:27, Greg KH escribi=F3:
> On Fri, May 15, 2026 at 10:49:34AM +0200, Yves-Alexis Perez wrote:
> > On Wed, 2026-04-29 at 19:22 +0200, Willy Tarreau wrote:
> > > I'm increasingly doing that myself already, and predicted the death of
> > > embargoes a serveral months ago. Now I just remove unneeded details f=
rom
> > > commit messages, merging and issue releases to keep users protected.
> >=20
> > Hey Willy,
> >=20
> > Unfortunately that also has the side effects to hide security-relevant =
commits
> > from downstream integrators and users. Not that we really have the time=
 to dig
> > each and every commit of each and every project (especially fast moving=
 ones)
> > but we definitely miss things here and there without a heads up.
>=20
> With the advent of the reporting requirements of the EU CRA law, as of
> the end of next year, all projects will have to be reporting their
> "security bugfixes" to the EU, so you will be able to go off of that
> feed.
>=20
> Although that is a 18 months away, but something to look forward to :)

While the full regulation will apply from December 2027, the Reporting
obligations of manufacturers (art14), "shall apply from 11 September
2026", according to Article 71 (art71).

[art14] https://eur-lex.europa.eu/legal-content/EN/TXT/HTML/?uri=3DOJ:L_202=
402847#art_14
[art71] https://eur-lex.europa.eu/legal-content/EN/TXT/HTML/?uri=3DOJ:L_202=
402847#art_71

Cheers,

 -- S

--gFMU3JMfuZJ57WXV
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYKAB0WIQR+lHTq7mkJOyB6t2Un3j1FEEiG7wUCagdnRAAKCRAn3j1FEEiG
72NLAPwNZKbl9CjRtN61qsNwrpe68NAdwNM71b1mkaO8qXfnWQEAoL3OkBI19TbX
+G6iUWFSn/CcKPCyCjIT9bS6M3pK4wk=
=5bZe
-----END PGP SIGNATURE-----

--gFMU3JMfuZJ57WXV--
